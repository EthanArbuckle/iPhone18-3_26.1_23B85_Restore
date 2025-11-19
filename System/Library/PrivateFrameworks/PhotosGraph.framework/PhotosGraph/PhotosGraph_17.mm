uint64_t sub_22F22E004(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_22F1B2BBC(0);
    return a5(a1, 1);
  }

  else
  {
    v8 = sub_22F73EF30();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_22F73EF20();
    sub_22F235E8C();
    sub_22F73EF10();
    v32 = a5;
    result = v37;
    v11 = *(v37 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v37 + 80;
      v33 = MEMORY[0x277D84F90];
      v34 = *(v37 + 16);
      v31 = v11 - 1;
      do
      {
        v14 = (v13 + 56 * v12);
        while (1)
        {
          if (v12 >= *(result + 16))
          {
            __break(1u);
            return result;
          }

          v15 = *(v14 - 6);
          v16 = *(v14 - 5);
          v17 = *(v14 - 3);
          v35 = *(v14 - 4);
          v19 = *(v14 - 2);
          v18 = *(v14 - 1);
          v20 = *v14;
          v21 = v12 + 1;
          sub_22F1BA874();
          sub_22F1B1F54();

          if (sub_22F740D80())
          {
            break;
          }

          v14 += 7;
          ++v12;
          result = v37;
          if (v34 == v21)
          {
            goto LABEL_17;
          }
        }

        v36 = v12;
        v22 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22F1468BC(0, *(v33 + 16) + 1, 1);
          v22 = v33;
        }

        v23 = v15;
        v24 = v20;
        v25 = v35;
        v26 = v19;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          sub_22F1468BC((v27 > 1), v28 + 1, 1);
          v29 = v28 + 1;
          v26 = v19;
          v25 = v35;
          v23 = v15;
          v22 = v33;
        }

        *(v22 + 16) = v29;
        v33 = v22;
        v30 = (v22 + 56 * v28);
        v30[4] = v23;
        v30[5] = v16;
        v30[6] = v25;
        v30[7] = v17;
        v30[8] = v26;
        v30[9] = v18;
        v30[10] = v24;
        result = v37;
        v13 = v37 + 80;
        v12 = v21;
      }

      while (v31 != v36);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

LABEL_17:

    sub_22F1B2BBC(0);
    v32(v33, 0);
  }
}

uint64_t sub_22F22E398(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, const char *a7, char *a8)
{
  v11 = v8;
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v17 = sub_22F740B90();
  __swift_project_value_buffer(v17, qword_2810B4D48);

  v18 = sub_22F740B70();
  v19 = sub_22F7415C0();

  if (os_log_type_enabled(v18, v19))
  {
    v27 = a8;
    v28 = a5;
    v20 = swift_slowAlloc();
    v21 = v11;
    v22 = swift_slowAlloc();
    *&v29[0] = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_22F145F20(a1, a2, v29);
    _os_log_impl(&dword_22F0FC000, v18, v19, a7, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    v11 = v21;
    MEMORY[0x2319033A0](v23, -1, -1);
    v24 = v20;
    a8 = v27;
    a5 = v28;
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  v25 = *(a3 + 16);
  v29[0] = *a3;
  v29[1] = v25;
  v29[2] = *(a3 + 32);
  v30 = *(a3 + 48);

  sub_22F23241C(a1, a2, v29, v11, a5, a6, a8);
}

uint64_t sub_22F22E578(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = a3;
  v11 = *(a3 + 16);
  v109 = *a3;
  v110 = v11;
  v111 = *(a3 + 32);
  v112 = *(a3 + 48);
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v26 = sub_22F740B90();
    __swift_project_value_buffer(v26, qword_2810B4D48);
    v27 = sub_22F740B70();
    v28 = sub_22F7415C0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22F0FC000, v27, v28, "[Warning-Music] Empty searchTerm for playlist search", v29, 2u);
      MEMORY[0x2319033A0](v29, -1, -1);
    }

    return (a5)(MEMORY[0x277D84F90], 0);
  }

  if (qword_2810A9B98 != -1)
  {
LABEL_63:
    swift_once();
  }

  v12 = qword_2810B4E70;
  *&v13 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Search genre music", 33, 2u, v13, 0, v12, v108);
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_2810B4D48);

  v15 = sub_22F740B70();
  v16 = sub_22F7415C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v104 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_22F145F20(a1, a2, &v104);
    _os_log_impl(&dword_22F0FC000, v15, v16, "[MemoriesMusic] Search for playlist with searchTerm: '%s'", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2319033A0](v18, -1, -1);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = -1;
  v21 = *&v8[2].isa;
  v104 = *&v8->isa;
  v105 = v21;
  v106 = *&v8[4].isa;
  isa = v8[6].isa;
  v95 = objc_opt_self();
  v22 = [v95 ignoreProgress];

  v23 = v19;
  sub_22F23073C(a1, a2, &v104, v22, v98, v20, v23);

  sub_22F741620();
  swift_beginAccess();
  v24 = *(v20 + 24);
  if (v24 == 255)
  {

    v31 = sub_22F740B70();
    v32 = sub_22F7415E0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = a5;
      v34 = v23;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v104 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22F145F20(a1, a2, &v104);
      _os_log_impl(&dword_22F0FC000, v31, v32, "Did not find any playlists using searchTerm '%s'", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x2319033A0](v36, -1, -1);
      v37 = v35;
      v23 = v34;
      a5 = v33;
LABEL_26:
      MEMORY[0x2319033A0](v37, -1, -1);
    }
  }

  else
  {
    v25 = *(v20 + 16);
    if (v24)
    {
      sub_22F1D2178(v25, 1);
      sub_22F1B2BBC(0);
      sub_22F1D2178(v25, 1);
      (a5)(v25, 1);
      sub_22F101678(v25, v24);
      sub_22F101678(v25, v24);
      goto LABEL_28;
    }

    v38 = v25[2];

    if (v38)
    {
      v89 = a5;
      v94 = a6;
      v88 = v24;
      sub_22F1D2160(v25, v24);
      v8 = sub_22F740B70();
      v39 = sub_22F7415C0();

      v101 = v25;
      v90 = v23;
      if (os_log_type_enabled(v8, v39))
      {
        v92 = v39;
        log = v8;
        v40 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v103 = v87;
        *v40 = 134218498;
        *(v40 + 4) = v25[2];
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_22F145F20(a1, a2, &v103);
        buf = v40;
        *(v40 + 22) = 2080;
        v102 = MEMORY[0x277D84F90];
        sub_22F146454(0, v38, 0);
        v41 = v25 + 5;
        do
        {
          v42 = *v41;
          v43 = v41[1];
          v44 = v41[2];
          a2 = v41[4];
          v45 = v41[5];
          *&v104 = *(v41 - 1);
          *(&v104 + 1) = v42;

          swift_bridgeObjectRetain_n();

          MEMORY[0x231900B10](2112032, 0xE300000000000000);

          MEMORY[0x231900B10](v43, v44);

          v46 = v104;
          a5 = *(v102 + 16);
          v47 = *(v102 + 24);
          if (a5 >= v47 >> 1)
          {
            sub_22F146454((v47 > 1), a5 + 1, 1);
          }

          v41 += 7;
          *(v102 + 16) = a5 + 1;
          *(v102 + 16 * a5 + 32) = v46;
          --v38;
        }

        while (v38);
        v56 = MEMORY[0x231900D40](v102, MEMORY[0x277D837D0]);
        v58 = v57;

        v59 = sub_22F145F20(v56, v58, &v103);

        a1 = buf;
        *(buf + 3) = v59;
        v8 = log;
        _os_log_impl(&dword_22F0FC000, log, v92, "Found %ld playlists for the searchTerm '%s'. Playlists: %s", buf, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v87, -1, -1);
        MEMORY[0x2319033A0](buf, -1, -1);

        v25 = v101;
      }

      else
      {
      }

      a6 = 0;
      v60 = v25 + 10;
      loga = -v25[2];
      bufa = MEMORY[0x277D84F90];
      v93 = v25 + 10;
LABEL_34:
      v61 = a6 + 1;
      v62 = &v60[7 * a6];
      while ((loga + v61) != 1)
      {
        a6 = v61;
        if (v61 - 1 >= v101[2])
        {
          __break(1u);
          goto LABEL_63;
        }

        v8 = *(v62 - 6);
        v63 = *(v62 - 5);
        a1 = *(v62 - 4);
        a2 = *(v62 - 3);
        a5 = *(v62 - 2);
        v64 = *(v62 - 1);
        v65 = *v62;
        if (a5 != 0x6169726F74696465 || v64 != 0xE90000000000006CLL)
        {
          ++v61;
          v62 += 7;
          if ((sub_22F742040() & 1) == 0)
          {
            continue;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v104 = bufa;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468BC(0, *(bufa + 2) + 1, 1);
          bufa = v104;
        }

        v69 = *(bufa + 2);
        v68 = *(bufa + 3);
        v70 = v69 + 1;
        if (v69 >= v68 >> 1)
        {
          sub_22F1468BC((v68 > 1), v69 + 1, 1);
          v70 = v69 + 1;
          bufa = v104;
        }

        *(bufa + 2) = v70;
        v71 = &bufa[56 * v69];
        *(v71 + 4) = v8;
        *(v71 + 5) = v63;
        *(v71 + 6) = a1;
        *(v71 + 7) = a2;
        *(v71 + 8) = a5;
        *(v71 + 9) = v64;
        *(v71 + 10) = v65;
        v60 = v93;
        goto LABEL_34;
      }

      sub_22F101678(v101, v88);
      a5 = v89;
      if (*(bufa + 2))
      {
        v73 = *(bufa + 4);
        v72 = *(bufa + 5);
        v74 = *(bufa + 7);
        v75 = *(bufa + 10);

        swift_bridgeObjectRetain_n();

        v76 = sub_22F740B70();
        v77 = sub_22F7415D0();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *&v104 = v79;
          *v78 = 136315138;
          if (v72)
          {
            v80 = v73;
          }

          else
          {
            v80 = 0x3E656E6F6E3CLL;
          }

          if (v72)
          {
            v81 = v72;
          }

          else
          {
            v81 = 0xE600000000000000;
          }

          v82 = sub_22F145F20(v80, v81, &v104);
          a5 = v89;

          *(v78 + 4) = v82;
          _os_log_impl(&dword_22F0FC000, v76, v77, "Editorial Playlists selected: %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x2319033A0](v79, -1, -1);
          MEMORY[0x2319033A0](v78, -1, -1);
        }

        else
        {
        }

        v23 = v90;
        if (v72)
        {
          v104 = v109;
          v105 = v110;
          v106 = v111;
          isa = v112;
          v86 = [v95 ignoreProgress];

          sub_22F234DF0(v73, v72, &v104, v86, v98, a5, v94);
        }
      }

      else
      {

        v83 = sub_22F740B70();
        v84 = sub_22F7415C0();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_22F0FC000, v83, v84, "[Warning-Music] No editorial playlist found so using first playlist", v85, 2u);
          MEMORY[0x2319033A0](v85, -1, -1);
        }

        v23 = v90;
      }

      goto LABEL_28;
    }

    v31 = sub_22F740B70();
    v48 = sub_22F7415E0();

    if (os_log_type_enabled(v31, v48))
    {
      v91 = v23;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v104 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_22F145F20(a1, a2, &v104);
      _os_log_impl(&dword_22F0FC000, v31, v48, "Did not find any playlists using searchTerm'%s'", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2319033A0](v50, -1, -1);
      v37 = v49;
      v23 = v91;
      goto LABEL_26;
    }
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError();
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
  v51 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v51, 1);

LABEL_28:
  v52 = sub_22F740B70();
  v53 = sub_22F7415E0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22F0FC000, v52, v53, "Unable to get the playlistId", v54, 2u);
    MEMORY[0x2319033A0](v54, -1, -1);
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError();
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
  v55 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v55, 1);
}

void sub_22F22F388(void *a1, char a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = *(a3 + 24);
  a2 &= 1u;
  *(a3 + 24) = a2;
  sub_22F101678(v8, v9);
  sub_22F1D2178(a1, a2);
  dispatch_group_leave(a4);
}

uint64_t MusicKitClient.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);

  return v0;
}

uint64_t MusicKitClient.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_22F22F4CC(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = sub_22F740DF0();
    v8 = sub_22F740DF0();
    v9 = sub_22F740DF0();
    v10 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v7 clientVersion:v8 bundleIdentifier:v9];

    [v10 mutableCopy];
    sub_22F741920();
    swift_unknownObjectRelease();
    sub_22F120634(0, &unk_2810A9090, 0x277D7FB98);
    swift_dynamicCast();
    v11 = sub_22F740DF0();
    [v19 setBagProfile_];

    v12 = sub_22F740DF0();
    [v19 setBagProfileVersion_];

    v13 = v6;
    [v5 setClientInfo_];
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 defaultIdentityStore];
    [v5 setIdentityStore_];

    v17 = [objc_opt_self() activeAccount];
    [v5 setIdentity_];

    [v5 setPersonalizationStyle_];
    v18 = [objc_allocWithZone(MEMORY[0x277D7FC80]) initWithUserInteractionLevel_];
    [v5 setAuthenticationProvider_];
  }
}

void sub_22F22F7B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_22F22F7FC(void *a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v8 = sub_22F741640();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F741630();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_22F740C00();
  v26 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = a2[1];
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  *(v4 + 80) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = v18;
  *(v4 + 40) = v19;
  *(v4 + 56) = v20;
  *(v4 + 64) = v21;
  v28 = sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  v25 = "ponse8@NSError16";
  (*(v14 + 16))(v17, a3, v13);
  v32 = MEMORY[0x277D84F90];
  sub_22F236044(&unk_2810A90F0, MEMORY[0x277D85230]);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F16BC6C(&qword_2810A92A8, &qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F741970();
  (*(v30 + 104))(v29, *MEMORY[0x277D85260], v31);
  v23 = sub_22F741660();
  (*(v14 + 8))(v27, v26);
  *(v4 + 72) = v23;
  return v4;
}

char *sub_22F22FB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F740C00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(type metadata accessor for MusicBag());
  v10 = sub_22F1ED5B0(0);
  v11 = MusicBag.userStorefront()();
  if (v12)
  {
    (*(v5 + 8))(a1, v4);
LABEL_6:

    return v8;
  }

  countAndFlagsBits = v11._countAndFlagsBits;
  v13 = MusicBag.mediaApiDomain()();
  if (v14)
  {
    (*(v5 + 8))(a1, v4);

    goto LABEL_6;
  }

  v24 = v13._countAndFlagsBits;
  v15 = MusicBag.personalMixIdentifers()();
  v23 = 0;
  if (a2)
  {

    v15 = a2;
  }

  v22[1] = v15;
  *&v25 = v15;
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  sub_22F16BC6C(&qword_2810A9250, &qword_27DAB1608, &unk_22F772BB0);
  sub_22F160DE4();
  v17 = sub_22F7410E0();
  v19 = v18;

  *&v25 = countAndFlagsBits;
  *(&v25 + 1) = v11._object;
  v26 = v24;
  object = v13._object;
  v28 = v17;
  v29 = v19;
  (*(v5 + 16))(v8, a1, v4);
  type metadata accessor for MusicKitClient();
  swift_allocObject();
  v20 = v23;
  v21 = sub_22F22F7FC(v10, &v25, v8);
  if (!v20)
  {
    v8 = v21;
  }

  (*(v5 + 8))(a1, v4);
  return v8;
}

uint64_t sub_22F22FDFC(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v80 = a4;
  v78 = sub_22F740AD0();
  isa = v78[-1].isa;
  v13 = *(isa + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22F73EEC0();
  v79 = *(v81 - 8);
  v15 = *(v79 + 64);
  v16 = MEMORY[0x28223BE20](v81);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = a3[1];
  v91 = *a3;
  v92 = v20;
  v93 = a3[2];
  v94 = *(a3 + 6);

  v21 = a7;
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D48);
    v39 = sub_22F740B70();
    v40 = sub_22F7415C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "[Warning-Music] Empty music search term", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    swift_beginAccess();
    v42 = *(a6 + 16);
    *(a6 + 16) = MEMORY[0x277D84F90];
    v43 = *(a6 + 24);
    *(a6 + 24) = 0;
    sub_22F101678(v42, v43);
    dispatch_group_leave(v21);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v22 = qword_2810B4E70;
    *&v23 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search Songs with term", 37, 2u, v23, 0, v22, v88);
    if (qword_2810A9440 != -1)
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
      v74 = v19;
      v28 = v27;
      v29 = swift_slowAlloc();
      v73 = v21;
      v30 = v18;
      v31 = a5;
      v32 = v29;
      *&v82[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22F145F20(a1, a2, v82);
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Search for song using term: '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      a5 = v31;
      v18 = v30;
      MEMORY[0x2319033A0](v33, -1, -1);
      v34 = v28;
      v19 = v74;
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    v35 = *(a5 + 40);
    v36 = *(a5 + 56);
    v37 = *(a5 + 64);
    aBlock = *(a5 + 24);
    v85 = v35;
    v86 = v36;
    v87 = v37;
    v82[0] = v91;
    v82[1] = v92;
    v82[2] = v93;
    v83 = v94;
    sub_22F3E3C18(a1, a2, &unk_2843D99C8, v82, v18);
    v45 = v18;
    v46 = a5;
    v47 = *(&v89 + 1);
    v48 = v90;
    v49 = swift_allocObject();
    v50 = v88[1];
    *(v49 + 16) = v88[0];
    *(v49 + 32) = v50;
    *(v49 + 48) = v89;
    *(v49 + 64) = v90;
    *(v49 + 72) = sub_22F235B78;
    *(v49 + 80) = v19;
    v73 = v47;

    v72 = v48;

    sub_22F741740();
    v74 = v19;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v51 = v75;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v51, v78);
    v70 = v46;
    v78 = *(v46 + 72);
    v52 = v79;
    v53 = *(v79 + 16);
    v54 = v77;
    v71 = v45;
    v55 = v81;
    v53(v77, v45, v81);
    v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v57 = (v15 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 39) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    (*(v52 + 32))(v60 + v56, v54, v55);
    v61 = v60 + v57;
    v62 = v92;
    *v61 = v91;
    *(v61 + 16) = v62;
    *(v61 + 32) = v93;
    *(v61 + 48) = v94;
    *(v60 + v58) = v70;
    v63 = v60 + isa;
    *v63 = "MusicKitClient HTTP Request";
    *(v63 + 8) = 27;
    *(v63 + 16) = 2;
    v64 = v80;
    *(v60 + v59) = v80;
    v65 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v65 = sub_22F2360D0;
    v65[1] = v49;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_22F2360E0;
    *(v66 + 24) = v60;
    v86 = sub_22F2360E8;
    v87 = v66;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v85 = sub_22F2280B0;
    *(&v85 + 1) = &block_descriptor_135;
    v67 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v91, v82);

    v68 = v64;

    dispatch_sync(v78, v67);
    _Block_release(v67);

    (*(v52 + 8))(v71, v55);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    if (v67)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F23073C(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v80 = a4;
  v78 = sub_22F740AD0();
  isa = v78[-1].isa;
  v13 = *(isa + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22F73EEC0();
  v79 = *(v81 - 8);
  v15 = *(v79 + 64);
  v16 = MEMORY[0x28223BE20](v81);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = a3[1];
  v91 = *a3;
  v92 = v20;
  v93 = a3[2];
  v94 = *(a3 + 6);

  v21 = a7;
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D48);
    v39 = sub_22F740B70();
    v40 = sub_22F7415C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "[Warning-Music] Empty playlist searchTerm", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    swift_beginAccess();
    v42 = *(a6 + 16);
    *(a6 + 16) = MEMORY[0x277D84F90];
    v43 = *(a6 + 24);
    *(a6 + 24) = 0;
    sub_22F101678(v42, v43);
    dispatch_group_leave(v21);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v22 = qword_2810B4E70;
    *&v23 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search playlist", 30, 2u, v23, 0, v22, v88);
    if (qword_2810A9440 != -1)
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
      v74 = v19;
      v28 = v27;
      v29 = swift_slowAlloc();
      v73 = v21;
      v30 = v18;
      v31 = a5;
      v32 = v29;
      *&v82[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22F145F20(a1, a2, v82);
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Search for apple music playlist: '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      a5 = v31;
      v18 = v30;
      MEMORY[0x2319033A0](v33, -1, -1);
      v34 = v28;
      v19 = v74;
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    v35 = *(a5 + 40);
    v36 = *(a5 + 56);
    v37 = *(a5 + 64);
    aBlock = *(a5 + 24);
    v85 = v35;
    v86 = v36;
    v87 = v37;
    v82[0] = v91;
    v82[1] = v92;
    v82[2] = v93;
    v83 = v94;
    sub_22F3E3C18(a1, a2, &unk_2843D99F8, v82, v18);
    v45 = v18;
    v46 = a5;
    v47 = *(&v89 + 1);
    v48 = v90;
    v49 = swift_allocObject();
    v50 = v88[1];
    *(v49 + 16) = v88[0];
    *(v49 + 32) = v50;
    *(v49 + 48) = v89;
    *(v49 + 64) = v90;
    *(v49 + 72) = sub_22F235C68;
    *(v49 + 80) = v19;
    v73 = v47;

    v72 = v48;

    sub_22F741740();
    v74 = v19;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v51 = v75;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v51, v78);
    v70 = v46;
    v78 = *(v46 + 72);
    v52 = v79;
    v53 = *(v79 + 16);
    v54 = v77;
    v71 = v45;
    v55 = v81;
    v53(v77, v45, v81);
    v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v57 = (v15 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 39) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    (*(v52 + 32))(v60 + v56, v54, v55);
    v61 = v60 + v57;
    v62 = v92;
    *v61 = v91;
    *(v61 + 16) = v62;
    *(v61 + 32) = v93;
    *(v61 + 48) = v94;
    *(v60 + v58) = v70;
    v63 = v60 + isa;
    *v63 = "MusicKitClient HTTP Request";
    *(v63 + 8) = 27;
    *(v63 + 16) = 2;
    v64 = v80;
    *(v60 + v59) = v80;
    v65 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v65 = sub_22F2360D8;
    v65[1] = v49;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_22F2360E0;
    *(v66 + 24) = v60;
    v86 = sub_22F2360E8;
    v87 = v66;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v85 = sub_22F2280B0;
    *(&v85 + 1) = &block_descriptor_194;
    v67 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v91, v82);

    v68 = v64;

    dispatch_sync(v78, v67);
    _Block_release(v67);

    (*(v52 + 8))(v71, v55);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    if (v67)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F23107C(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v73 = a5;
  v69 = a4;
  v67 = sub_22F740AD0();
  isa = v67[-1].isa;
  v12 = *(isa + 64);
  MEMORY[0x28223BE20](v67);
  v64 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v63 - v17;
  v19 = swift_allocObject();
  v72 = a6;
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F236130;
  *(v20 + 24) = v19;
  v21 = a3[1];
  v85 = *a3;
  v86 = v21;
  v87 = a3[2];
  v88 = *(a3 + 6);
  swift_retain_n();

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D48);
    v39 = sub_22F740B70();
    v40 = sub_22F7415C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "[Warning-Music] Unable to search for playlist songs without a playlistId", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    v72(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v71 = v18;
    v22 = qword_2810B4E70;
    *&v23 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v23, 0, v22, v82);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v24 = sub_22F740B90();
    __swift_project_value_buffer(v24, qword_2810B4D48);

    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();

    v27 = os_log_type_enabled(v25, v26);
    v70 = v14;
    if (v27)
    {
      v28 = v20;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v74[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22F145F20(a1, a2, v74);
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Get Playlist Songs for: '%s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      v31 = v29;
      v20 = v28;
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    v32 = v73[4];
    v33 = v73[5];
    v34 = v73[6];
    v35 = v73[7];
    v36 = v73[8];
    aBlock = v73[3];
    v77 = v32;
    v78 = v33;
    v79 = v34;
    v80 = v35;
    v81 = v36;
    v74[0] = v85;
    v74[1] = v86;
    v74[2] = v87;
    v75 = v88;

    v37 = v71;
    sub_22F3E35AC(a1, a2, v74, v71);

    v63[2] = a7;
    v44 = *(&v83 + 1);
    v43 = v84;
    v45 = swift_allocObject();
    v46 = v82[1];
    *(v45 + 16) = v82[0];
    *(v45 + 32) = v46;
    *(v45 + 48) = v83;
    *(v45 + 64) = v84;
    *(v45 + 72) = sub_22F236130;
    *(v45 + 80) = v20;
    v72 = v44;

    v63[1] = v43;

    sub_22F741740();
    v63[0] = v20;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v47 = v64;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v47, v67);
    v67 = v73[9];
    v48 = v68;
    v49 = v66;
    (*(v68 + 16))(v66, v37, v70);
    v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v51 = (v15 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v48 + 32))(v54 + v50, v49, v70);
    v55 = v54 + v51;
    v56 = v86;
    *v55 = v85;
    *(v55 + 16) = v56;
    *(v55 + 32) = v87;
    *(v55 + 48) = v88;
    *(v54 + v52) = v73;
    v57 = v54 + isa;
    *v57 = "MusicKitClient HTTP Request";
    *(v57 + 8) = 27;
    *(v57 + 16) = 2;
    v58 = v69;
    *(v54 + v53) = v69;
    v59 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v59 = sub_22F2360D4;
    v59[1] = v45;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_22F2360E0;
    *(v60 + 24) = v54;
    v80 = sub_22F2360E8;
    v81 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_22F2280B0;
    v79 = &block_descriptor_217;
    v61 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v85, v74);

    v62 = v58;

    dispatch_sync(v67, v61);
    _Block_release(v61);

    (*(v48 + 8))(v71, v70);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if (v61)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F231A4C(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v73 = a5;
  v69 = a4;
  v67 = sub_22F740AD0();
  isa = v67[-1].isa;
  v12 = *(isa + 64);
  MEMORY[0x28223BE20](v67);
  v64 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v63 - v17;
  v19 = swift_allocObject();
  v72 = a6;
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F235C74;
  *(v20 + 24) = v19;
  v21 = a3[1];
  v85 = *a3;
  v86 = v21;
  v87 = a3[2];
  v88 = *(a3 + 6);
  swift_retain_n();

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D48);
    v39 = sub_22F740B70();
    v40 = sub_22F7415C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "[Warning-Music] Unable to search for playlist songs without a playlistId", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    v72(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v71 = v18;
    v22 = qword_2810B4E70;
    *&v23 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v23, 0, v22, v82);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v24 = sub_22F740B90();
    __swift_project_value_buffer(v24, qword_2810B4D48);

    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();

    v27 = os_log_type_enabled(v25, v26);
    v70 = v14;
    if (v27)
    {
      v28 = v20;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v74[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22F145F20(a1, a2, v74);
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Get Playlist Songs for: '%s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      v31 = v29;
      v20 = v28;
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    v32 = v73[4];
    v33 = v73[5];
    v34 = v73[6];
    v35 = v73[7];
    v36 = v73[8];
    aBlock = v73[3];
    v77 = v32;
    v78 = v33;
    v79 = v34;
    v80 = v35;
    v81 = v36;
    v74[0] = v85;
    v74[1] = v86;
    v74[2] = v87;
    v75 = v88;

    v37 = v71;
    sub_22F3E35AC(a1, a2, v74, v71);

    v63[2] = a7;
    v44 = *(&v83 + 1);
    v43 = v84;
    v45 = swift_allocObject();
    v46 = v82[1];
    *(v45 + 16) = v82[0];
    *(v45 + 32) = v46;
    *(v45 + 48) = v83;
    *(v45 + 64) = v84;
    *(v45 + 72) = sub_22F236130;
    *(v45 + 80) = v20;
    v72 = v44;

    v63[1] = v43;

    sub_22F741740();
    v63[0] = v20;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v47 = v64;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v47, v67);
    v67 = v73[9];
    v48 = v68;
    v49 = v66;
    (*(v68 + 16))(v66, v37, v70);
    v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v51 = (v15 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v48 + 32))(v54 + v50, v49, v70);
    v55 = v54 + v51;
    v56 = v86;
    *v55 = v85;
    *(v55 + 16) = v56;
    *(v55 + 32) = v87;
    *(v55 + 48) = v88;
    *(v54 + v52) = v73;
    v57 = v54 + isa;
    *v57 = "MusicKitClient HTTP Request";
    *(v57 + 8) = 27;
    *(v57 + 16) = 2;
    v58 = v69;
    *(v54 + v53) = v69;
    v59 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v59 = sub_22F2360D4;
    v59[1] = v45;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_22F2360E0;
    *(v60 + 24) = v54;
    v80 = sub_22F2360E8;
    v81 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_22F2280B0;
    v79 = &block_descriptor_240;
    v61 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v85, v74);

    v62 = v58;

    dispatch_sync(v67, v61);
    _Block_release(v61);

    (*(v48 + 8))(v71, v70);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if (v61)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F23241C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7)
{
  v12 = &v104;
  v13 = *(a3 + 16);
  v104 = *a3;
  v105 = v13;
  v106 = *(a3 + 32);
  v107 = *(a3 + 48);

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4D48);
    v29 = sub_22F740B70();
    v30 = sub_22F7415C0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22F0FC000, v29, v30, "[Warning-Music] Empty searchTerm for playlist search", v31, 2u);
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    (a5)(MEMORY[0x277D84F90], 0);
  }

  if (qword_2810A9B98 != -1)
  {
LABEL_65:
    swift_once();
  }

  v14 = qword_2810B4E70;
  *&v15 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Search genre music", 33, 2u, v15, 0, v14, v103);
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v16 = sub_22F740B90();
  __swift_project_value_buffer(v16, qword_2810B4D48);

  v17 = sub_22F740B70();
  v18 = sub_22F7415C0();

  v89 = a7;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v99 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22F145F20(a1, a2, &v99);
    _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] Search for playlist with searchTerm: '%s'", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v12 = &v104;
    MEMORY[0x2319033A0](v20, -1, -1);
    MEMORY[0x2319033A0](v19, -1, -1);
  }

  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = -1;
  v23 = v12[1];
  v99 = *v12;
  v100 = v23;
  v101 = v12[2];
  v102 = v107;
  v88 = objc_opt_self();
  v24 = [v88 ignoreProgress];

  v25 = v21;
  sub_22F23073C(a1, a2, &v99, v24, a4, v22, v25);

  sub_22F741620();
  swift_beginAccess();
  v26 = *(v22 + 24);
  v90 = v25;
  if (v26 == 255)
  {

    v33 = sub_22F740B70();
    v34 = sub_22F7415E0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v99 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22F145F20(a1, a2, &v99);
      v37 = "Did not find any playlists using searchTerm '%s'";
LABEL_28:
      _os_log_impl(&dword_22F0FC000, v33, v34, v37, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x2319033A0](v36, -1, -1);
      MEMORY[0x2319033A0](v35, -1, -1);
    }
  }

  else
  {
    v27 = *(v22 + 16);
    if (v26)
    {
      sub_22F1D2178(v27, 1);
      sub_22F1B2BBC(0);
      sub_22F1D2178(v27, 1);
      (a5)(v27, 1);
      sub_22F101678(v27, v26);
      sub_22F101678(v27, v26);
      goto LABEL_30;
    }

    v12 = v27[2];

    if (v12)
    {
      v86 = a5;
      v85 = a6;
      v84 = v26;
      sub_22F1D2160(v27, v26);
      v38 = sub_22F740B70();
      v39 = sub_22F7415C0();

      v96 = v27;
      if (os_log_type_enabled(v38, v39))
      {
        log = v38;
        v40 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v98 = v83;
        *v40 = 134218498;
        *(v40 + 4) = v27[2];
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_22F145F20(a1, a2, &v98);
        buf = v40;
        *(v40 + 22) = 2080;
        v97 = MEMORY[0x277D84F90];
        sub_22F146454(0, v12, 0);
        a1 = v97;
        v41 = v27 + 5;
        do
        {
          v42 = *v41;
          v43 = v41[1];
          v44 = v41[2];
          a2 = v41[4];
          a6 = v41[5];
          *&v99 = *(v41 - 1);
          *(&v99 + 1) = v42;

          swift_bridgeObjectRetain_n();

          MEMORY[0x231900B10](2112032, 0xE300000000000000);

          MEMORY[0x231900B10](v43, v44);

          v45 = v99;
          a5 = *(v97 + 16);
          v46 = *(v97 + 24);
          if (a5 >= v46 >> 1)
          {
            sub_22F146454((v46 > 1), a5 + 1, 1);
          }

          v41 += 7;
          *(v97 + 16) = a5 + 1;
          *(v97 + 16 * a5 + 32) = v45;
          v12 = (v12 - 1);
        }

        while (v12);
        v52 = MEMORY[0x231900D40](v97, MEMORY[0x277D837D0]);
        v54 = v53;

        v55 = sub_22F145F20(v52, v54, &v98);

        *(buf + 3) = v55;
        _os_log_impl(&dword_22F0FC000, log, v39, "Found %ld playlists for the searchTerm '%s'. Playlists: %s", buf, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v83, -1, -1);
        MEMORY[0x2319033A0](buf, -1, -1);

        v27 = v96;
      }

      else
      {
      }

      a7 = 0;
      v56 = v27 + 10;
      loga = -v27[2];
      bufa = MEMORY[0x277D84F90];
      v87 = v27 + 10;
LABEL_36:
      v57 = a7 + 1;
      v58 = &v56[7 * a7];
      while (&v57[loga] != 1)
      {
        a7 = v57;
        if ((v57 - 1) >= v96[2])
        {
          __break(1u);
          goto LABEL_65;
        }

        v59 = *(v58 - 6);
        a6 = *(v58 - 5);
        v12 = *(v58 - 4);
        a2 = *(v58 - 3);
        a1 = *(v58 - 2);
        a5 = *(v58 - 1);
        v60 = *v58;
        if (a1 != 0x6169726F74696465 || a5 != 0xE90000000000006CLL)
        {
          ++v57;
          v58 += 7;
          if ((sub_22F742040() & 1) == 0)
          {
            continue;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v99 = bufa;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468BC(0, *(bufa + 2) + 1, 1);
          bufa = v99;
        }

        v64 = *(bufa + 2);
        v63 = *(bufa + 3);
        v65 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          sub_22F1468BC((v63 > 1), v64 + 1, 1);
          v65 = v64 + 1;
          bufa = v99;
        }

        *(bufa + 2) = v65;
        v66 = &bufa[56 * v64];
        *(v66 + 4) = v59;
        *(v66 + 5) = a6;
        *(v66 + 6) = v12;
        *(v66 + 7) = a2;
        *(v66 + 8) = a1;
        *(v66 + 9) = a5;
        *(v66 + 10) = v60;
        v56 = v87;
        goto LABEL_36;
      }

      sub_22F101678(v96, v84);
      a5 = v86;
      if (*(bufa + 2))
      {
        v68 = *(bufa + 4);
        v67 = *(bufa + 5);
        v69 = *(bufa + 7);
        v70 = *(bufa + 10);

        swift_bridgeObjectRetain_n();

        v71 = sub_22F740B70();
        v72 = sub_22F7415D0();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v99 = v74;
          *v73 = 136315138;
          if (v67)
          {
            v75 = v68;
          }

          else
          {
            v75 = 0x3E656E6F6E3CLL;
          }

          if (v67)
          {
            v76 = v67;
          }

          else
          {
            v76 = 0xE600000000000000;
          }

          v77 = sub_22F145F20(v75, v76, &v99);

          *(v73 + 4) = v77;
          _os_log_impl(&dword_22F0FC000, v71, v72, "Editorial Playlists selected: %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x2319033A0](v74, -1, -1);
          v78 = v73;
          a5 = v86;
          MEMORY[0x2319033A0](v78, -1, -1);
        }

        else
        {
        }

        if (v67)
        {
          v99 = v104;
          v100 = v105;
          v101 = v106;
          v102 = v107;
          v82 = [v88 ignoreProgress];

          v89(v68, v67, &v99, v82, a4, a5, v85);
        }
      }

      else
      {

        v79 = sub_22F740B70();
        v80 = sub_22F7415C0();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_22F0FC000, v79, v80, "[Warning-Music] No editorial playlist found so using first playlist", v81, 2u);
          MEMORY[0x2319033A0](v81, -1, -1);
        }
      }

      goto LABEL_30;
    }

    v33 = sub_22F740B70();
    v34 = sub_22F7415E0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v99 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22F145F20(a1, a2, &v99);
      v37 = "Did not find any playlists using searchTerm'%s'";
      goto LABEL_28;
    }
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError();
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
  v47 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v47, 1);

LABEL_30:
  v48 = sub_22F740B70();
  v49 = sub_22F7415E0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_22F0FC000, v48, v49, "Unable to get the playlistId", v50, 2u);
    MEMORY[0x2319033A0](v50, -1, -1);
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError();
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
  v51 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v51, 1);
}

uint64_t sub_22F233254(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v73 = a5;
  v69 = a4;
  v67 = sub_22F740AD0();
  isa = v67[-1].isa;
  v12 = *(isa + 64);
  MEMORY[0x28223BE20](v67);
  v64 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v63 - v17;
  v19 = swift_allocObject();
  v72 = a6;
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F236130;
  *(v20 + 24) = v19;
  v21 = a3[1];
  v85 = *a3;
  v86 = v21;
  v87 = a3[2];
  v88 = *(a3 + 6);
  swift_retain_n();

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D48);
    v39 = sub_22F740B70();
    v40 = sub_22F7415C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "[Warning-Music] Unable to search for playlist songs without a playlistId", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    v72(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v71 = v18;
    v22 = qword_2810B4E70;
    *&v23 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v23, 0, v22, v82);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v24 = sub_22F740B90();
    __swift_project_value_buffer(v24, qword_2810B4D48);

    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();

    v27 = os_log_type_enabled(v25, v26);
    v70 = v14;
    if (v27)
    {
      v28 = v20;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v74[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22F145F20(a1, a2, v74);
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Get Playlist Songs for: '%s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      v31 = v29;
      v20 = v28;
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    v32 = v73[4];
    v33 = v73[5];
    v34 = v73[6];
    v35 = v73[7];
    v36 = v73[8];
    aBlock = v73[3];
    v77 = v32;
    v78 = v33;
    v79 = v34;
    v80 = v35;
    v81 = v36;
    v74[0] = v85;
    v74[1] = v86;
    v74[2] = v87;
    v75 = v88;

    v37 = v71;
    sub_22F3E35AC(a1, a2, v74, v71);

    v63[2] = a7;
    v44 = *(&v83 + 1);
    v43 = v84;
    v45 = swift_allocObject();
    v46 = v82[1];
    *(v45 + 16) = v82[0];
    *(v45 + 32) = v46;
    *(v45 + 48) = v83;
    *(v45 + 64) = v84;
    *(v45 + 72) = sub_22F236130;
    *(v45 + 80) = v20;
    v72 = v44;

    v63[1] = v43;

    sub_22F741740();
    v63[0] = v20;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v47 = v64;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v47, v67);
    v67 = v73[9];
    v48 = v68;
    v49 = v66;
    (*(v68 + 16))(v66, v37, v70);
    v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v51 = (v15 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v48 + 32))(v54 + v50, v49, v70);
    v55 = v54 + v51;
    v56 = v86;
    *v55 = v85;
    *(v55 + 16) = v56;
    *(v55 + 32) = v87;
    *(v55 + 48) = v88;
    *(v54 + v52) = v73;
    v57 = v54 + isa;
    *v57 = "MusicKitClient HTTP Request";
    *(v57 + 8) = 27;
    *(v57 + 16) = 2;
    v58 = v69;
    *(v54 + v53) = v69;
    v59 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v59 = sub_22F2360D4;
    v59[1] = v45;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_22F2360E0;
    *(v60 + 24) = v54;
    v80 = sub_22F2360E8;
    v81 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_22F2280B0;
    v79 = &block_descriptor_263;
    v61 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v85, v74);

    v62 = v58;

    dispatch_sync(v67, v61);
    _Block_release(v61);

    (*(v48 + 8))(v71, v70);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if (v61)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F233C24(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x277D84F90];
  result = sub_22F146954(0, v9, 0);
  v37 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_63;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 17;
            }

            v20[2] = v19;
            v20[3] = 2 * (v24 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_22F146954((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v22 + 1;
      *(v38 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v37;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_36:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v38;
    }

    while (1)
    {
      v26 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v27 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v28 = a4[2];
      if (v28 < v27)
      {
        v27 = a4[2];
      }

      v29 = v27 - v17;
      if (v27 < v17)
      {
        goto LABEL_67;
      }

      if (v17 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a4;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
        if (v27 != v17)
        {
          if (v29 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 17;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_22F146954((v31 > 1), v32 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= v37;
      if (a3 > 0)
      {
        v33 = v26 >= v37;
      }

      v17 = v26;
      if (v33)
      {
        return v38;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_22F233FB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for MusicKitClientError()
{
  result = qword_27DAB2958;
  if (!qword_27DAB2958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2340E0(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void *a6, void *a7, void *a8, void (*a9)(uint64_t, void), uint64_t a10)
{
  v120 = a6;
  v113 = a5;
  v117 = a4;
  v108 = sub_22F740AD0();
  v115 = *(v108 - 8);
  v15 = v115[8];
  MEMORY[0x28223BE20](v108);
  v107 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22F73EEC0();
  v111 = *(v118 - 8);
  v17 = *(v111 + 64);
  MEMORY[0x28223BE20](v118);
  v106 = v99 - ((&v18[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  v114 = v18;
  MEMORY[0x28223BE20](v19);
  v119 = v99 - v20;
  v21 = sub_22F73EEE0();
  v110 = *(v21 - 1);
  v22 = *(v110 + 64);
  MEMORY[0x28223BE20](v21);
  v102 = (v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  v24[2] = a7;
  v24[3] = a8;
  v24[4] = a9;
  v24[5] = a10;
  v25 = *(a2 + 16);
  v137 = *a2;
  v138 = v25;
  v139 = *(a2 + 32);
  v140 = *(a2 + 48);
  v116 = a1[2];
  if (!v116)
  {
    v44 = a7;
    v45 = a8;

    sub_22F3A7B14(MEMORY[0x277D84F90], 0, v45, a9, a10);
  }

  v26 = qword_2810A9B98;
  v27 = a7;
  v28 = a8;

  if (v26 != -1)
  {
LABEL_30:
    swift_once();
  }

  v29 = qword_2810B4E70;
  *&v30 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v30, 0, v29, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
  v31 = swift_allocObject();
  v32 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v31 + 16) = MEMORY[0x277D84F90];
  *(v31 + 24) = v32;
  v112 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
  v33 = swift_allocObject();
  *(v33 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v33 + 16) = 0;
  v34 = (v33 + 16);
  if ((v120[3] != a3 || v120[4] != v117) && (sub_22F742040() & 1) == 0)
  {
    v96 = v120[2];
    Batch = MusicBag.songEquivalentQueryBatchSize()();
    v105 = 1;
    if (Batch)
    {
      goto LABEL_7;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    *(Batch + 16) = v21;
    os_unfair_lock_unlock((Batch + 32));

    v98 = a1[3];
    (a1[2])(v97);
  }

  v35 = v120[2];
  Batch = MusicBag.songQueryBatchSize()();
  v105 = 0;
  if (!Batch)
  {
    goto LABEL_28;
  }

LABEL_7:
  v99[1] = v33 + 16;

  v37 = sub_22F233C24(0, v116, Batch, a1, Batch);
  v117 = 0;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v38 = sub_22F740B90();
  __swift_project_value_buffer(v38, qword_2810B4D48);

  v39 = sub_22F740B70();
  v40 = sub_22F7415C0();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v37;
  v101 = v21;
  if (v41)
  {
    v43 = swift_slowAlloc();
    *v43 = 134218240;
    *(v43 + 4) = v116;

    *(v43 + 12) = 2048;
    *(v43 + 14) = *(v42 + 16);

    _os_log_impl(&dword_22F0FC000, v39, v40, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v43, 0x16u);
    MEMORY[0x2319033A0](v43, -1, -1);
  }

  else
  {
  }

  v47 = *(v42 + 16);
  v48 = *(&v135 + 1);
  v49 = v136;
  v50 = swift_allocObject();
  v51 = v134[1];
  *(v50 + 16) = v134[0];
  *(v50 + 32) = v51;
  *(v50 + 48) = v135;
  v52 = v113;
  *(v50 + 64) = v136;
  *(v50 + 72) = v52;
  *(v50 + 80) = sub_22F235B84;
  *(v50 + 88) = v24;
  v116 = v42;
  v53 = v112;
  *(v50 + 96) = v33;
  *(v50 + 104) = v53;
  type metadata accessor for CompletionCounter();
  v54 = swift_allocObject();
  v54[2] = sub_22F2360E4;
  v54[3] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v55 = swift_allocObject();
  *(v55 + 32) = 0;
  *(v55 + 16) = 0;
  *(v55 + 24) = v47;
  v109 = v54;
  v54[4] = v55;
  v56 = sub_22F73EF30();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v99[3] = v48;

  v99[2] = v49;

  v59 = v52;

  v60 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v61 = qword_2810A9170;
  v62 = v101;
  v63 = v102;
  *v102 = qword_2810A9170;
  (*(v110 + 104))(v63, *MEMORY[0x277CC86D8], v62);
  v64 = v61;
  v110 = v60;
  sub_22F73EF00();
  v65 = [v59 progressReportersForParallelOperationsWithCount_];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v66 = sub_22F741180();

  v101 = (v111 + 16);
  v102 = v115 + 1;
  v99[6] = v111 + 32;
  v100 = &v114->isa + 7;
  v129 = v66;
  v130 = 0;
  v99[4] = v111 + 8;
  v99[5] = &v125;
  v131 = v116;
  v132 = 0;
  v133 = 0;
  v103 = v33;
  v104 = v24;
  while (1)
  {
    v67 = sub_22F226D78();
    if (!v67)
    {
    }

    v21 = v67;
    v69 = v68;
    v70 = v120[4];
    v71 = v120[5];
    v72 = v120[6];
    v73 = v120[7];
    v74 = v120[8];
    v123 = v120[3];
    v124 = v70;
    v125 = v71;
    v126 = v72;
    v127 = v73;
    v128 = v74;
    v121[0] = v137;
    v121[1] = v138;
    v121[2] = v139;
    v122 = v140;

    v34 = v117;
    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v69, v121, v105, v119);
    v75 = v110;
    if (v34)
    {
      break;
    }

    v116 = v21;
    v117 = 0;

    v76 = swift_allocObject();
    v77 = v112;
    v76[2] = v75;
    v76[3] = v77;
    v76[4] = v109;
    v76[5] = v33;
    v115 = v76;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v78 = v107;
    sub_22F740AC0();
    sub_22F740A90();
    (*v102)(v78, v108);
    v114 = v120[9];
    v79 = v111;
    v80 = v106;
    v81 = v118;
    (*(v111 + 16))(v106, v119, v118);
    v82 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v83 = &v100[v82] & 0xFFFFFFFFFFFFFFF8;
    v84 = (v83 + 63) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v84 + 39) & 0xFFFFFFFFFFFFFFF8;
    a3 = swift_allocObject();
    (*(v79 + 32))(a3 + v82, v80, v81);
    v86 = a3 + v83;
    v87 = v138;
    *v86 = v137;
    *(v86 + 16) = v87;
    *(v86 + 32) = v139;
    *(v86 + 48) = v140;
    *(a3 + v84) = v120;
    v88 = a3 + v113;
    *v88 = "MusicKitClient HTTP Request";
    *(v88 + 8) = 27;
    *(v88 + 16) = 2;
    v89 = v116;
    *(a3 + v85) = v116;
    v90 = (a3 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8));
    v91 = v115;
    *v90 = sub_22F2360DC;
    v90[1] = v91;
    a1 = swift_allocObject();
    a1[2] = sub_22F2360E0;
    a1[3] = a3;
    v127 = sub_22F2360E8;
    v128 = a1;
    v123 = MEMORY[0x277D85DD0];
    v124 = 1107296256;
    v125 = sub_22F2280B0;
    v126 = &block_descriptor_157;
    v21 = _Block_copy(&v123);
    sub_22F1D20B0(&v137, v121);

    v92 = v89;

    dispatch_sync(v114, v21);
    _Block_release(v21);

    (*(v79 + 8))(v119, v118);
    LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

    v33 = v103;
    v24 = v104;
    if (v91)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  [*(v33 + 24) lock];
  LOBYTE(v21) = 1;
  swift_beginAccess();
  v93 = *(v33 + 16);
  *(v33 + 16) = v34;

  v94 = *(v33 + 24);
  v95 = v34;
  [v94 unlock];
  a1 = v109;
  Batch = v109[4];

  os_unfair_lock_lock((Batch + 32));
  if ((*(Batch + 16) & 1) == 0)
  {
    goto LABEL_29;
  }

  os_unfair_lock_unlock((Batch + 32));
}

uint64_t sub_22F234DF0(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v73 = a5;
  v71 = sub_22F740AD0();
  isa = v71[-1].isa;
  v13 = *(isa + 64);
  MEMORY[0x28223BE20](v71);
  v68 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73EEC0();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v70 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = v65 - v18;
  v19 = swift_allocObject();
  v75 = a6;
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = a3[1];
  v88 = *a3;
  v89 = v20;
  v90 = a3[2];
  v91 = *(a3 + 6);
  v74 = a7;
  v21 = a1;

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D48);
    v39 = sub_22F740B70();
    v40 = sub_22F7415C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "[Warning-Music] Unable to search for playlist songs without a playlistId", v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    v75(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v66 = a4;
    v22 = qword_2810B4E70;
    *&v23 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v23, 0, v22, v85);
    v24 = v73;
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v25 = sub_22F740B90();
    __swift_project_value_buffer(v25, qword_2810B4D48);

    v26 = sub_22F740B70();
    v27 = sub_22F7415C0();

    v28 = os_log_type_enabled(v26, v27);
    v67 = v15;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = v19;
      v31 = swift_slowAlloc();
      *&v77[0] = v31;
      *v29 = 136315138;
      *(v29 + 4) = sub_22F145F20(v21, a2, v77);
      _os_log_impl(&dword_22F0FC000, v26, v27, "[MemoriesMusic] Get Playlist Songs for: '%s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v31;
      v19 = v30;
      MEMORY[0x2319033A0](v32, -1, -1);
      MEMORY[0x2319033A0](v29, -1, -1);
    }

    v33 = v24[4];
    v34 = v24[5];
    v35 = v24[6];
    v36 = v24[7];
    v37 = v24[8];
    aBlock = v24[3];
    v80 = v33;
    v81 = v34;
    v82 = v35;
    v83 = v36;
    v84 = v37;
    v77[0] = v88;
    v77[1] = v89;
    v77[2] = v90;
    v78 = v91;

    sub_22F3E35AC(v21, a2, v77, v76);

    v44 = *(&v86 + 1);
    v43 = v87;
    v45 = swift_allocObject();
    v46 = v85[1];
    *(v45 + 16) = v85[0];
    *(v45 + 32) = v46;
    *(v45 + 48) = v86;
    *(v45 + 64) = v87;
    *(v45 + 72) = sub_22F236130;
    *(v45 + 80) = v19;
    v75 = v44;

    v74 = v43;

    sub_22F741740();
    v65[1] = v19;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v47 = v68;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v47, v71);
    v71 = v24[9];
    v48 = v72;
    v49 = v70;
    (*(v72 + 16))(v70, v76, v67);
    v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v51 = (v16 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v49;
    v56 = v67;
    (*(v48 + 32))(v54 + v50, v55, v67);
    v57 = v54 + v51;
    v58 = v89;
    *v57 = v88;
    *(v57 + 16) = v58;
    *(v57 + 32) = v90;
    *(v57 + 48) = v91;
    *(v54 + v52) = v24;
    v59 = v54 + isa;
    *v59 = "MusicKitClient HTTP Request";
    *(v59 + 8) = 27;
    *(v59 + 16) = 2;
    v60 = v66;
    *(v54 + v53) = v66;
    v61 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v61 = sub_22F2360D4;
    v61[1] = v45;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_22F2360E0;
    *(v62 + 24) = v54;
    v83 = sub_22F2360E8;
    v84 = v62;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_22F2280B0;
    v82 = &block_descriptor_175;
    v63 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v88, v77);

    v64 = v60;

    dispatch_sync(v71, v63);
    _Block_release(v63);

    (*(v48 + 8))(v76, v56);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if (v60)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22F23578C()
{
  sub_22F2358B4(319, &qword_27DAB2968, sub_22F235850);
  if (v0 <= 0x3F)
  {
    sub_22F2358B4(319, &qword_27DAB2978, sub_22F1F208C);
    if (v1 <= 0x3F)
    {
      sub_22F235900();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22F235850()
{
  if (!qword_27DAB2970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1518, &qword_22F77A7E0);
    v0 = sub_22F741860();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAB2970);
    }
  }
}

void sub_22F2358B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22F235900()
{
  if (!qword_27DAB2980)
  {
    sub_22F73F690();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAB2980);
    }
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F235C74(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t objectdestroy_53Tm()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_22F73EEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 63) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 48);

  v10 = *(v0 + v6);

  v11 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

void sub_22F235DC4()
{
  v1 = *(sub_22F73EEC0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 63) & 0xFFFFFFFFFFFFFFF8;
  sub_22F227268(v0 + v2, v0 + v3, *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_22F235E8C()
{
  result = qword_27DAB2988;
  if (!qword_27DAB2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2988);
  }

  return result;
}

unint64_t sub_22F235EE0()
{
  result = qword_27DAB2990;
  if (!qword_27DAB2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2990);
  }

  return result;
}

unint64_t sub_22F235F34()
{
  result = qword_2810AA1F8;
  if (!qword_2810AA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA1F8);
  }

  return result;
}

unint64_t sub_22F235F88()
{
  result = qword_27DAB2998;
  if (!qword_27DAB2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2998);
  }

  return result;
}

unint64_t sub_22F235FDC()
{
  result = qword_2810A9D00;
  if (!qword_2810A9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D00);
  }

  return result;
}

uint64_t sub_22F236044(unint64_t *a1, void (*a2)(uint64_t))
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

void MusicKitTesseractResponse.songs()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v2 - v3;
      v6 = (v1 + 48 + 296 * v3);
      while (1)
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        memcpy(__dst, v6 - 1, sizeof(__dst));
        v8 = v6[1];
        v7 = v6[2];
        v82 = *v6;
        v83 = v8;
        v84 = v7;
        v9 = v6[6];
        v11 = v6[3];
        v10 = v6[4];
        v87 = v6[5];
        v88 = v9;
        v85 = v11;
        v86 = v10;
        v12 = v6[9];
        v14 = v6[7];
        v13 = v6[8];
        v92 = v6[10];
        v91 = v12;
        v89 = v14;
        v90 = v13;
        v15 = v6[13];
        v17 = v6[11];
        v16 = v6[12];
        v96 = v6[14];
        v95 = v15;
        v93 = v17;
        v94 = v16;
        if (sub_22F1E1664(&v82) != 1)
        {
          break;
        }

        v6 = (v6 + 296);
        ++v3;
        if (!--v5)
        {
          goto LABEL_15;
        }
      }

      sub_22F236530(__dst, &v66);
      v65[0] = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22F1469B4(0, *(v4 + 16) + 1, 1);
        v4 = v65[0];
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      v20 = v4;
      if (v19 >= v18 >> 1)
      {
        sub_22F1469B4((v18 > 1), v19 + 1, 1);
        v20 = v65[0];
      }

      ++v3;
      *(v20 + 16) = v19 + 1;
      memcpy((v20 + 296 * v19 + 32), __dst, 0x128uLL);
      v4 = v20;
    }

    while (v5 != 1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v21 = *(v4 + 16);
  if (v21)
  {
    v22 = 0;
    v63 = *(v4 + 16);
    v61 = v21 - 1;
    v23 = v4 + 288;
    v62 = MEMORY[0x277D84F90];
    v60 = v4 + 288;
    v64 = v4;
LABEL_17:
    v24 = (v23 + 296 * v22);
    v25 = v22;
    while (v25 < *(v4 + 16))
    {
      v26 = *(v24 - 32);
      v27 = *(v24 - 31);
      v28 = *(v24 - 9);
      v30 = *(v24 - 12);
      v29 = *(v24 - 11);
      v71 = *(v24 - 10);
      v72 = v28;
      v69 = v30;
      v70 = v29;
      v31 = *(v24 - 5);
      v33 = *(v24 - 8);
      v32 = *(v24 - 7);
      v75 = *(v24 - 6);
      v76 = v31;
      v73 = v33;
      v74 = v32;
      v34 = *(v24 - 1);
      v36 = *(v24 - 4);
      v35 = *(v24 - 3);
      v79 = *(v24 - 2);
      v80 = v34;
      v77 = v36;
      v78 = v35;
      v37 = *(v24 - 15);
      v38 = *(v24 - 13);
      v67 = *(v24 - 14);
      v68 = v38;
      v66 = v37;
      v39 = *v24;
      v40 = v24[1];
      v41 = v24[2];
      v42 = v24[3];
      v43 = v24[4];
      v22 = v25 + 1;
      memmove(__dst, v24 - 30, 0xF0uLL);
      if (sub_22F1E1664(__dst) != 1)
      {
        v94 = v78;
        v95 = v79;
        v96 = v80;
        v91 = v75;
        v93 = v77;
        v92 = v76;
        v86 = v70;
        v87 = v71;
        v89 = v73;
        v90 = v74;
        v88 = v72;
        v82 = v66;
        v83 = v67;
        v84 = v68;
        v85 = v69;
        sub_22F2370A8(&v66, v65);

        sub_22F18C1D8(v39, v40, v41, v42);
        sub_22F1007AC(v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_22F13F194(0, *(v62 + 2) + 1, 1, v62);
        }

        v45 = *(v62 + 2);
        v44 = *(v62 + 3);
        v46 = v26;
        if (v45 >= v44 >> 1)
        {
          v59 = sub_22F13F194((v44 > 1), v45 + 1, 1, v62);
          v46 = v26;
          v62 = v59;
        }

        *(v62 + 2) = v45 + 1;
        v47 = &v62[296 * v45];
        *(v47 + 4) = v46;
        *(v47 + 5) = v27;
        v48 = v82;
        v49 = v84;
        *(v47 + 4) = v83;
        *(v47 + 5) = v49;
        *(v47 + 3) = v48;
        v50 = v85;
        v51 = v86;
        v52 = v88;
        *(v47 + 8) = v87;
        *(v47 + 9) = v52;
        *(v47 + 6) = v50;
        *(v47 + 7) = v51;
        v53 = v89;
        v54 = v90;
        v55 = v92;
        *(v47 + 12) = v91;
        *(v47 + 13) = v55;
        *(v47 + 10) = v53;
        *(v47 + 11) = v54;
        v56 = v93;
        v57 = v94;
        v58 = v96;
        *(v47 + 16) = v95;
        *(v47 + 17) = v58;
        *(v47 + 14) = v56;
        *(v47 + 15) = v57;
        *(v47 + 36) = v39;
        *(v47 + 37) = v40;
        *(v47 + 38) = v41;
        *(v47 + 39) = v42;
        *(v47 + 40) = v43;
        v4 = v64;
        v23 = v60;
        if (v61 != v25)
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }

      v24 += 37;
      ++v25;
      v4 = v64;
      if (v63 == v22)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:
  }
}

uint64_t sub_22F23658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63617254706F74 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F23661C(uint64_t a1)
{
  v2 = sub_22F237118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F236658(uint64_t a1)
{
  v2 = sub_22F237118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitTesseractResponse.MusicKitTesseractResults.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29B0, &qword_22F77C008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F237118();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29B8, &qword_22F77C010);
    sub_22F23716C();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MusicKitTesseractResponse.results.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_22F236884(uint64_t a1)
{
  v2 = sub_22F237244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2368C0(uint64_t a1)
{
  v2 = sub_22F237244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitTesseractResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29C0, &qword_22F77C018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F237244();
  sub_22F742200();
  if (!v2)
  {
    sub_22F237298();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MusicKitTesseractSong.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicKitTesseractSong.attributes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[14];
  v35 = v1[13];
  v36 = v3;
  v4 = v1[14];
  v37 = v1[15];
  v5 = v1[8];
  v6 = v1[10];
  v31 = v1[9];
  v7 = v31;
  v32 = v6;
  v8 = v1[10];
  v9 = v1[12];
  v33 = v1[11];
  v10 = v33;
  v34 = v9;
  v11 = v1[4];
  v12 = v1[6];
  v27 = v1[5];
  v13 = v27;
  v28 = v12;
  v14 = v1[6];
  v15 = v1[8];
  v29 = v1[7];
  v16 = v29;
  v30 = v15;
  v17 = v1[2];
  v24[0] = v1[1];
  v24[1] = v17;
  v18 = v1[4];
  v20 = v1[1];
  v19 = v1[2];
  v25 = v1[3];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[15];
  a1[8] = v7;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v2;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v5;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v11;
  return sub_22F2370A8(v24, &v23);
}

uint64_t MusicKitTesseractSong.relationships.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[32];
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[35];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22F18C1D8(v2, v3, v4, v5);
}

uint64_t MusicKitTesseractSong.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = v2;
  return sub_22F1007AC(v2);
}

uint64_t sub_22F236B80(uint64_t a1)
{
  v2 = sub_22F2372EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F236BBC(uint64_t a1)
{
  v2 = sub_22F2372EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitTesseractSong.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29C8, &qword_22F77C020);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v7 = &v17 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2372EC();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = a2;
  LOBYTE(v25) = 0;
  v9 = v80;
  v21 = sub_22F741EB0();
  v22 = v10;
  v49 = 1;
  sub_22F18C3F0();
  sub_22F741EA0();
  v77 = v62;
  v78 = v63;
  v79 = v64;
  v73 = v58;
  v74 = v59;
  v75 = v60;
  v76 = v61;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72 = v57;
  v65 = v50;
  v66 = v51;
  v67 = v52;
  v68 = v53;
  v24[0] = 2;
  sub_22F18C444();
  sub_22F741EA0();
  v20 = v26;
  v18 = v25;
  v17 = *(&v27 + 1);
  v19 = v27;
  v47 = 3;
  sub_22F18C498();
  sub_22F741EA0();
  MEMORY[8](v7, v9);
  v80 = v48;
  v12 = v21;
  v11 = v22;
  *v24 = v21;
  *&v24[8] = v22;
  *&v24[208] = v77;
  *&v24[224] = v78;
  *&v24[240] = v79;
  *&v24[144] = v73;
  *&v24[160] = v74;
  *&v24[192] = v76;
  *&v24[176] = v75;
  *&v24[80] = v69;
  *&v24[96] = v70;
  *&v24[128] = v72;
  *&v24[112] = v71;
  *&v24[16] = v65;
  *&v24[32] = v66;
  *&v24[64] = v68;
  *&v24[48] = v67;
  v13 = v18;
  v14 = v19;
  *&v24[256] = v18;
  *&v24[264] = v20;
  v15 = v17;
  *&v24[272] = v19;
  *&v24[280] = v17;
  *&v24[288] = v48;
  memcpy(v23, v24, 0x128uLL);
  sub_22F236530(v24, &v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v25 = v12;
  v26 = v11;
  v39 = v77;
  v40 = v78;
  v41 = v79;
  v35 = v73;
  v36 = v74;
  v37 = v75;
  v38 = v76;
  v31 = v69;
  v32 = v70;
  v33 = v71;
  v34 = v72;
  v27 = v65;
  v28 = v66;
  v29 = v67;
  v30 = v68;
  v42 = v13;
  v43 = v20;
  v44 = v14;
  v45 = v15;
  v46 = v80;
  return sub_22F2373A8(&v25);
}

uint64_t sub_22F2370A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B88, &qword_22F77C000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F237118()
{
  result = qword_2810AA230;
  if (!qword_2810AA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA230);
  }

  return result;
}

unint64_t sub_22F23716C()
{
  result = qword_2810A9318;
  if (!qword_2810A9318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB29B8, &qword_22F77C010);
    sub_22F2371F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9318);
  }

  return result;
}

unint64_t sub_22F2371F0()
{
  result = qword_2810AA758;
  if (!qword_2810AA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA758);
  }

  return result;
}

unint64_t sub_22F237244()
{
  result = qword_2810AA210;
  if (!qword_2810AA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA210);
  }

  return result;
}

unint64_t sub_22F237298()
{
  result = qword_2810AA218;
  if (!qword_2810AA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA218);
  }

  return result;
}

unint64_t sub_22F2372EC()
{
  result = qword_27DAB29D0;
  if (!qword_27DAB29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29D0);
  }

  return result;
}

uint64_t sub_22F237340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B88, &qword_22F77C000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F23743C()
{
  result = qword_27DAB29D8;
  if (!qword_27DAB29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29D8);
  }

  return result;
}

unint64_t sub_22F237494()
{
  result = qword_27DAB29E0;
  if (!qword_27DAB29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29E0);
  }

  return result;
}

unint64_t sub_22F2374EC()
{
  result = qword_27DAB29E8;
  if (!qword_27DAB29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29E8);
  }

  return result;
}

unint64_t sub_22F237544()
{
  result = qword_27DAB29F0;
  if (!qword_27DAB29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29F0);
  }

  return result;
}

unint64_t sub_22F23759C()
{
  result = qword_27DAB29F8;
  if (!qword_27DAB29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29F8);
  }

  return result;
}

unint64_t sub_22F2375F4()
{
  result = qword_2810AA200;
  if (!qword_2810AA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA200);
  }

  return result;
}

unint64_t sub_22F23764C()
{
  result = qword_2810AA208;
  if (!qword_2810AA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA208);
  }

  return result;
}

unint64_t sub_22F2376A4()
{
  result = qword_2810AA220;
  if (!qword_2810AA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA220);
  }

  return result;
}

unint64_t sub_22F2376FC()
{
  result = qword_2810AA228;
  if (!qword_2810AA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA228);
  }

  return result;
}

void *sub_22F237750(uint64_t a1)
{
  v13 = a1;
  v12 = sub_22F741640();
  v2 = *(v12 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v12);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22F741630();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22F740C00();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  swift_defaultActor_initialize();
  sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  sub_22F740BE0();
  v14 = MEMORY[0x277D84F90];
  sub_22F23EC54(&unk_2810A90F0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F23EC9C();
  sub_22F741970();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v12);
  v1[16] = sub_22F741660();
  v1[17] = 0;
  v1[14] = 0x407F400000000000;
  v1[15] = v13;
  return v1;
}

uint64_t sub_22F2379C0()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](sub_22F237A08, v0, 0);
}

uint64_t sub_22F237A08()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
  v5 = sub_22F23EC54(&qword_27DAB2A00, v4, type metadata accessor for PublicEventGeoQuery);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A68, &unk_22F77C6D8);
  v8 = *(MEMORY[0x277D859B8] + 4);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_22F237B64;

  return MEMORY[0x282200740](v0 + 2, v3, v7, v1, v5, &unk_22F77C6D0, v6, v3);
}

uint64_t sub_22F237B64()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_22F237CA8;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_22F237C8C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F237CA8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_22F237D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A70, &qword_22F77C6E8);
  v3[17] = v6;
  v7 = *(v6 - 8);
  v3[18] = v7;
  v8 = *(v7 + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = *(type metadata accessor for PublicEventTimeAndLocation() - 8);
  v3[20] = v9;
  v10 = *(v9 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F237E7C, a3, 0);
}

uint64_t sub_22F237E7C()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 120);
  v47 = v1;
  v48 = *(v2 + 16);
  if (*(v1 + 136) < v48)
  {
    v45 = *(v0 + 160);
    v46 = *(v1 + 120);
    do
    {
      v4 = [objc_opt_self() sharedService];
      if (!v4)
      {
LABEL_28:
        __break(1u);
        return MEMORY[0x2822004E8](v4, v5, v6, v7, v8);
      }

      v9 = v4;
      v10 = [v4 maxParametersCountForSpatialEventLookup];

      v11 = *(v47 + 136);
      if (v48 < v11)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v47 + 136);
      v13 = MEMORY[0x277D84F90];
      do
      {
        if (v48 == v12)
        {
          break;
        }

        if (v11 < 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v12 >= *(v2 + 16))
        {
          goto LABEL_26;
        }

        v14 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v15 = *(v45 + 72);
        sub_22F23E4B8(v2 + v14 + v15 * v12, *(v0 + 168), type metadata accessor for PublicEventTimeAndLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_22F13ED90(0, v13[2] + 1, 1, v13);
        }

        v17 = v13[2];
        v16 = v13[3];
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          v13 = sub_22F13ED90(v16 > 1, v17 + 1, 1, v13);
        }

        v19 = *(v0 + 168);
        v13[2] = v18;
        v4 = sub_22F23E520(v19, v13 + v14 + v17 * v15, type metadata accessor for PublicEventTimeAndLocation);
        v2 = v46;
        *(v47 + 136) = ++v12;
      }

      while (v18 < v10);
      v21 = *(v0 + 120);
      v20 = *(v0 + 128);
      v22 = *(v0 + 112);
      v23 = sub_22F23E588(v13, 500.0);

      v24 = sub_22F741320();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v20, 1, 1, v24);
      v26 = swift_allocObject();
      v26[2] = 0;
      v27 = v26 + 2;
      v26[3] = 0;
      v26[4] = v22;
      v26[5] = v23;
      sub_22F13BA9C(v20, v21, &qword_27DAB07C0, &qword_22F77A4F0);
      LODWORD(v20) = (*(v25 + 48))(v21, 1, v24);

      v28 = *(v0 + 120);
      if (v20 == 1)
      {
        sub_22F120ADC(*(v0 + 120), &qword_27DAB07C0, &qword_22F77A4F0);
        if (!*v27)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_22F741310();
        (*(v25 + 8))(v28, v24);
        if (!*v27)
        {
LABEL_19:
          v30 = 0;
          v32 = 0;
          goto LABEL_20;
        }
      }

      v29 = v26[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = sub_22F7412D0();
      v32 = v31;
      swift_unknownObjectRelease();
LABEL_20:
      v33 = **(v0 + 104);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
      v34 = v32 | v30;
      if (v32 | v30)
      {
        v34 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v30;
        *(v0 + 40) = v32;
      }

      v3 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v34;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_22F120ADC(v3, &qword_27DAB07C0, &qword_22F77A4F0);
    }

    while (*(v47 + 136) < v48);
  }

  v35 = *(v0 + 152);
  v36 = **(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  sub_22F741330();
  v38 = sub_22F23EC54(&qword_27DAB2A00, v37, type metadata accessor for PublicEventGeoQuery);
  v39 = MEMORY[0x277D84F98];
  *(v0 + 176) = v38;
  *(v0 + 184) = v39;
  v40 = *(v0 + 112);
  v41 = *(MEMORY[0x277D85828] + 4);
  v42 = swift_task_alloc();
  *(v0 + 192) = v42;
  *v42 = v0;
  v42[1] = sub_22F2383B4;
  v43 = *(v0 + 152);
  v7 = *(v0 + 136);
  v4 = (v0 + 72);
  v8 = v0 + 80;
  v5 = v40;
  v6 = v38;

  return MEMORY[0x2822004E8](v4, v5, v6, v7, v8);
}

uint64_t sub_22F2383B4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 112);

    v6 = sub_22F238814;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = sub_22F2384D8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22F2384D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5 + 9;
  v7 = v5[9];
  if (v7)
  {
    v41 = *(v7 + 16);
    if (v41)
    {
      v8 = 0;
      v9 = v5[23];
      v10 = (v7 + 48);
      while (1)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
        }

        v14 = *(v10 - 2);
        v13 = *(v10 - 1);
        v15 = *v10;
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[2] = v9;
        a1 = sub_22F1229E8(v14, v13);
        v17 = v9[2];
        v18 = (a2 & 1) == 0;
        v19 = __OFADD__(v17, v18);
        v20 = v17 + v18;
        if (v19)
        {
          goto LABEL_29;
        }

        v21 = a2;
        if (v9[3] < v20)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v27 = a1;
        sub_22F135FC0();
        a1 = v27;
        v9 = v6[2];
        if (v21)
        {
LABEL_4:
          v11 = v9[7];
          v12 = *(v11 + 8 * a1);
          *(v11 + 8 * a1) = v15;

          goto LABEL_5;
        }

LABEL_13:
        v9[(a1 >> 6) + 8] |= 1 << a1;
        v24 = (v9[6] + 16 * a1);
        *v24 = v14;
        v24[1] = v13;
        *(v9[7] + 8 * a1) = v15;

        v25 = v9[2];
        v19 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v19)
        {
          goto LABEL_30;
        }

        v9[2] = v26;
LABEL_5:
        ++v8;
        v10 += 3;
        if (v41 == v8)
        {

          v5 = v40;
          v40[23] = v9;
          goto LABEL_22;
        }
      }

      sub_22F1289EC(v20, isUniquelyReferenced_nonNull_native);
      v22 = v6[2];
      a1 = sub_22F1229E8(v14, v13);
      if ((v21 & 1) != (v23 & 1))
      {

        return sub_22F7420C0();
      }

LABEL_12:
      v9 = v6[2];
      if (v21)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

LABEL_22:
    v35 = v5[22];
    v36 = v5[14];
    v37 = *(MEMORY[0x277D85828] + 4);
    v38 = swift_task_alloc();
    v5[24] = v38;
    *v38 = v5;
    v38[1] = sub_22F2383B4;
    v39 = v5[19];
    a4 = v5[17];
    a5 = v5 + 10;
    a1 = v6;
    a2 = v36;
    a3 = v35;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  else
  {
    v28 = v5[23];
    v29 = v5[21];
    v30 = v5[16];
    v31 = v5[15];
    v32 = v5[12];
    (*(v5[18] + 8))(v5[19], v5[17]);
    *v32 = v28;

    v33 = v5[1];

    return v33();
  }
}

uint64_t sub_22F238814()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F2388C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_22F238964;

  return sub_22F238AD4(a5);
}

uint64_t sub_22F238964(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22F238AB0, 0, 0);
  }
}

uint64_t sub_22F238AD4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_22F238B1C, v1, 0);
}

uint64_t sub_22F238B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[3];
  v6 = sub_22F23EC54(&qword_27DAB2A00, a2, type metadata accessor for PublicEventGeoQuery);
  v7 = swift_task_alloc();
  v2[6] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v2[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
  *v9 = v2;
  v9[1] = sub_22F238C6C;

  return MEMORY[0x2822008A0](v2 + 2, v3, v6, 0xD000000000000013, 0x800000022F7928B0, sub_22F23E1A8, v7, v10);
}

uint64_t sub_22F238C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_22F238D94;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_22F23ED78;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F238D94()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

id sub_22F238DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v27 = &v23 - v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    v23 = v9;
    v24 = a1;
    v25 = v7;
    v26 = a3;
    v12 = sub_22F120B48(v11, 0);
    v13 = sub_22F120B44(aBlock, v12 + 4, v11, a2);

    result = sub_22F0FF590();
    if (v13 != v11)
    {
      __break(1u);
      goto LABEL_9;
    }

    v7 = v25;
    a3 = v26;
    v9 = v23;
    a1 = v24;
  }

  result = [objc_opt_self() sharedService];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = result;
  sub_22F120634(0, &qword_27DAB2A18, 0x277D0ED58);
  v16 = sub_22F741160();

  v17 = [v15 ticketForSpatialEventLookupParameters:v16 traits:0];

  if (v17)
  {
    v18 = v27;
    (*(v8 + 16))(v27, a1, v7);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v8 + 32))(v21 + v19, v18, v7);
    *(v21 + v20) = a2;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
    aBlock[4] = sub_22F23E208;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F16AC08;
    aBlock[3] = &block_descriptor_11;
    v22 = _Block_copy(aBlock);

    [v17 submitWithHandler:v22 queue:*(a3 + 128)];
    _Block_release(v22);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22F23E1B4();
    aBlock[0] = swift_allocError();
    return sub_22F7412E0();
  }
}

uint64_t sub_22F23913C(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v22 = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    sub_22F120634(0, &qword_27DAB2A28, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      if ([v21 code] != -8)
      {
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
        return sub_22F7412E0();
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = )
  {
    v13 = i;
LABEL_13:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a4 + 56) + 8 * v15);

    v20 = v19;
    sub_22F239348(v17, v18, v20, a1, &v22);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
      return sub_22F7412F0();
    }

    v9 = *(a4 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F239348(uint64_t result, uint64_t a2, void *a3, id a4, uint64_t *a5)
{
  if (a4)
  {
    v8 = result;
    result = [a4 poiEventsForSpatialLookupParameters_];
    if (result)
    {
      v9 = result;
      v23 = a5;
      sub_22F120634(0, &qword_27DAB2A30, 0x277D0EC30);
      v10 = sub_22F741180();

      if (v10 >> 62)
      {
        goto LABEL_22;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        v21 = v8;
        v22 = a2;
        v25 = MEMORY[0x277D84FA0];
        while (1)
        {
          v12 = 0;
          v8 = v10 & 0xC000000000000001;
          a2 = v10 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v8)
            {
              v13 = MEMORY[0x2319016F0](v12, v10);
            }

            else
            {
              if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v13 = *(v10 + 8 * v12 + 32);
            }

            v14 = v13;
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            v24 = v13;
            sub_22F2395C0(&v25, &v24, a3);

            ++v12;
            if (v15 == v11)
            {
              v16 = v25;
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          if (sub_22F741A00() <= 0)
          {
            break;
          }

          v21 = v8;
          v22 = a2;
          v16 = MEMORY[0x277D84FA0];
          v25 = MEMORY[0x277D84FA0];
          v11 = sub_22F741A00();
          if (!v11)
          {
LABEL_14:

            v17 = *v23;

            result = swift_isUniquelyReferenced_nonNull_native();
            *v23 = v17;
            if ((result & 1) == 0)
            {
              result = sub_22F13F3DC(0, *(v17 + 16) + 1, 1, v17);
              v17 = result;
              *v23 = result;
            }

            v19 = *(v17 + 16);
            v18 = *(v17 + 24);
            if (v19 >= v18 >> 1)
            {
              result = sub_22F13F3DC((v18 > 1), v19 + 1, 1, v17);
              v17 = result;
              *v23 = result;
            }

            *(v17 + 16) = v19 + 1;
            v20 = (v17 + 24 * v19);
            v20[4] = v21;
            v20[5] = v22;
            v20[6] = v16;
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22F2395C0(uint64_t a1, void **a2, void *a3)
{
  v5 = type metadata accessor for PublicEvent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = sub_22F239738(*a2, a3);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v16 = *(v6 + 72);
    do
    {
      sub_22F23E4B8(v15, v10, type metadata accessor for PublicEvent);
      sub_22F10D2E4(v12, v10);
      sub_22F23EBF4(v12, type metadata accessor for PublicEvent);
      v15 += v16;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_22F239738(void *a1, void *a2)
{
  v473 = sub_22F73F7D0();
  v504 = *(v473 - 8);
  v4 = *(v504 + 64);
  MEMORY[0x28223BE20](v473);
  v472 = &v447 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v471 = sub_22F73F9B0();
  v503 = *(v471 - 8);
  v6 = *(v503 + 64);
  MEMORY[0x28223BE20](v471);
  v470 = &v447 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v469 = &v447 - v10;
  v468 = sub_22F73F270();
  v502 = *(v468 - 8);
  v11 = *(v502 + 64);
  MEMORY[0x28223BE20](v468);
  v467 = &v447 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v457 = &v447 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v465 = &v447 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v462 = &v447 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v447 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v480 = &v447 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v508 = &v447 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v500 = &v447 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v523 = &v447 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v518 = &v447 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v524 = &v447 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v484 = &v447 - v37;
  MEMORY[0x28223BE20](v36);
  v553 = &v447 - v38;
  v522 = sub_22F73F690();
  v496 = *(v522 - 8);
  v39 = *(v496 + 64);
  v40 = MEMORY[0x28223BE20](v522);
  v455 = &v447 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v461 = &v447 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v456 = &v447 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v481 = &v447 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v488 = &v447 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v487 = &v447 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v499 = &v447 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v494 = &v447 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v527 = &v447 - v57;
  MEMORY[0x28223BE20](v56);
  v529 = &v447 - v58;
  v549 = sub_22F73FA10();
  v510 = *(v549 - 8);
  v59 = *(v510 + 64);
  v60 = MEMORY[0x28223BE20](v549);
  v477 = &v447 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v520 = &v447 - v63;
  MEMORY[0x28223BE20](v62);
  v542 = &v447 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A38, &qword_22F77C6A8);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v65 - 8);
  v476 = &v447 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v517 = &v447 - v69;
  v540 = type metadata accessor for PublicEvent();
  v516 = *(v540 - 8);
  v70 = *(v516 + 64);
  v71 = MEMORY[0x28223BE20](v540);
  v475 = &v447 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v474 = &v447 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v532 = &v447 - v76;
  MEMORY[0x28223BE20](v75);
  v531 = &v447 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v79 = *(*(v78 - 8) + 64);
  v80 = MEMORY[0x28223BE20](v78 - 8);
  v544 = &v447 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v478 = &v447 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v466 = &v447 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v533 = &v447 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v552 = &v447 - v89;
  MEMORY[0x28223BE20](v88);
  v91 = &v447 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v93 = *(*(v92 - 8) + 64);
  v94 = MEMORY[0x28223BE20](v92 - 8);
  v464 = &v447 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x28223BE20](v94);
  v515 = &v447 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v100 = &v447 - v99;
  MEMORY[0x28223BE20](v98);
  v102 = &v447 - v101;
  v546 = sub_22F73F090();
  v483 = *(v546 - 8);
  v103 = *(v483 + 64);
  v104 = MEMORY[0x28223BE20](v546);
  v463 = &v447 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = MEMORY[0x28223BE20](v104);
  v482 = &v447 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v506 = &v447 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v554 = &v447 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v501 = &v447 - v113;
  MEMORY[0x28223BE20](v112);
  v495 = &v447 - v114;
  [a1 centerCoordinate];
  v116 = v115;
  [a1 centerCoordinate];
  v118 = v117;
  v119 = [a1 categories];
  if (!v119)
  {
    return MEMORY[0x277D84F90];
  }

  v120 = v119;
  sub_22F120634(0, &qword_27DAB2A40, 0x277D0EC38);
  v121 = sub_22F741180();

  v545 = a1;
  v122 = [a1 hours];
  if (!v122)
  {

    return MEMORY[0x277D84F90];
  }

  v123 = v122;
  v519 = v121;
  sub_22F120634(0, &qword_27DAB2A48, 0x277D0EC40);
  v493 = sub_22F741180();

  v124 = [a2 dateInterval];
  v507 = 0;
  if (v124)
  {
    v125 = v124;
    sub_22F73F020();

    v126 = *(v483 + 56);
    v127 = v100;
    v128 = 0;
  }

  else
  {
    v126 = *(v483 + 56);
    v127 = v100;
    v128 = 1;
  }

  v514 = v126;
  v126(v127, v128, 1, v546);
  v129 = [v545 timeZone];
  inited = v552;
  if (v129)
  {
    v131 = v129;
    sub_22F73FA00();

    v132 = 0;
  }

  else
  {
    v132 = 1;
  }

  v133 = *(v510 + 56);
  v535 = v510 + 56;
  v534 = v133;
  v133(v91, v132, 1, v549);
  sub_22F23D8F0(v100, v91, v102);
  sub_22F120ADC(v91, &qword_27DAB24E0, &unk_22F77C6B0);
  sub_22F120ADC(v100, &qword_27DAB40E0, &unk_22F779200);
  v134 = v483;
  v135 = *(v483 + 48);
  v136 = v546;
  v513 = v483 + 48;
  v512 = v135;
  if (v135(v102, 1, v546) == 1)
  {

    sub_22F120ADC(v102, &qword_27DAB40E0, &unk_22F779200);
    return MEMORY[0x277D84F90];
  }

  v138 = *(v134 + 32);
  v498 = v134 + 32;
  v497 = v138;
  v138(v495, v102, v136);
  v511 = *(sub_22F15CEA0() + 16);

  if (v519 >> 62)
  {
    goto LABEL_278;
  }

  v139 = *((v519 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v140 = v522;
    v141 = v544;
    v142 = v545;
    v539 = v23;
    if (!v139)
    {

      v458 = 0;
      v205 = v493;
      v492 = MEMORY[0x277D84F90];
      if (v493 < 0)
      {
        v555 = MEMORY[0x277D84F90];
        goto LABEL_280;
      }

      v555 = MEMORY[0x277D84F90];
      if ((v493 & 0x4000000000000000) != 0)
      {
        goto LABEL_280;
      }

LABEL_67:
      v206 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v206)
      {
        goto LABEL_281;
      }

      goto LABEL_68;
    }

    v458 = 0;
    v143 = 0;
    v538 = *MEMORY[0x277D0EA40];
    v537 = *MEMORY[0x277D0EA58];
    v536 = *MEMORY[0x277D0EA50];
    v530 = *MEMORY[0x277D0EA48];
    v547 = *MEMORY[0x277D0EA38];
    v528 = *MEMORY[0x277D0EA20];
    v541 = (v519 & 0xC000000000000001);
    v509 = (v519 & 0xFFFFFFFFFFFFFF8);
    v505 = v519 + 32;
    v526 = *MEMORY[0x277D0EA08];
    v543 = *MEMORY[0x277D0EA00];
    v525 = xmmword_22F771AD0;
    v492 = MEMORY[0x277D84F90];
    v555 = MEMORY[0x277D84F90];
    v521 = v139;
    while (1)
    {
      while (1)
      {
        if (v541)
        {
          v144 = MEMORY[0x2319016F0](v143, v519);
        }

        else
        {
          if (v143 >= *(v509 + 2))
          {
            goto LABEL_272;
          }

          v144 = *(v505 + 8 * v143);
        }

        v556 = v144;
        v145 = __OFADD__(v143, 1);
        v146 = (v143 + 1);
        if (v145)
        {
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        v550 = v146;
        v147 = v556;
        v148 = [v556 localizedNames];
        v149 = sub_22F741180();
        v551 = v149;

        v548 = *(v149 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14C0, &qword_22F77C6C0);
        inited = swift_initStackObject();
        *(inited + 16) = v525;
        v150 = v538;
        *(inited + 32) = v538;
        v151 = v537;
        v152 = v536;
        *(inited + 40) = v537;
        *(inited + 48) = v152;
        v153 = v530;
        v142 = v547;
        *(inited + 56) = v530;
        *(inited + 64) = v142;
        v154 = v528;
        v155 = v526;
        *(inited + 72) = v528;
        *(inited + 80) = v155;
        v156 = v543;
        *(inited + 88) = v543;
        v157 = v150;
        v158 = v151;
        v159 = v152;
        v160 = v153;
        v161 = v142;
        v162 = v154;
        v163 = v155;
        v164 = v156;
        v165 = [v147 category];
        v557 = v165;
        MEMORY[0x28223BE20](v165);
        v445 = &v557;
        v166 = v507;
        v23 = sub_22F1C10C8(sub_22F23E374, &v443, inited);
        v507 = v166;
        v167 = v551;
        swift_setDeallocating();
        type metadata accessor for GEOSpatialEventLookupCategory(0);
        swift_arrayDestroy();

        v168 = v167[2];
        if (v168)
        {
          if (((v511 != 0) & v23) == 1 && v548)
          {
            break;
          }
        }

        v142 = v545;
        v23 = v539;
        v141 = v544;
        inited = v552;
        v143 = v550;
        v140 = v522;
        if (v550 == v521)
        {
          goto LABEL_61;
        }
      }

      v170 = v167[4];
      v169 = v167[5];
      v141 = v544;
      if (v548 == 1)
      {
        v171 = v167[5];

        v167 = MEMORY[0x277D84F90];
        v172 = v492;
      }

      else
      {
        v172 = v492;
        if (v168 < v548)
        {
          goto LABEL_277;
        }

        if (v168 == (v548 - 1))
        {
          v173 = v167[5];
        }

        else
        {
          sub_22F10AB90(v167, (v167 + 4), 1, (2 * v548) | 1);
          v204 = v203;

          v167 = v204;
        }
      }

      v174 = [v556 category];
      v175 = sub_22F740E20();
      inited = v176;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = sub_22F13F64C(0, *(v172 + 2) + 1, 1, v172);
      }

      v178 = *(v172 + 2);
      v177 = *(v172 + 3);
      v23 = v178 + 1;
      if (v178 >= v177 >> 1)
      {
        v172 = sub_22F13F64C((v177 > 1), v178 + 1, 1, v172);
      }

      *(v172 + 2) = v23;
      v492 = v172;
      v179 = &v172[40 * v178];
      *(v179 + 4) = 0;
      *(v179 + 5) = v175;
      *(v179 + 6) = inited;
      *(v179 + 7) = v170;
      *(v179 + 8) = v169;
      v180 = v167;
      v181 = v167[2];
      if (v181)
      {
        break;
      }

      v23 = v539;
LABEL_45:

      v191 = [v556 category];
      v192 = sub_22F740E20();
      v194 = v193;
      if (v192 == sub_22F740E20() && v194 == v195)
      {

        v142 = v545;
        v140 = v522;
LABEL_55:
        v458 = 1;
        v143 = v550;
        inited = v552;
        if (v550 == v521)
        {
          goto LABEL_269;
        }
      }

      else
      {
        v196 = sub_22F742040();

        v142 = v545;
        v140 = v522;
        if (v196)
        {

          goto LABEL_55;
        }

        v197 = [v556 category];
        v198 = sub_22F740E20();
        v200 = v199;
        if (v198 == sub_22F740E20() && v200 == v201)
        {

          goto LABEL_58;
        }

        v202 = sub_22F742040();

        if (v202)
        {
LABEL_58:
          v458 = 1;
          v143 = v550;
          inited = v552;
          if (v550 == v521)
          {
            goto LABEL_269;
          }
        }

        else
        {
          inited = v552;
          v143 = v550;
          if (v550 == v521)
          {
LABEL_61:

            goto LABEL_62;
          }
        }
      }
    }

    v182 = 0;
    v140 = v167 + 5;
    while (v182 < v180[2])
    {
      v142 = *(v140 - 1);
      v183 = *v140;

      v184 = [v556 category];
      v185 = sub_22F740E20();
      inited = v186;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v555 = sub_22F13F64C(0, *(v555 + 2) + 1, 1, v555);
      }

      v188 = *(v555 + 2);
      v187 = *(v555 + 3);
      if (v188 >= v187 >> 1)
      {
        v555 = sub_22F13F64C((v187 > 1), v188 + 1, 1, v555);
      }

      ++v182;
      v189 = v555;
      *(v555 + 2) = v188 + 1;
      v190 = &v189[40 * v188];
      *(v190 + 4) = v182;
      *(v190 + 5) = v185;
      *(v190 + 6) = inited;
      *(v190 + 7) = v142;
      *(v190 + 8) = v183;

      v140 += 2;
      v23 = v539;
      v141 = v544;
      v180 = v167;
      if (v181 == v182)
      {
        goto LABEL_45;
      }
    }

LABEL_267:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_269:

      v458 = 1;
LABEL_62:
      v205 = v493;
      if ((v493 & 0x8000000000000000) == 0 && (v493 & 0x4000000000000000) == 0)
      {
        goto LABEL_67;
      }

LABEL_280:
      v206 = sub_22F741A00();
      v205 = v493;
      if (!v206)
      {
LABEL_281:
        v547 = MEMORY[0x277D84F90];
LABEL_282:

        v431 = v547;
        if (v547[2] < 2uLL)
        {
          (*(v483 + 8))(v495, v546);
        }

        else
        {
          v432 = sub_22F7415F0();
          sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
          v433 = sub_22F741840();
          v434 = os_log_type_enabled(v433, v432);
          v435 = v483;
          if (v434)
          {
            v436 = swift_slowAlloc();
            v437 = swift_slowAlloc();
            v557 = v437;
            *v436 = 136315138;

            v438 = MEMORY[0x231900D40](v547, v540);
            v440 = v439;

            v441 = sub_22F145F20(v438, v440, &v557);

            *(v436 + 4) = v441;
            _os_log_impl(&dword_22F0FC000, v433, v432, "Created more than one public event for GeoEvent: %s", v436, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v437);
            v442 = v437;
            v431 = v547;
            MEMORY[0x2319033A0](v442, -1, -1);
            MEMORY[0x2319033A0](v436, -1, -1);
          }

          (*(v435 + 8))(v495, v546);
        }

        return v431;
      }

LABEL_68:
      v207 = 0;
      v486 = v205 & 0xC000000000000001;
      v460 = v205 & 0xFFFFFFFFFFFFFF8;
      v459 = v205 + 32;
      v541 = (v483 + 8);
      v538 = (v510 + 32);
      v537 = v510 + 48;
      v208 = v496;
      v209 = (v496 + 56);
      v551 = (v496 + 8);
      v453 = (v503 + 56);
      v452 = *MEMORY[0x277CC9830];
      v451 = (v504 + 104);
      v450 = (v504 + 8);
      v449 = (v503 + 8);
      v448 = (v502 + 8);
      v521 = (v496 + 48);
      v502 = v496 + 16;
      v496 += 32;
      v511 = v483 + 56;
      v479 = (v483 + 16);
      v510 += 8;
      v526 = (v516 + 56);
      *&v525 = v516 + 48;
      v547 = MEMORY[0x277D84F90];
      v485 = v206;
      v548 = v208 + 56;
LABEL_72:
      if (v486)
      {
        v210 = v207;
        v211 = MEMORY[0x2319016F0](v207, v205);
      }

      else
      {
        if (v207 >= *(v460 + 16))
        {
          goto LABEL_273;
        }

        v210 = v207;
        v211 = *(v459 + 8 * v207);
      }

      v212 = v211;
      v145 = __OFADD__(v210, 1);
      v213 = v210 + 1;
      if (v145)
      {
        goto LABEL_271;
      }

      v503 = v213;
      v214 = [v211 dateInterval];
      v215 = v501;
      sub_22F73F020();

      if ((sub_22F73F000() & 1) == 0)
      {
        (*v541)(v215, v546);
LABEL_70:

        goto LABEL_71;
      }

      v216 = [v212 hours];
      v536 = v537 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v543 = v212;
      if (!v216)
      {
        goto LABEL_182;
      }

      v217 = v216;
      sub_22F120634(0, &qword_27DAB2A60, 0x277D0EB60);
      v218 = sub_22F741180();

      v219 = v218;
      if (v218 >> 62)
      {
        if (sub_22F741A00() < 1)
        {
          goto LABEL_181;
        }

        v333 = sub_22F741A00();
        v219 = v218;
        v530 = v333;
        if (!v333)
        {

          (*v541)(v501, v546);
LABEL_177:
          v23 = v539;
          v141 = v544;
          goto LABEL_71;
        }

LABEL_81:
        v220 = 0;
        v528 = (v219 & 0xC000000000000001);
        v505 = v219 & 0xFFFFFFFFFFFFFF8;
        v519 = v219;
        v504 = v219 + 32;
        v23 = v517;
        v221 = v527;
LABEL_84:
        if (v528)
        {
          v556 = MEMORY[0x2319016F0](v220, v519);
          v222 = v549;
          v141 = v533;
          v145 = __OFADD__(v220, 1);
          v223 = (v220 + 1);
          if (v145)
          {
            goto LABEL_266;
          }
        }

        else
        {
          v222 = v549;
          v141 = v533;
          if (v220 >= *(v505 + 16))
          {
            continue;
          }

          v556 = *(v504 + 8 * v220);
          v145 = __OFADD__(v220, 1);
          v223 = (v220 + 1);
          if (v145)
          {
LABEL_266:
            __break(1u);
            goto LABEL_267;
          }
        }

        v550 = v223;
        v224 = [v212 dateInterval];
        sub_22F73F020();

        v225 = v556;
        [v556 startTime];
        v227 = v226;
        [v225 endTime];
        v229 = v228;
        v230 = [v142 timeZone];
        if (v230)
        {
          v231 = v520;
          v232 = v230;
          sub_22F73FA00();

          v233 = *v538;
          v234 = v231;
          inited = v552;
          (*v538)(v141, v234, v222);
          v235 = v534;
          v534(v141, 0, 1, v222);
          v233(inited, v141, v222);
          v235(inited, 0, 1, v222);
          v212 = v543;
          v209 = v548;
          v236 = *v537;
        }

        else
        {
          v534(v141, 1, 1, v222);
          sub_22F73F9D0();
          v236 = *v537;
          if ((*v537)(v141, 1, v222) != 1)
          {
            sub_22F120ADC(v141, &qword_27DAB24E0, &unk_22F77C6B0);
          }
        }

        v237 = v551;
        if (v236(inited, 1, v222) == 1)
        {
          v238 = *v541;
          (*v541)(v554, v546);
          sub_22F120ADC(inited, &qword_27DAB24E0, &unk_22F77C6B0);
          v239 = 1;
          v142 = v545;
          goto LABEL_169;
        }

        (*v538)(v542, inited, v222);
        v240 = v529;
        sub_22F73F060();
        v241 = *v209;
        (*v209)(v553, 1, 1, v140);
        if (v229 < v227 && (sub_22F73F030(), v242 = sub_22F73F660(), v243 = *v237, (*v237)(v221, v140), v242 == -1))
        {
          sub_22F73F550();
          v300 = sub_22F73F660();
          (v243)(v221, v140);
          if (v300 == 1)
          {
            sub_22F73F570();
            v301 = sub_22F73F660();
            (v243)(v221, v140);
            if (v301 == 1)
            {
              v302 = v471;
              (*v453)(v469, 1, 1, v471);
              v534(v466, 1, 1, v549);
              v446 = 1;
              v445 = 0;
              v444 = 1;
              v443 = 0;
              v303 = v467;
              sub_22F73F250();
              v304 = v472;
              v305 = v473;
              (*v451)(v472, v452, v473);
              v306 = v470;
              sub_22F73F7E0();
              (*v450)(v304, v305);
              v307 = v484;
              sub_22F73F930();
              v308 = v306;
              v248 = v524;
              (*v449)(v308, v302);
              v309 = v303;
              v240 = v529;
              (*v448)(v309, v468);
              v247 = v307;
              goto LABEL_100;
            }
          }

          v244 = v484;
          v245 = v484;
          v246 = 1;
        }

        else
        {
          v244 = v508;
          sub_22F73F030();
          v245 = v244;
          v246 = 0;
        }

        v241(v245, v246, 1, v140);
        v247 = v244;
        v248 = v524;
LABEL_100:
        sub_22F23E394(v247, v553);
        sub_22F73F550();
        v249 = sub_22F73F660();
        v250 = *v237;
        (*v237)(v221, v140);
        if (v249 == 1 && (sub_22F73F570(), v251 = sub_22F73F660(), (v250)(v221, v140), v251 == 1))
        {
          sub_22F73F9E0();
          sub_22F73F5A0();
          v252 = 0;
        }

        else
        {
          v252 = 1;
        }

        v253 = 1;
        v241(v248, v252, 1, v140);
        v254 = *v521;
        if (!(*v521)(v553, 1, v140))
        {
          v255 = v494;
          (*v502)(v494, v553, v140);
          v256 = v527;
          sub_22F73F550();
          v257 = sub_22F73F660();
          (v250)(v256, v140);
          if (v257 == 1 && (sub_22F73F570(), v258 = sub_22F73F660(), (v250)(v256, v140), v258 == 1))
          {
            sub_22F73F9E0();
            sub_22F73F5A0();
            v253 = 0;
          }

          else
          {
            v253 = 1;
          }

          v240 = v529;
          v140 = v522;
          (v250)(v255, v522);
          v248 = v524;
        }

        v259 = v518;
        v241(v518, v253, 1, v140);
        v260 = v523;
        sub_22F13BA9C(v248, v523, &qword_27DAB0920, &qword_22F770B20);
        if (v254(v260, 1, v140) != 1)
        {
          v509 = v250;
          v261 = *v496;
          v262 = v499;
          (*v496)(v499, v523, v140);
          v263 = v500;
          sub_22F13BA9C(v259, v500, &qword_27DAB0920, &qword_22F770B20);
          if (v254(v263, 1, v140) != 1)
          {
            v266 = v263;
            v267 = v487;
            v261(v487, v266, v140);
            v268 = *v502;
            (*v502)(v527, v262, v140);
            v268(v488, v267, v140);
            v265 = v515;
            v142 = v545;
            v269 = v529;
            sub_22F73F040();
            v270 = v509;
            (v509)(v267, v140);
            (v270)(v262, v140);
            sub_22F120ADC(v259, &qword_27DAB0920, &qword_22F770B20);
            sub_22F120ADC(v524, &qword_27DAB0920, &qword_22F770B20);
            (v270)(v269, v140);
            v264 = 0;
            goto LABEL_115;
          }

          v250 = v509;
          (v509)(v262, v140);
          v260 = v263;
          v248 = v524;
          v240 = v529;
        }

        sub_22F120ADC(v259, &qword_27DAB0920, &qword_22F770B20);
        sub_22F120ADC(v248, &qword_27DAB0920, &qword_22F770B20);
        (v250)(v240, v140);
        sub_22F120ADC(v260, &qword_27DAB0920, &qword_22F770B20);
        v264 = 1;
        v265 = v515;
        v142 = v545;
LABEL_115:
        v23 = v546;
        v514(v265, v264, 1, v546);
        sub_22F120ADC(v553, &qword_27DAB0920, &qword_22F770B20);
        v271 = v512(v265, 1, v23);
        v272 = v527;
        v273 = v549;
        inited = v552;
        v209 = v548;
        if (v271 == 1)
        {
          (*v510)(v542, v549);
          v238 = *v541;
          (*v541)(v554, v23);
          sub_22F120ADC(v265, &qword_27DAB40E0, &unk_22F779200);
          v239 = 1;
          v23 = v517;
          v221 = v272;
          goto LABEL_168;
        }

        v274 = v506;
        v497(v506, v265, v23);
        v140 = v142;
        v275 = [v142 localizedName];
        if (!v275)
        {
          v310 = v23;
          v238 = *v541;
          (*v541)(v274, v23);
LABEL_151:
          (*v510)(v542, v273);
          v238(v554, v310);
          v239 = 1;
          v23 = v517;
          v221 = v272;
          v212 = v543;
          v209 = v548;
          v142 = v140;
          v140 = v522;
          goto LABEL_169;
        }

        v276 = v275;
        v277 = sub_22F740E20();
        v279 = v278;

        v280 = HIBYTE(v279) & 0xF;
        if ((v279 & 0x2000000000000000) == 0)
        {
          v280 = v277 & 0xFFFFFFFFFFFFLL;
        }

        if (!v280)
        {

          v310 = v23;
          v238 = *v541;
          (*v541)(v506, v23);
          goto LABEL_151;
        }

        v490 = v277;
        v491 = v279;
        v281 = v140;
        v282 = [v140 performers];
        if (!v282)
        {
          v509 = MEMORY[0x277D84F90];
          goto LABEL_157;
        }

        v283 = v282;
        sub_22F120634(0, &qword_27DAB2A58, 0x277D0EC48);
        v142 = sub_22F741180();

        if (v142 >> 62)
        {
          v284 = v142 & 0xFFFFFFFFFFFFFF8;
          inited = sub_22F741A00();
          if (!inited)
          {
LABEL_155:
            v509 = MEMORY[0x277D84F90];
            goto LABEL_156;
          }
        }

        else
        {
          v284 = v142 & 0xFFFFFFFFFFFFFF8;
          inited = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!inited)
          {
            goto LABEL_155;
          }
        }

        v285 = 0;
        v141 = v142 & 0xC000000000000001;
        v509 = MEMORY[0x277D84F90];
        while (1)
        {
          v23 = v285;
          while (1)
          {
            if (v141)
            {
              v286 = MEMORY[0x2319016F0](v23, v142);
            }

            else
            {
              if (v23 >= *(v284 + 16))
              {
                goto LABEL_265;
              }

              v286 = *(v142 + 8 * v23 + 32);
            }

            v287 = v286;
            v285 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              __break(1u);
LABEL_265:
              __break(1u);
              goto LABEL_266;
            }

            v288 = [v286 localizedName];
            if (v288)
            {
              break;
            }

LABEL_127:

            ++v23;
            if (v285 == inited)
            {
              v23 = v546;
              goto LABEL_156;
            }
          }

          v289 = v288;
          v140 = sub_22F740E20();
          v291 = v290;

          if (sub_22F740F10() <= 0)
          {
            break;
          }

          v292 = [v287 iTunesIdentifier];
          if (v292)
          {
            v293 = v292;
            v489 = sub_22F740E20();
            v454 = v294;
          }

          else
          {
            v489 = 0;
            v454 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v509 = sub_22F13F518(0, *(v509 + 2) + 1, 1, v509);
          }

          v296 = *(v509 + 2);
          v295 = *(v509 + 3);
          if (v296 >= v295 >> 1)
          {
            v509 = sub_22F13F518((v295 > 1), v296 + 1, 1, v509);
          }

          v297 = v509;
          *(v509 + 2) = v296 + 1;
          v298 = &v297[32 * v296];
          *(v298 + 4) = v140;
          *(v298 + 5) = v291;
          v299 = v454;
          *(v298 + 6) = v489;
          *(v298 + 7) = v299;
          v23 = v546;
          if (v285 == inited)
          {
LABEL_156:

            v281 = v545;
LABEL_157:
            v311 = v506;
            v312 = [v281 relatedPOIIdentifiers];
            if (!v312)
            {
              goto LABEL_166;
            }

            inited = v312;
            sub_22F120634(0, &qword_27DAB2A50, 0x277D0EBA8);
            v313 = sub_22F741180();

            if (!(v313 >> 62))
            {
              if (*((v313 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_160;
              }

LABEL_165:

LABEL_166:
              v489 = 0;
LABEL_167:
              v316 = [v281 identifier];
              v317 = [v316 muid];

              v318 = v540;
              v319 = v517;
              (*v479)(&v517[*(v540 + 24)], v311, v23);
              v320 = v492;

              v321 = v281;
              v322 = v555;

              v323 = [v321 expectedAttendance];
              v238 = *v541;
              (*v541)(v311, v23);
              (*v510)(v542, v549);
              v324 = v23;
              v23 = v319;
              v238(v554, v324);
              v239 = 0;
              v325 = v490;
              *v319 = v317;
              v319[1] = v325;
              v319[2] = v491;
              *(v319 + v318[7]) = v320;
              *(v319 + v318[8]) = v322;
              v142 = v321;
              *(v319 + v318[9]) = v509;
              *(v319 + v318[10]) = v323;
              *(v319 + v318[11]) = v489;
              v326 = (v319 + v318[12]);
              *v326 = v116;
              v326[1] = v118;
              v221 = v527;
              inited = v552;
              v140 = v522;
              v209 = v548;
LABEL_168:
              v212 = v543;
LABEL_169:
              v327 = v540;
              (*v526)(v23, v239, 1, v540);
              if ((*v525)(v23, 1, v327) == 1)
              {

                sub_22F120ADC(v23, &qword_27DAB2A38, &qword_22F77C6A8);
              }

              else
              {
                v328 = v531;
                sub_22F23E520(v23, v531, type metadata accessor for PublicEvent);
                sub_22F23E4B8(v328, v532, type metadata accessor for PublicEvent);
                v329 = v547;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v329 = sub_22F13F624(0, v329[2] + 1, 1, v329);
                }

                v547 = v329;
                v331 = v329[2];
                v330 = v329[3];
                if (v331 >= v330 >> 1)
                {
                  v547 = sub_22F13F624(v330 > 1, v331 + 1, 1, v547);
                }

                sub_22F23EBF4(v531, type metadata accessor for PublicEvent);
                v332 = v547;
                v547[2] = v331 + 1;
                sub_22F23E520(v532, v332 + ((*(v516 + 80) + 32) & ~*(v516 + 80)) + *(v516 + 72) * v331, type metadata accessor for PublicEvent);
                inited = v552;
              }

              v220 = v550;
              if (v550 == v530)
              {

                v238(v501, v546);
                goto LABEL_177;
              }

              goto LABEL_84;
            }

            if (!sub_22F741A00())
            {
              goto LABEL_165;
            }

LABEL_160:
            if ((v313 & 0xC000000000000001) != 0)
            {
              v314 = MEMORY[0x2319016F0](0, v313);
              goto LABEL_163;
            }

            if (*((v313 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v314 = *(v313 + 32);
LABEL_163:
              v315 = v314;

              v489 = [v315 muid];

              goto LABEL_167;
            }

LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
            goto LABEL_276;
          }
        }

        goto LABEL_127;
      }

      break;
    }

    v530 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v530)
    {
      goto LABEL_81;
    }

LABEL_181:

LABEL_182:
    if ((v458 & 1) == 0)
    {
      (*v541)(v501, v546);
      goto LABEL_70;
    }

    v334 = [v212 dateInterval];
    sub_22F73F020();

    v335 = [v142 timeZone];
    if (v335)
    {
      v336 = v520;
      v337 = v335;
      sub_22F73FA00();

      v338 = *v538;
      v339 = v549;
      (*v538)(v141, v336, v549);
      v340 = v534;
      v534(v141, 0, 1, v339);
      v341 = v478;
      v338(v478, v141, v339);
      v209 = v548;
      v340(v341, 0, 1, v339);
      v342 = (*v537)(v341, 1, v339);
    }

    else
    {
      v343 = v549;
      v534(v141, 1, 1, v549);
      sub_22F73F9D0();
      v344 = *v537;
      if ((*v537)(v141, 1, v343) != 1)
      {
        sub_22F120ADC(v141, &qword_27DAB24E0, &unk_22F77C6B0);
      }

      v339 = v549;
      v341 = v478;
      v342 = v344(v478, 1, v549);
    }

    if (v342 == 1)
    {
      v345 = *v541;
      (*v541)(v482, v546);
      sub_22F120ADC(v341, &qword_27DAB24E0, &unk_22F77C6B0);
      v346 = 1;
      v347 = v476;
      inited = v552;
LABEL_239:
      v407 = v501;
      goto LABEL_240;
    }

    (*v538)(v477, v341, v339);
    sub_22F73F060();
    v348 = *v209;
    v349 = 1;
    v350 = v480;
    (*v209)(v480, 1, 1, v140);
    v351 = v508;
    sub_22F73F030();
    v348(v351, 0, 1, v140);
    sub_22F23E394(v351, v350);
    v352 = v527;
    sub_22F73F550();
    v353 = sub_22F73F660();
    v354 = v352;
    v355 = *v551;
    (*v551)(v354, v140);
    if (v353 == 1)
    {
      v356 = v527;
      sub_22F73F570();
      v357 = sub_22F73F660();
      v355(v356, v140);
      if (v357 == 1)
      {
        sub_22F73F9E0();
        sub_22F73F5A0();
        v349 = 0;
      }

      else
      {
        v349 = 1;
      }
    }

    v556 = v355;
    v358 = 1;
    v348(v23, v349, 1, v140);
    v359 = v23;
    v360 = *v521;
    if (!(*v521)(v480, 1, v140))
    {
      v361 = v456;
      (*v502)(v456, v480, v140);
      v362 = v527;
      sub_22F73F550();
      v363 = sub_22F73F660();
      v364 = v556;
      (v556)(v362, v140);
      if (v363 == 1 && (sub_22F73F570(), v365 = sub_22F73F660(), v364(v362, v140), v365 == 1))
      {
        sub_22F73F9E0();
        sub_22F73F5A0();
        v358 = 0;
      }

      else
      {
        v358 = 1;
      }

      v364(v361, v140);
      v359 = v539;
    }

    v366 = v462;
    v348(v462, v358, 1, v140);
    v367 = v465;
    sub_22F13BA9C(v359, v465, &qword_27DAB0920, &qword_22F770B20);
    v368 = v360(v367, 1, v140);
    v369 = v464;
    if (v368 == 1)
    {
LABEL_204:
      sub_22F120ADC(v366, &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(v359, &qword_27DAB0920, &qword_22F770B20);
      (v556)(v481, v140);
      sub_22F120ADC(v367, &qword_27DAB0920, &qword_22F770B20);
      v372 = 1;
      v23 = v359;
    }

    else
    {
      v370 = *v496;
      (*v496)(v461, v465, v140);
      v371 = v457;
      sub_22F13BA9C(v366, v457, &qword_27DAB0920, &qword_22F770B20);
      if (v360(v371, 1, v140) == 1)
      {
        (v556)(v461, v140);
        v367 = v371;
        v359 = v539;
        goto LABEL_204;
      }

      v373 = v455;
      v370(v455, v371, v140);
      v374 = *v502;
      v375 = v461;
      (*v502)(v527, v461, v140);
      v374(v488, v373, v140);
      sub_22F73F040();
      v376 = v373;
      v369 = v464;
      v377 = v556;
      (v556)(v376, v140);
      v377(v375, v140);
      sub_22F120ADC(v366, &qword_27DAB0920, &qword_22F770B20);
      v23 = v539;
      sub_22F120ADC(v539, &qword_27DAB0920, &qword_22F770B20);
      v377(v481, v140);
      v372 = 0;
    }

    v378 = v546;
    v514(v369, v372, 1, v546);
    sub_22F120ADC(v480, &qword_27DAB0920, &qword_22F770B20);
    v379 = v512(v369, 1, v378);
    inited = v552;
    v142 = v545;
    if (v379 == 1)
    {
      (*v510)(v477, v549);
      v345 = *v541;
      (*v541)(v482, v378);
      sub_22F120ADC(v369, &qword_27DAB40E0, &unk_22F779200);
LABEL_238:
      v346 = 1;
      v347 = v476;
      goto LABEL_239;
    }

    v380 = v463;
    v497(v463, v369, v378);
    v381 = [v142 localizedName];
    if (!v381)
    {
      v345 = *v541;
      (*v541)(v380, v378);
LABEL_237:
      (*v510)(v477, v549);
      v345(v482, v378);
      goto LABEL_238;
    }

    v382 = v381;
    v383 = sub_22F740E20();
    v385 = v384;

    v386 = (v385 >> 56) & 0xF;
    v536 = v383;
    if ((v385 & 0x2000000000000000) == 0)
    {
      v386 = v383 & 0xFFFFFFFFFFFFLL;
    }

    if (!v386)
    {

      v345 = *v541;
      v378 = v546;
      (*v541)(v463, v546);
      goto LABEL_237;
    }

    v387 = [v142 performers];
    v530 = v385;
    if (!v387)
    {
      v550 = MEMORY[0x277D84F90];
      v390 = v463;
      goto LABEL_252;
    }

    v388 = v387;
    sub_22F120634(0, &qword_27DAB2A58, 0x277D0EC48);
    v389 = sub_22F741180();

    v390 = v463;
    if (v389 >> 62)
    {
      v556 = (v389 & 0xFFFFFFFFFFFFFF8);
      inited = sub_22F741A00();
      if (!inited)
      {
LABEL_250:
        v550 = MEMORY[0x277D84F90];
        goto LABEL_251;
      }
    }

    else
    {
      v556 = (v389 & 0xFFFFFFFFFFFFFF8);
      inited = *((v389 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!inited)
      {
        goto LABEL_250;
      }
    }

    v391 = 0;
    v550 = MEMORY[0x277D84F90];
LABEL_216:
    v23 = v391;
LABEL_218:
    if ((v389 & 0xC000000000000001) != 0)
    {
      v392 = MEMORY[0x2319016F0](v23, v389);
    }

    else
    {
      if (v23 >= *(v556 + 2))
      {
        goto LABEL_275;
      }

      v392 = *(v389 + 8 * v23 + 32);
    }

    v393 = v392;
    v391 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      v139 = sub_22F741A00();
      continue;
    }

    break;
  }

  v394 = [v392 localizedName];
  if (!v394)
  {
LABEL_217:

    ++v23;
    v141 = v544;
    if (v391 == inited)
    {
      v390 = v463;
      goto LABEL_251;
    }

    goto LABEL_218;
  }

  v395 = v394;
  v396 = sub_22F740E20();
  v398 = v397;

  if (sub_22F740F10() <= 0)
  {

    goto LABEL_217;
  }

  v399 = [v393 iTunesIdentifier];
  if (v399)
  {
    v400 = v399;
    v528 = sub_22F740E20();
    v402 = v401;
  }

  else
  {
    v528 = 0;
    v402 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v550 = sub_22F13F518(0, *(v550 + 2) + 1, 1, v550);
  }

  v404 = *(v550 + 2);
  v403 = *(v550 + 3);
  if (v404 >= v403 >> 1)
  {
    v550 = sub_22F13F518((v403 > 1), v404 + 1, 1, v550);
  }

  v405 = v550;
  *(v550 + 2) = v404 + 1;
  v406 = &v405[32 * v404];
  *(v406 + 4) = v396;
  *(v406 + 5) = v398;
  *(v406 + 6) = v528;
  *(v406 + 7) = v402;
  v141 = v544;
  v390 = v463;
  if (v391 != inited)
  {
    goto LABEL_216;
  }

LABEL_251:

  v142 = v545;
  v209 = v548;
LABEL_252:
  v417 = [v142 relatedPOIIdentifiers];
  if (!v417)
  {
    goto LABEL_261;
  }

  v418 = v417;
  sub_22F120634(0, &qword_27DAB2A50, 0x277D0EBA8);
  v419 = sub_22F741180();

  if (!(v419 >> 62))
  {
    result = *((v419 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_255;
    }

LABEL_260:

LABEL_261:
    v556 = 0;
LABEL_262:
    v422 = [v142 identifier];
    v528 = [v422 muid];

    v423 = v540;
    v347 = v476;
    v424 = v390;
    v425 = v546;
    (*v479)(&v476[*(v540 + 24)], v424, v546);
    v426 = v492;

    v427 = v142;
    v428 = v555;

    v519 = [v427 expectedAttendance];
    v345 = *v541;
    (*v541)(v463, v425);
    (*v510)(v477, v549);
    v345(v482, v425);
    v346 = 0;
    v429 = v536;
    *v347 = v528;
    v347[1] = v429;
    v347[2] = v530;
    *(v347 + v423[7]) = v426;
    *(v347 + v423[8]) = v428;
    v142 = v427;
    *(v347 + v423[9]) = v550;
    *(v347 + v423[10]) = v519;
    *(v347 + v423[11]) = v556;
    v430 = (v347 + v423[12]);
    *v430 = v116;
    v430[1] = v118;
    v23 = v539;
    inited = v552;
    v407 = v501;
    v140 = v522;
LABEL_240:
    v408 = v347;
    v409 = v347;
    v410 = v540;
    (*v526)(v409, v346, 1, v540);
    if ((*v525)(v408, 1, v410) == 1)
    {
      v345(v407, v546);

      sub_22F120ADC(v408, &qword_27DAB2A38, &qword_22F77C6A8);
    }

    else
    {
      v411 = v408;
      v412 = v474;
      sub_22F23E520(v411, v474, type metadata accessor for PublicEvent);
      sub_22F23E4B8(v412, v475, type metadata accessor for PublicEvent);
      v413 = v345;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v547 = sub_22F13F624(0, v547[2] + 1, 1, v547);
      }

      v415 = v547[2];
      v414 = v547[3];
      if (v415 >= v414 >> 1)
      {
        v547 = sub_22F13F624(v414 > 1, v415 + 1, 1, v547);
      }

      sub_22F23EBF4(v474, type metadata accessor for PublicEvent);
      v413(v407, v546);
      v416 = v547;
      v547[2] = v415 + 1;
      sub_22F23E520(v475, v416 + ((*(v516 + 80) + 32) & ~*(v516 + 80)) + *(v516 + 72) * v415, type metadata accessor for PublicEvent);
      inited = v552;
    }

LABEL_71:
    v207 = v503;
    v205 = v493;
    if (v503 == v485)
    {
      goto LABEL_282;
    }

    goto LABEL_72;
  }

  result = sub_22F741A00();
  if (!result)
  {
    goto LABEL_260;
  }

LABEL_255:
  if ((v419 & 0xC000000000000001) != 0)
  {
    v420 = MEMORY[0x2319016F0](0, v419);
    goto LABEL_258;
  }

  if (*((v419 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v420 = *(v419 + 32);
LABEL_258:
    v421 = v420;

    v556 = [v421 muid];

    goto LABEL_262;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F23D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v79 = a3;
  v4 = sub_22F73F690();
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v66 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v69 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v75 = &v66 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v74 = &v66 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v77 = &v66 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v66 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v80 = &v66 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v83 = &v66 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v66 - v38;
  v72 = a1;
  sub_22F13BA9C(a1, v20, &qword_27DAB40E0, &unk_22F779200);
  v40 = sub_22F73F090();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(v20, 1, v40);
  v81 = v41;
  v82 = v39;
  if (v43 == 1)
  {
    v44 = v13;
    sub_22F120ADC(v20, &qword_27DAB40E0, &unk_22F779200);
    v45 = v71;
    (*(v71 + 56))(v39, 1, 1, v4);
    v46 = v45;
  }

  else
  {
    sub_22F73F060();
    (*(v41 + 8))(v20, v40);
    sub_22F1F4550(v73, v39);
    v46 = v71;
    v44 = v13;
    (*(v71 + 8))(v13, v4);
  }

  sub_22F13BA9C(v72, v18, &qword_27DAB40E0, &unk_22F779200);
  v47 = v42(v18, 1, v40);
  v48 = v80;
  v76 = v40;
  v67 = v44;
  if (v47 == 1)
  {
    sub_22F120ADC(v18, &qword_27DAB40E0, &unk_22F779200);
    (*(v46 + 56))(v83, 1, 1, v4);
  }

  else
  {
    sub_22F73F030();
    (*(v81 + 8))(v18, v40);
    sub_22F1F4550(v73, v83);
    (*(v46 + 8))(v44, v4);
  }

  sub_22F13BA9C(v82, v33, &qword_27DAB0920, &qword_22F770B20);
  v49 = *(v46 + 48);
  v50 = v49(v33, 1, v4);
  v51 = v77;
  v52 = v74;
  if (v50 == 1)
  {
    sub_22F120ADC(v33, &qword_27DAB0920, &qword_22F770B20);
    (*(v46 + 56))(v48, 1, 1, v4);
  }

  else
  {
    sub_22F1F3EE8(v48);
    (*(v46 + 8))(v33, v4);
  }

  sub_22F13BA9C(v83, v52, &qword_27DAB0920, &qword_22F770B20);
  v53 = v49(v52, 1, v4);
  v54 = v78;
  v55 = v75;
  if (v53 == 1)
  {
    sub_22F120ADC(v52, &qword_27DAB0920, &qword_22F770B20);
    (*(v46 + 56))(v51, 1, 1, v4);
  }

  else
  {
    sub_22F1F41AC(v51);
    (*(v46 + 8))(v52, v4);
  }

  sub_22F13BA9C(v48, v55, &qword_27DAB0920, &qword_22F770B20);
  if (v49(v55, 1, v4) != 1)
  {
    v56 = *(v46 + 32);
    v56(v54, v55, v4);
    v55 = v69;
    sub_22F13BA9C(v51, v69, &qword_27DAB0920, &qword_22F770B20);
    if (v49(v55, 1, v4) != 1)
    {
      v61 = v67;
      v56(v70, v55, v4);
      v62 = *(v46 + 16);
      v62(v61, v54, v4);
      v63 = v70;
      v62(v68, v70, v4);
      v57 = v79;
      v60 = v80;
      sub_22F73F040();
      v64 = *(v46 + 8);
      v64(v63, v4);
      v64(v54, v4);
      v58 = 0;
      v55 = v82;
      v59 = v83;
      goto LABEL_18;
    }

    (*(v46 + 8))(v54, v4);
  }

  v57 = v79;
  sub_22F120ADC(v51, &qword_27DAB0920, &qword_22F770B20);
  v58 = 1;
  v51 = v48;
  v59 = v82;
  v60 = v83;
LABEL_18:
  sub_22F120ADC(v51, &qword_27DAB0920, &qword_22F770B20);
  sub_22F120ADC(v60, &qword_27DAB0920, &qword_22F770B20);
  sub_22F120ADC(v59, &qword_27DAB0920, &qword_22F770B20);
  sub_22F120ADC(v55, &qword_27DAB0920, &qword_22F770B20);
  return (*(v81 + 56))(v57, v58, 1, v76);
}

uint64_t sub_22F23E138()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22F23E1B4()
{
  result = qword_27DAB2A20;
  if (!qword_27DAB2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A20);
  }

  return result;
}

uint64_t sub_22F23E208(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F23913C(a1, a2, v2 + v6, v8);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F23E2E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22F740E20();
  v6 = v5;
  if (v4 == sub_22F740E20() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F23E394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F23E404(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F20B7C0;

  return sub_22F237D0C(a1, a2, v7);
}

uint64_t sub_22F23E4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F23E520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F23E588(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v56 - v6;
  v67 = sub_22F73F690();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v67);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v56 - v11;
  v12 = sub_22F73F090();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for PublicEventTimeAndLocation();
  v17 = *(v64 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v64);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_22F14F6C4(MEMORY[0x277D84F90]);
  v22 = sub_22F15CEA0();
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v62 = (v13 + 16);
    v63 = (v7 + 16);
    v60 = (v13 + 48);
    v61 = (v13 + 56);
    v68 = (v13 + 8);
    v57 = *(v17 + 72);
    v58 = v22;
    v59 = v16;
    while (1)
    {
      v70 = v24;
      v71 = v23;
      sub_22F23E4B8(v24, v20, type metadata accessor for PublicEventTimeAndLocation);
      v27 = *(v20 + 2);
      v28 = *(v20 + 3);
      v29 = v64;
      v30 = *v63;
      v31 = v67;
      (*v63)(v65, v20 + *(v64 + 32), v67);
      v30(v66, v20 + *(v29 + 36), v31);
      sub_22F73F040();
      v32 = v69;
      (*v62)(v69, v16, v12);
      (*v61)(v32, 0, 1, v12);
      type metadata accessor for GEOSpatialEventLookupCategory(0);
      v33 = sub_22F741160();
      v34 = (*v60)(v32, 1, v12);
      v35 = 0;
      if (v34 != 1)
      {
        v36 = v69;
        v35 = sub_22F73F010();
        (*v68)(v36, v12);
      }

      v37 = v12;
      v38 = [objc_allocWithZone(MEMORY[0x277D0ED58]) initWithCoordinate:v33 radius:v35 categories:v27 dateInterval:{v28, a2}];

      v40 = *v20;
      v39 = v20[1];
      v41 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v21;
      v44 = sub_22F1229E8(v40, v39);
      v45 = v21[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        break;
      }

      v48 = v43;
      if (v21[3] >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F135FAC();
        }
      }

      else
      {
        sub_22F1289D8(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_22F1229E8(v40, v39);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_19;
        }

        v44 = v49;
      }

      v12 = v37;
      v21 = v72;
      if (v48)
      {
        v25 = v72[7];
        v26 = *(v25 + 8 * v44);
        *(v25 + 8 * v44) = v41;

        v16 = v59;
        (*v68)(v59, v37);
      }

      else
      {
        v72[(v44 >> 6) + 8] |= 1 << v44;
        v51 = (v21[6] + 16 * v44);
        *v51 = v40;
        v51[1] = v39;
        *(v21[7] + 8 * v44) = v41;

        v16 = v59;
        (*v68)(v59, v37);
        v52 = v21[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_18;
        }

        v21[2] = v54;
      }

      sub_22F23EBF4(v20, type metadata accessor for PublicEventTimeAndLocation);
      v24 = v70 + v57;
      v23 = v71 - 1;
      if (v71 == 1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_22F7420C0();
    __break(1u);
  }

  else
  {
LABEL_16:

    return v21;
  }

  return result;
}

uint64_t sub_22F23EB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22F12094C;

  return sub_22F2388C4(a1, v4, v5, v7, v6);
}

uint64_t sub_22F23EBF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F23EC54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22F23EC9C()
{
  result = qword_2810A92A8;
  if (!qword_2810A92A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB29A8, &unk_22F77BFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92A8);
  }

  return result;
}

unint64_t sub_22F23ED24()
{
  result = qword_27DAB2A78;
  if (!qword_27DAB2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A78);
  }

  return result;
}

uint64_t sub_22F23ED7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000010, 0x800000022F792110);
    if (v3)
    {
      v4 = *(*(a1 + 56) + 8 * v2);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRetain();
        sub_22F740E10();
        swift_unknownObjectRelease();
      }
    }
  }

  sub_22F23EE68();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_22F23EE68()
{
  result = qword_27DAB2A80;
  if (!qword_27DAB2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A80);
  }

  return result;
}

unint64_t sub_22F23EED0()
{
  result = qword_27DAB2A88;
  if (!qword_27DAB2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A88);
  }

  return result;
}

id FeatureExtractorAverageMomentScenes.__allocating_init(version:graph:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22F23FAF0(a1, a2);

  return v6;
}

void *sub_22F23EF88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

id FeatureExtractorAverageMomentScenes.init(version:graph:)(uint64_t a1, void *a2)
{
  v3 = sub_22F23FAF0(a1, a2);

  return v3;
}

uint64_t FeatureExtractorAverageMomentScenes.floatVector(withEntity:)(void *a1)
{
  v3 = [objc_opt_self() vectorRepeatingFloat:*(*&v1[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_featureIndexByLowercasedScene] + 16) count:0.0];
  v4 = [a1 numberOfAssets];
  if (v4 < 1)
  {
    return v3;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [a1 collection];
  v8 = [v6 edgesFromNodes:v7 toNodes:*&v1[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_sceneNodes]];

  v16 = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = &v16;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F23FD2C;
  *(v10 + 24) = v9;
  v15[4] = sub_22F1F68E8;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_22F107E24;
  v15[3] = &block_descriptor_12;
  v11 = _Block_copy(v15);
  v12 = v1;
  v13 = v3;

  [v8 enumerateUsingBlock_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v16)
    {
    }

    else
    {
      sub_22F23FD54();
      swift_allocError();
      swift_willThrow();
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_22F23F258(void *a1, _BYTE *a2, uint64_t a3, _BYTE *a4, void *a5, float a6)
{
  v12 = [a1 sceneNode];
  v13 = *(a3 + OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_featureIndexByLowercasedScene);
  v23 = v12;
  v14 = [v12 sceneName];
  v15 = sub_22F740E20();
  v17 = v16;

  if (!*(v13 + 16))
  {

    goto LABEL_7;
  }

  v18 = sub_22F1229E8(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_7:
    *a2 = 1;

    *a4 = 0;
    return;
  }

  v21 = *(*(v13 + 56) + 8 * v18);
  *&v22 = [a1 numberOfAssets] / a6;
  [a5 setFloat:v21 atIndex:v22];
}

uint64_t FeatureExtractorAverageMomentScenes.featureNames.getter()
{
  if (*(v0 + OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_version))
  {
    v11 = *(v0 + OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_version);
    result = sub_22F7420A0();
    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v1 = 120;
    sub_22F146454(0, 120, 0);
    v2 = &unk_2843D88E0;
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v10 = sub_22F740E20();
      v12 = v5;

      MEMORY[0x231900B10](95, 0xE100000000000000);
      MEMORY[0x231900B10](v3, v4);

      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22F146454((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v12;
      v2 += 2;
      --v1;
    }

    while (v1);
    return v13;
  }

  return result;
}

id FeatureExtractorAverageMomentScenes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureExtractorAverageMomentScenes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F23F774(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_22F1229E8(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22F125704(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_22F1229E8(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_22F1341B0();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
    sub_22F741C50();
    MEMORY[0x231900B10](39, 0xE100000000000000);
    sub_22F741D40();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_22F1229E8(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_22F125704(v32, 1);
        v33 = *a3;
        v28 = sub_22F1229E8(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

id sub_22F23FAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    sub_22F7420A0();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v7 = ObjectType;
    *&v3[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_version] = 0;
    v8 = objc_opt_self();
    sub_22F1515F8(&unk_2843D88B8);
    v9 = sub_22F741410();

    v10 = [v8 sceneNodesForSceneNames:v9 inGraph:a2];

    *&v3[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_sceneNodes] = v10;
    v26 = MEMORY[0x277D84F90];
    sub_22F14663C(0, 120, 0);
    v11 = 0;
    v12 = &unk_2843D88E0;
    v13 = v26;
    do
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v16 = sub_22F740EA0();
      v26 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = v16;
        v22 = v17;
        sub_22F14663C((v18 > 1), v19 + 1, 1);
        v17 = v22;
        v16 = v21;
        v13 = v26;
      }

      *(v13 + 16) = v19 + 1;
      v20 = (v13 + 24 * v19);
      v20[5] = v17;
      v20[6] = v11;
      v20[4] = v16;
      v12 += 2;
      ++v11;
    }

    while (v11 != 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
    v26 = sub_22F741DF0();

    sub_22F23F774(v23, 1, &v26);

    *&v3[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_featureIndexByLowercasedScene] = v26;
    v25.receiver = v3;
    v25.super_class = v7;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F23FD54()
{
  result = qword_27DAB2AA0;
  if (!qword_27DAB2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AA0);
  }

  return result;
}

unint64_t sub_22F23FDAC()
{
  result = qword_27DAB2AB0;
  if (!qword_27DAB2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AB0);
  }

  return result;
}

unint64_t sub_22F23FE74()
{
  result = qword_27DAB2AB8;
  if (!qword_27DAB2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AB8);
  }

  return result;
}

unint64_t static ImportantEntitiesChildrenProcessor.processUserChildren(inGraph:parameters:progressBlock:reportToCoreAnalytics:withProcessInferredChildNodeClosure:)(void *a1, _OWORD *a2, void (*a3)(double), uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v21[0] = *a2;
  v21[1] = v13;
  v21[2] = a2[2];
  v14 = type metadata accessor for ImportantEntitiesChildrenContainer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = a1;

  sub_22F240428(v18, a3, a4, a6, a7);
  v19 = sub_22F246DE0(v17, v21, a3, a4, a5);

  return v19;
}

uint64_t type metadata accessor for ImportantEntitiesChildrenContainer()
{
  result = qword_27DAB2AC0;
  if (!qword_27DAB2AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static ImportantEntitiesChildrenProcessor.defaultParameters()@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  [v2 usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears];
  v4 = v3 * 31557600.0;
  [v2 usersChildrenInferenceMinimumLifespanYears];
  *a1 = v4;
  *(a1 + 8) = v5 * 31557600.0;
  *(a1 + 16) = 15;
  result = 0.1;
  *(a1 + 24) = xmmword_22F77CAC0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_22F240090()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22F2400D0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  return v1;
}

uint64_t sub_22F240104()
{

  return swift_deallocClassInstance();
}

void sub_22F240144()
{
  v1 = [*(*v0 + 16) universalStartDate];
  sub_22F73F640();
}

uint64_t sub_22F2401A8()
{
  v1 = *(*v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 featureIdentifier];
  v3 = sub_22F740E20();

  return v3;
}

uint64_t sub_22F240214()
{
  v1 = *v0;
  sub_22F742170();
  v2 = [*(v1 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F24029C()
{
  v1 = [*(*v0 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();
}

uint64_t sub_22F240318()
{
  sub_22F742170();
  v1 = [*(*v0 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2403A8()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_27DAD0EA0);
  __swift_project_value_buffer(v0, qword_27DAD0EA0);
  return sub_22F740B80();
}

uint64_t sub_22F240428(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v51 = a2;
  v52 = a3;
  v10 = sub_22F73F690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F90];
  v6[2] = a1;
  v6[3] = v15;
  v16 = a1;
  v17 = sub_22F14E72C(v15);
  v6[5] = v15;
  v18 = v6 + 5;
  v6[4] = v17;
  v19 = (v6 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode);
  *v19 = a4;
  v19[1] = a5;
  v53 = a5;

  sub_22F73F650();
  v20 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime, v14, v10);
  v21 = v16;
  v22 = [v16 momentNodesSortedByDate];
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v23 = sub_22F741180();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_22:

    if (qword_27DAAFDF0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v24 = sub_22F741A00();
  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_3:
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v27 = MEMORY[0x2319016F0](v26, v23);
    goto LABEL_8;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
LABEL_23:
    v47 = sub_22F740B90();
    __swift_project_value_buffer(v47, qword_27DAD0EA0);
    v28 = sub_22F740B70();
    v48 = sub_22F7415E0();
    if (os_log_type_enabled(v28, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22F0FC000, v28, v48, "Couldn't find latest moment in the graph!", v49, 2u);
      MEMORY[0x2319033A0](v49, -1, -1);
    }

    goto LABEL_25;
  }

  v27 = *(v23 + 8 * v26 + 32);
LABEL_8:
  v28 = v27;

  v29 = [v28 universalEndDate];
  sub_22F73F640();

  swift_beginAccess();
  (*(v11 + 40))(v6 + v20, v14, v10);
  swift_endAccess();
  v30 = swift_slowAlloc();
  *v30 = 0;
  v31 = v51;
  v32 = v52;
  v51(0.0);
  if (*v30)
  {
    goto LABEL_25;
  }

  if (qword_2810AA120 != -1)
  {
    swift_once();
  }

  v33 = sub_22F740B90();
  v34 = __swift_project_value_buffer(v33, qword_2810B4EB0);
  sub_22F3489DC(v21, v31, v32, v34, sub_22F250824, v6);
  if (qword_27DAAFDF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_27DAD0EA0);

  v35 = sub_22F740B70();
  v36 = sub_22F7415D0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    swift_beginAccess();
    v38 = *v18;
    if (*v18 >> 62)
    {
      if (v38 < 0)
      {
        v50 = *v18;
      }

      v39 = sub_22F741A00();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v39;

    _os_log_impl(&dword_22F0FC000, v35, v36, "Found %ld moments at the me node's home address and frequent locations.", v37, 0xCu);
    MEMORY[0x2319033A0](v37, -1, -1);
  }

  else
  {
  }

  (v31)(v30, 0.5);
  if (*v30)
  {
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22F771350;
  *(v40 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(v40 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v41 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v42 = sub_22F741160();

  v43 = [v41 personNodesInAgeCategories:v42 includingMe:0 inGraph:v6[2]];

  v44 = swift_allocObject();
  *(v44 + 16) = sub_22F25082C;
  *(v44 + 24) = v6;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_13;
  v45 = _Block_copy(aBlock);

  [v43 enumerateUsingBlock:v45];
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if ((v45 & 1) == 0)
  {
    (v51)(v30, 1.0);

    v28 = v43;
LABEL_25:

    return v6;
  }

  __break(1u);
  return result;
}

void sub_22F240B34(void *a1, uint64_t a2)
{
  v4 = [a1 bestAddressNode];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v5;
    swift_beginAccess();
    v7 = v5;
    v8 = a1;

    MEMORY[0x231900D00](v9);
    if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();
  }

  else
  {
    if (qword_27DAAFDF0 != -1)
    {
      swift_once();
    }

    v10 = sub_22F740B90();
    __swift_project_value_buffer(v10, qword_27DAD0EA0);
    oslog = sub_22F740B70();
    v11 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v11, "Couldn't find best address node for moment node!", v12, 2u);
      MEMORY[0x2319033A0](v12, -1, -1);
    }
  }
}

void sub_22F240D0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 localIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_22F740E20();
    v9 = v8;

    type metadata accessor for ImportantEntitiesChildrenProcessorEntity();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = v7;
    v10[4] = v9;
    swift_beginAccess();
    v11 = a1;

    MEMORY[0x231900D00](v12);
    if (*((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = *((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();
    v13 = [v11 collection];
    v14 = [v13 momentNodes];

    v47 = MEMORY[0x277D84F90];
    v15 = swift_allocObject();
    *(v15 + 16) = &v47;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_22F25084C;
    *(v16 + 24) = v15;
    aBlock[4] = sub_22F250854;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107E24;
    aBlock[3] = &block_descriptor_60;
    v17 = _Block_copy(aBlock);

    [v14 enumerateUsingBlock_];
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    else
    {
      v18 = v10[3];
      v19 = v10[4];

      v21 = sub_22F151C88(v20);

      swift_beginAccess();
      v22 = *(a3 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a3 + 32);
      *(a3 + 32) = 0x8000000000000000;
      sub_22F131768(v21, v18, v19, isUniquelyReferenced_nonNull_native);

      *(a3 + 32) = v45;
      swift_endAccess();
      if (qword_27DAAFDF0 == -1)
      {
LABEL_6:
        v24 = sub_22F740B90();
        __swift_project_value_buffer(v24, qword_27DAD0EA0);

        v25 = sub_22F740B70();
        v26 = sub_22F7415D0();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v45 = v28;
          *v27 = 136315394;
          v29 = v10[3];
          v30 = v10[4];

          v31 = sub_22F145F20(v29, v30, &v45);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2048;
          swift_beginAccess();
          if (v47 >> 62)
          {
            v32 = sub_22F741A00();
          }

          else
          {
            v32 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v27 + 14) = v32;
          _os_log_impl(&dword_22F0FC000, v25, v26, "Child entity %s has %ld moments.", v27, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x2319033A0](v28, -1, -1);
          MEMORY[0x2319033A0](v27, -1, -1);
        }

        return;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  if (qword_27DAAFDF0 != -1)
  {
    swift_once();
  }

  v33 = sub_22F740B90();
  __swift_project_value_buffer(v33, qword_27DAD0EA0);
  v34 = a1;
  oslog = sub_22F740B70();
  v35 = sub_22F7415E0();

  if (os_log_type_enabled(oslog, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v38 = [v34 stringDescription];
    v39 = sub_22F740E20();
    v41 = v40;

    v42 = sub_22F145F20(v39, v41, aBlock);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_22F0FC000, oslog, v35, "Couldn't find localIdentifier in child node %s during ingest, skipping...", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x2319033A0](v37, -1, -1);
    MEMORY[0x2319033A0](v36, -1, -1);
  }

  else
  {
  }
}

void sub_22F241304(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 bestAddressNode];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v6;
    v9 = v6;
    MEMORY[0x231900D00](a1);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
  }
}

void *sub_22F2413E4(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {

    v5 = sub_22F1229E8(v3, v2);
    v7 = v6;

    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v5);

      v9 = sub_22F10AA70(v8);

      return v9;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22F2414A8(unint64_t a1, uint64_t (*a2)(double))
{
  v3 = v2;
  v6 = swift_slowAlloc();
  *v6 = 0;
  v18 = a2;
  result = a2(0.0);
  if ((*v6 & 1) == 0)
  {
    if (a1 >> 62)
    {
LABEL_17:
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      v9 = sub_22F741A00();
      v8 = sub_22F741A00();
    }

    else
    {
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8;
    }

    v10 = 0;
    v11 = v3 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode;
    v12 = 0.0;
    v13 = 1.0 / v9;
    while (v8 != v10)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x2319016F0](v10, a1);
        if (__OFADD__(v10, 1))
        {
LABEL_13:
          __break(1u);
          return (v18)(v6, 1.0);
        }
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v3 = *(a1 + 8 * v10 + 32);

        if (__OFADD__(v10, 1))
        {
          goto LABEL_13;
        }
      }

      v15 = *v11;
      v14 = *(v11 + 8);
      v16 = *(v3 + 16);
      v15();

      v12 = v13 + v12;
      (v18)(v6, v12);
      LOBYTE(v14) = *v6;

      ++v10;
      if (v14)
      {
        return result;
      }
    }

    return (v18)(v6, 1.0);
  }

  return result;
}

uint64_t sub_22F241648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
  v5 = sub_22F73F690();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F241718@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
  swift_beginAccess();
  v5 = sub_22F73F690();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

id ImportantEntitiesChildrenProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImportantEntitiesChildrenProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesChildrenProcessor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ImportantEntitiesChildrenProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesChildrenProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F24198C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v2 = sub_22F741A00();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v38 = v1 & 0xC000000000000001;
      v35 = v1 & 0xFFFFFFFFFFFFFF8;
      v4 = MEMORY[0x277D84F98];
      v36 = v2;
      v37 = v1;
      while (1)
      {
        if (v38)
        {
          v5 = MEMORY[0x2319016F0](v3, v1);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v3 >= *(v35 + 16))
          {
            goto LABEL_31;
          }

          v5 = *(v1 + 8 * v3 + 32);

          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v7 = *(v5 + 24);
        if (v7)
        {
          break;
        }

LABEL_5:
        ++v3;
        if (v6 == v2)
        {
          return v4;
        }
      }

      v39 = v6;
      v8 = [v7 featureIdentifier];
      v9 = sub_22F740E20();
      v11 = v10;

      if (v4[2])
      {
        v12 = sub_22F1229E8(v9, v11);
        if (v13)
        {
          v14 = *(v4[7] + 8 * v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
          v15 = v9;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22F771EB0;
          *(inited + 32) = v5;

          sub_22F144904(inited);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_22F130444(v14, v15, v11, isUniquelyReferenced_nonNull_native);

LABEL_28:
          v6 = v39;
          goto LABEL_5;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_22F771EB0;
      *(v1 + 32) = v5;

      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v9;
      v21 = sub_22F1229E8(v9, v11);
      v22 = v4[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_30;
      }

      v25 = v20;
      if (v4[3] < v24)
      {
        sub_22F125C7C(v24, v18);
        v26 = sub_22F1229E8(v19, v11);
        if ((v25 & 1) != (v27 & 1))
        {
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v21 = v26;
        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_23:

        v28 = v4[7];
        v29 = *(v28 + 8 * v21);
        *(v28 + 8 * v21) = v1;

LABEL_27:
        v2 = v36;
        v1 = v37;
        goto LABEL_28;
      }

      if (v18)
      {
        if (v20)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_22F1344AC();
        if (v25)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v4[(v21 >> 6) + 8] |= 1 << v21;
      v30 = (v4[6] + 16 * v21);
      *v30 = v19;
      v30[1] = v11;
      *(v4[7] + 8 * v21) = v1;

      v31 = v4[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_32;
      }

      v4[2] = v33;
      goto LABEL_27;
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_22F241D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v74 = a5;
  v75 = a3;
  v79 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v72 - v11;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v78 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v81 = &v72 - v20;

  v22 = sub_22F3C3A9C(v21);
  v82 = a2;

  if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
  {
LABEL_54:
    v23 = sub_22F741A00();
  }

  else
  {
    v23 = *(v22 + 16);
  }

  v83 = v12;
  v76 = a1;
  if (v23)
  {
    v84 = MEMORY[0x277D84F90];
    sub_22F1466BC(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v24 = 0;
    v25 = v84;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x2319016F0](v24, v22);
      }

      else
      {
        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = [*(v26 + 16) universalStartDate];
      sub_22F73F640();

      v84 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22F1466BC(v28 > 1, v29 + 1, 1);
        v25 = v84;
      }

      ++v24;
      *(v25 + 16) = v29 + 1;
      v12 = v83;
      (*(v13 + 32))(v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, v19, v83);
    }

    while (v23 != v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v30 = v80;
  sub_22F1732E8(v25, v80);
  v31 = *(v13 + 48);
  if (v31(v30, 1, v12) == 1)
  {

    sub_22F15FCF0(v30);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22F0FC000, v32, v33, "Couldn't find the minimum of the datetime array!", v34, 2u);
      MEMORY[0x2319033A0](v34, -1, -1);
    }
  }

  else
  {
    v19 = *(v13 + 32);
    (v19)(v81, v30, v12);
    v35 = v77;
    sub_22F172094(v25, v77);

    if (v31(v35, 1, v12) == 1)
    {
      sub_22F15FCF0(v35);
      v36 = sub_22F740B70();
      v37 = sub_22F7415E0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22F0FC000, v36, v37, "Couldn't find the minimum of the datetime array!", v38, 2u);
        MEMORY[0x2319033A0](v38, -1, -1);
      }

      (*(v13 + 8))(v81, v12);
    }

    else
    {
      (v19)(v78, v35, v12);
      v39 = v76;
      v12 = v76 + 64;
      v40 = 1 << *(v76 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      a1 = v41 & *(v76 + 64);
      v42 = (v40 + 63) >> 6;

      v77 = 0;
      v80 = 0;
      v22 = 0;
      v73 = 0;
      while (a1)
      {
        v43 = a1;
LABEL_33:
        a1 = (v43 - 1) & v43;
        if (*(v82 + 16))
        {
          v45 = __clz(__rbit64(v43)) | (v22 << 6);
          v46 = *(*(v39 + 56) + 8 * v45);
          v47 = (*(v39 + 48) + 16 * v45);
          v48 = *v47;
          v19 = v47[1];

          v49 = sub_22F1229E8(v48, v19);
          v51 = v50;

          if (v51)
          {
            v19 = *(*(v82 + 56) + 8 * v49);
            MEMORY[0x28223BE20](v52);
            v53 = v78;
            *(&v72 - 2) = v81;
            *(&v72 - 1) = v53;

            v54 = v73;
            v55 = sub_22F3A050C(v74, &v72 - 4, v46);
            v73 = v54;
            if (v19 >> 62)
            {
              v56 = sub_22F741A00();
            }

            else
            {
              v56 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v39 = v76;
            if (__OFADD__(v77, v56))
            {
              goto LABEL_56;
            }

            v77 += v56;
            if (v55 >> 62)
            {
              v57 = sub_22F741A00();
            }

            else
            {
              v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v58 = __OFADD__(v80, v57);
            v80 += v57;
            if (v58)
            {
              goto LABEL_57;
            }
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v44 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v44 >= v42)
        {
          break;
        }

        v43 = *(v12 + 8 * v44);
        ++v22;
        if (v43)
        {
          v22 = v44;
          goto LABEL_33;
        }
      }

      v59 = v75;
      v60 = v80;
      if (v80 >= v75)
      {
        v70 = *(v13 + 8);
        v71 = v83;
        v70(v78, v83);
        v70(v81, v71);
      }

      else
      {
        v61 = sub_22F740B70();
        v62 = sub_22F7415C0();
        v63 = os_log_type_enabled(v61, v62);
        v64 = v83;
        if (v63)
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_22F0FC000, v61, v62, "Not enough moments at important locations that the entity has been to in the entity's lifetime!", v65, 2u);
          MEMORY[0x2319033A0](v65, -1, -1);
        }

        v66 = sub_22F740B70();
        v67 = sub_22F7415C0();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 134218240;
          *(v68 + 4) = v60;
          *(v68 + 12) = 2048;
          *(v68 + 14) = v59;
          _os_log_impl(&dword_22F0FC000, v66, v67, "Only had %ld moments, which is less than minimum threshold %ld", v68, 0x16u);
          MEMORY[0x2319033A0](v68, -1, -1);
        }

        v69 = *(v13 + 8);
        v69(v78, v64);
        v69(v81, v64);
      }
    }
  }
}

uint64_t sub_22F242558(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v55 = a2;
  v6 = sub_22F73F690();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v47 - v10;
  v11 = sub_22F73F090();
  v57 = *(v11 - 8);
  v12 = v57[8];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v47 - v21;
  v23 = *a3;
  if (*(*a3 + 16))
  {
    v50 = v20;
    v51 = v6;
    v56 = v3;
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);

    v26 = sub_22F1229E8(v24, v25);
    v28 = v27;

    if (v28)
    {
      v29 = *(v23 + 56);
      v30 = v57;
      v47 = v57[9];
      v49 = v57[2];
      v49(v19, v29 + v47 * v26, v11);
      v48 = v30[4];
      v48(v22, v19, v11);
      v31 = *a3;
      if (*(*a3 + 16) && (v32 = *(v55 + 24), v33 = *(v55 + 32), , v34 = sub_22F1229E8(v32, v33), v36 = v35, , (v36 & 1) != 0))
      {
        v49(v15, *(v31 + 56) + v34 * v47, v11);
        v37 = v50;
        v48(v50, v15, v11);
        v38 = v52;
        sub_22F73F060();
        v39 = v53;
        v40 = v37;
        sub_22F73F060();
        v41 = sub_22F73F5D0();
        v42 = *(v54 + 8);
        v43 = v39;
        v44 = v51;
        v42(v43, v51);
        v42(v38, v44);
        v45 = v57[1];
        v45(v40, v11);
        v45(v22, v11);
      }

      else
      {
        (v57[1])(v22, v11);
        v41 = 1;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41 & 1;
}

void sub_22F242910(uint64_t a1)
{
  v1 = sub_22F14E718(MEMORY[0x277D84F90]);
  v2 = sub_22F740DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v2, 0x636E657265666E69, 0xED00006570795465, isUniquelyReferenced_nonNull_native);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v4 = sub_22F7417F0();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v1;
  sub_22F12FEE8(v4, 0xD000000000000010, 0x800000022F792BD0, v5);
  v6 = 0;
  v7 = v1;
  do
  {
    v11 = &unk_2843D9058 + v6++;
    v12 = v11[32];
    v13 = 0xD000000000000020;
    v14 = 0xD00000000000001FLL;
    if (v12 == 8)
    {
      v14 = 0xD000000000000010;
    }

    v15 = 0x800000022F78E4D0;
    if (v12 == 8)
    {
      v15 = 0x800000022F78E4B0;
    }

    if (v12 != 7)
    {
      v13 = v14;
    }

    v16 = 0x800000022F78E480;
    if (v12 != 7)
    {
      v16 = v15;
    }

    v17 = 0xD000000000000022;
    if (v12 != 5)
    {
      v17 = 0x457265696C74756FLL;
    }

    v18 = 0xED0000797469746ELL;
    if (v12 == 5)
    {
      v18 = 0x800000022F78E440;
    }

    if (v12 <= 6)
    {
      v13 = v17;
      v16 = v18;
    }

    v19 = 0xD000000000000019;
    v20 = 0x746E656D6F4D6F6ELL;
    if (v12 != 3)
    {
      v20 = 0xD000000000000010;
    }

    v21 = 0x800000022F78E420;
    if (v12 == 3)
    {
      v21 = 0xE900000000000073;
    }

    if (v12 != 2)
    {
      v19 = v20;
    }

    v22 = 0x800000022F78E3F0;
    if (v12 != 2)
    {
      v22 = v21;
    }

    v23 = 0xD000000000000017;
    if (v12)
    {
      v23 = 0x6E65636552746F6ELL;
    }

    v24 = 0xEF6867756F6E4574;
    if (!v12)
    {
      v24 = 0x800000022F78E3C0;
    }

    if (v12 <= 1)
    {
      v19 = v23;
      v22 = v24;
    }

    v25 = v12 <= 4;
    if (v12 <= 4)
    {
      v26 = v19;
    }

    else
    {
      v26 = v13;
    }

    if (v25)
    {
      v27 = v22;
    }

    else
    {
      v27 = v16;
    }

    v92 = v26;
    v93 = v27;

    MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

    v29 = v92;
    v28 = v27;
    v30 = sub_22F7417F0();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v7;
    v32 = sub_22F1229E8(v29, v28);
    v34 = v7[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      __break(1u);
      goto LABEL_98;
    }

    v38 = v33;
    if (v7[3] < v37)
    {
      sub_22F125718(v37, v31);
      v32 = sub_22F1229E8(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_103;
      }

LABEL_43:
      if (v38)
      {
        goto LABEL_2;
      }

      goto LABEL_44;
    }

    if (v31)
    {
      goto LABEL_43;
    }

    v43 = v32;
    sub_22F1341C4();
    v32 = v43;
    if (v38)
    {
LABEL_2:
      v8 = v32;

      v7 = v92;
      v9 = v92[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v30;

      continue;
    }

LABEL_44:
    v7 = v92;
    v92[(v32 >> 6) + 8] |= 1 << v32;
    v40 = (v7[6] + 16 * v32);
    *v40 = v29;
    v40[1] = v28;
    *(v7[7] + 8 * v32) = v30;
    v41 = v7[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v36)
    {
      goto LABEL_99;
    }

    v7[2] = v42;
  }

  while (v6 != 10);
  v44 = a1;
  v45 = a1 + 64;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 64);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v90 = v49;
  while (2)
  {
    while (2)
    {
      v51 = v50;
      while (2)
      {
        if (!v48)
        {
          while (1)
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v50 >= v49)
            {

              v85 = objc_opt_self();
              v86 = sub_22F740DF0();
              sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
              v91 = sub_22F740C80();
              [v85 sendEvent:v86 withPayload:v91];

              return;
            }

            v48 = *(v45 + 8 * v50);
            ++v51;
            if (v48)
            {
              goto LABEL_59;
            }
          }

LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v50 = v51;
LABEL_59:
        v52 = *(*(v44 + 56) + (__clz(__rbit64(v48)) | (v50 << 6)));
        if (v52 > 4)
        {
          if (v52 <= 6)
          {
            if (v52 == 5)
            {
              v53 = 0xD000000000000022;
              v54 = 0x800000022F78E440;
            }

            else
            {
              v53 = 0x457265696C74756FLL;
              v54 = 0xED0000797469746ELL;
            }
          }

          else if (v52 == 7)
          {
            v53 = 0xD000000000000020;
            v54 = 0x800000022F78E480;
          }

          else if (v52 == 8)
          {
            v53 = 0xD000000000000010;
            v54 = 0x800000022F78E4B0;
          }

          else
          {
            v53 = 0xD00000000000001FLL;
            v54 = 0x800000022F78E4D0;
          }
        }

        else if (v52 <= 1)
        {
          v53 = 0x6E65636552746F6ELL;
          v54 = 0xEF6867756F6E4574;
          if (!v52)
          {
            v53 = 0xD000000000000017;
            v54 = 0x800000022F78E3C0;
          }
        }

        else if (v52 == 2)
        {
          v53 = 0xD000000000000019;
          v54 = 0x800000022F78E3F0;
        }

        else if (v52 == 3)
        {
          v53 = 0x746E656D6F4D6F6ELL;
          v54 = 0xE900000000000073;
        }

        else
        {
          v53 = 0xD000000000000010;
          v54 = 0x800000022F78E420;
        }

        v48 &= v48 - 1;
        v92 = v53;
        v93 = v54;

        MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

        v56 = v92;
        v55 = v93;
        if (!v7[2] || (v57 = sub_22F1229E8(v92, v93), (v58 & 1) == 0) || (v59 = *(v7[7] + 8 * v57), objc_opt_self(), (v60 = swift_dynamicCastObjCClass()) == 0))
        {

          v61 = sub_22F740B70();
          v62 = sub_22F7415E0();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v92 = v64;
            *v63 = 136315138;
            v65 = sub_22F145F20(v56, v55, &v92);

            *(v63 + 4) = v65;
            _os_log_impl(&dword_22F0FC000, v61, v62, "Unable to parse result count for %s as a NSNumber!", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v64);
            v66 = v64;
            v45 = a1 + 64;
            MEMORY[0x2319033A0](v66, -1, -1);
            v67 = v63;
            v44 = a1;
            MEMORY[0x2319033A0](v67, -1, -1);
          }

          else
          {
          }

          v51 = v50;
          v49 = v90;
          continue;
        }

        break;
      }

      v68 = v60;
      v88 = v59;
      if (__OFADD__([v68 integerValue], 1))
      {
        goto LABEL_100;
      }

      v87 = sub_22F7417F0();
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v7;
      v71 = sub_22F1229E8(v56, v55);
      v72 = v7[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v7[3] >= v74)
      {
        if (v69)
        {
          v44 = a1;
          if ((v70 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v80 = v70;
          sub_22F1341C4();
          v81 = v80;
          v44 = a1;
          if ((v81 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

LABEL_90:

        v7 = v92;
        v78 = v92[7];
        v79 = *(v78 + 8 * v71);
        *(v78 + 8 * v71) = v87;

        v49 = v90;
        continue;
      }

      break;
    }

    v75 = v70;
    sub_22F125718(v74, v69);
    v76 = sub_22F1229E8(v56, v55);
    if ((v75 & 1) != (v77 & 1))
    {
      goto LABEL_103;
    }

    v71 = v76;
    v44 = a1;
    if (v75)
    {
      goto LABEL_90;
    }

LABEL_92:
    v7 = v92;
    v92[(v71 >> 6) + 8] |= 1 << v71;
    v82 = (v7[6] + 16 * v71);
    *v82 = v56;
    v82[1] = v55;
    *(v7[7] + 8 * v71) = v87;

    v83 = v7[2];
    v36 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (!v36)
    {
      v7[2] = v84;
      v49 = v90;
      continue;
    }

    break;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  sub_22F7420C0();
  __break(1u);
}

void sub_22F243228(uint64_t a1)
{
  v1 = sub_22F14E718(MEMORY[0x277D84F90]);
  v2 = sub_22F740DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v2, 0x636E657265666E69, 0xED00006570795465, isUniquelyReferenced_nonNull_native);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v4 = sub_22F7417F0();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v1;
  sub_22F12FEE8(v4, 0xD000000000000010, 0x800000022F792BD0, v5);
  v6 = 0;
  v7 = v1;
  do
  {
    v11 = &unk_2843D9058 + v6++;
    v12 = v11[32];
    v13 = 0xD000000000000020;
    v14 = 0xD00000000000001FLL;
    if (v12 == 8)
    {
      v14 = 0xD000000000000010;
    }

    v15 = 0x800000022F78E4D0;
    if (v12 == 8)
    {
      v15 = 0x800000022F78E4B0;
    }

    if (v12 != 7)
    {
      v13 = v14;
    }

    v16 = 0x800000022F78E480;
    if (v12 != 7)
    {
      v16 = v15;
    }

    v17 = 0xD000000000000022;
    if (v12 != 5)
    {
      v17 = 0x457265696C74756FLL;
    }

    v18 = 0xED0000797469746ELL;
    if (v12 == 5)
    {
      v18 = 0x800000022F78E440;
    }

    if (v12 <= 6)
    {
      v13 = v17;
      v16 = v18;
    }

    v19 = 0xD000000000000019;
    v20 = 0x746E656D6F4D6F6ELL;
    if (v12 != 3)
    {
      v20 = 0xD000000000000010;
    }

    v21 = 0x800000022F78E420;
    if (v12 == 3)
    {
      v21 = 0xE900000000000073;
    }

    if (v12 != 2)
    {
      v19 = v20;
    }

    v22 = 0x800000022F78E3F0;
    if (v12 != 2)
    {
      v22 = v21;
    }

    v23 = 0xD000000000000017;
    if (v12)
    {
      v23 = 0x6E65636552746F6ELL;
    }

    v24 = 0xEF6867756F6E4574;
    if (!v12)
    {
      v24 = 0x800000022F78E3C0;
    }

    if (v12 <= 1)
    {
      v19 = v23;
      v22 = v24;
    }

    v25 = v12 <= 4;
    if (v12 <= 4)
    {
      v26 = v19;
    }

    else
    {
      v26 = v13;
    }

    if (v25)
    {
      v27 = v22;
    }

    else
    {
      v27 = v16;
    }

    v92 = v26;
    v93 = v27;

    MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

    v29 = v92;
    v28 = v27;
    v30 = sub_22F7417F0();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v7;
    v32 = sub_22F1229E8(v29, v28);
    v34 = v7[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      __break(1u);
      goto LABEL_98;
    }

    v38 = v33;
    if (v7[3] < v37)
    {
      sub_22F125718(v37, v31);
      v32 = sub_22F1229E8(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_103;
      }

LABEL_43:
      if (v38)
      {
        goto LABEL_2;
      }

      goto LABEL_44;
    }

    if (v31)
    {
      goto LABEL_43;
    }

    v43 = v32;
    sub_22F1341C4();
    v32 = v43;
    if (v38)
    {
LABEL_2:
      v8 = v32;

      v7 = v92;
      v9 = v92[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v30;

      continue;
    }

LABEL_44:
    v7 = v92;
    v92[(v32 >> 6) + 8] |= 1 << v32;
    v40 = (v7[6] + 16 * v32);
    *v40 = v29;
    v40[1] = v28;
    *(v7[7] + 8 * v32) = v30;
    v41 = v7[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v36)
    {
      goto LABEL_99;
    }

    v7[2] = v42;
  }

  while (v6 != 10);
  v44 = a1;
  v45 = a1 + 64;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 64);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v90 = v49;
  while (2)
  {
    while (2)
    {
      v51 = v50;
      while (2)
      {
        if (!v48)
        {
          while (1)
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v50 >= v49)
            {

              v85 = objc_opt_self();
              v86 = sub_22F740DF0();
              sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
              v91 = sub_22F740C80();
              [v85 sendEvent:v86 withPayload:v91];

              return;
            }

            v48 = *(v45 + 8 * v50);
            ++v51;
            if (v48)
            {
              goto LABEL_59;
            }
          }

LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v50 = v51;
LABEL_59:
        v52 = *(*(v44 + 56) + (__clz(__rbit64(v48)) | (v50 << 6)));
        if (v52 > 4)
        {
          if (v52 <= 6)
          {
            if (v52 == 5)
            {
              v53 = 0xD000000000000022;
              v54 = 0x800000022F78E440;
            }

            else
            {
              v53 = 0x457265696C74756FLL;
              v54 = 0xED0000797469746ELL;
            }
          }

          else if (v52 == 7)
          {
            v53 = 0xD000000000000020;
            v54 = 0x800000022F78E480;
          }

          else if (v52 == 8)
          {
            v53 = 0xD000000000000010;
            v54 = 0x800000022F78E4B0;
          }

          else
          {
            v53 = 0xD00000000000001FLL;
            v54 = 0x800000022F78E4D0;
          }
        }

        else if (v52 <= 1)
        {
          v53 = 0x6E65636552746F6ELL;
          v54 = 0xEF6867756F6E4574;
          if (!v52)
          {
            v53 = 0xD000000000000017;
            v54 = 0x800000022F78E3C0;
          }
        }

        else if (v52 == 2)
        {
          v53 = 0xD000000000000019;
          v54 = 0x800000022F78E3F0;
        }

        else if (v52 == 3)
        {
          v53 = 0x746E656D6F4D6F6ELL;
          v54 = 0xE900000000000073;
        }

        else
        {
          v53 = 0xD000000000000010;
          v54 = 0x800000022F78E420;
        }

        v48 &= v48 - 1;
        v92 = v53;
        v93 = v54;

        MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

        v56 = v92;
        v55 = v93;
        if (!v7[2] || (v57 = sub_22F1229E8(v92, v93), (v58 & 1) == 0) || (v59 = *(v7[7] + 8 * v57), objc_opt_self(), (v60 = swift_dynamicCastObjCClass()) == 0))
        {

          v61 = sub_22F740B70();
          v62 = sub_22F7415E0();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v92 = v64;
            *v63 = 136315138;
            v65 = sub_22F145F20(v56, v55, &v92);

            *(v63 + 4) = v65;
            _os_log_impl(&dword_22F0FC000, v61, v62, "Unable to parse result count for %s as a NSNumber!", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v64);
            v66 = v64;
            v45 = a1 + 64;
            MEMORY[0x2319033A0](v66, -1, -1);
            v67 = v63;
            v44 = a1;
            MEMORY[0x2319033A0](v67, -1, -1);
          }

          else
          {
          }

          v51 = v50;
          v49 = v90;
          continue;
        }

        break;
      }

      v68 = v60;
      v88 = v59;
      if (__OFADD__([v68 integerValue], 1))
      {
        goto LABEL_100;
      }

      v87 = sub_22F7417F0();
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v7;
      v71 = sub_22F1229E8(v56, v55);
      v72 = v7[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v7[3] >= v74)
      {
        if (v69)
        {
          v44 = a1;
          if ((v70 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v80 = v70;
          sub_22F1341C4();
          v81 = v80;
          v44 = a1;
          if ((v81 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

LABEL_90:

        v7 = v92;
        v78 = v92[7];
        v79 = *(v78 + 8 * v71);
        *(v78 + 8 * v71) = v87;

        v49 = v90;
        continue;
      }

      break;
    }

    v75 = v70;
    sub_22F125718(v74, v69);
    v76 = sub_22F1229E8(v56, v55);
    if ((v75 & 1) != (v77 & 1))
    {
      goto LABEL_103;
    }

    v71 = v76;
    v44 = a1;
    if (v75)
    {
      goto LABEL_90;
    }

LABEL_92:
    v7 = v92;
    v92[(v71 >> 6) + 8] |= 1 << v71;
    v82 = (v7[6] + 16 * v71);
    *v82 = v56;
    v82[1] = v55;
    *(v7[7] + 8 * v71) = v87;

    v83 = v7[2];
    v36 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (!v36)
    {
      v7[2] = v84;
      v49 = v90;
      continue;
    }

    break;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  sub_22F7420C0();
  __break(1u);
}

uint64_t sub_22F243B48(uint64_t a1)
{
  v2 = sub_22F73F690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(a1 + 16) universalStartDate];
  sub_22F73F640();

  sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578]);
  v8 = sub_22F740DB0();
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 16) universalStartDate];
    sub_22F73F640();

    v12 = sub_22F740DB0();
    v9(v6, v2);
    v10 = v12 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_22F243D0C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F3F6724(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F243EB8(v6);
  return sub_22F741BB0();
}

uint64_t sub_22F243E0C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a3(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_22F24417C(v14, a2, a4, a5);
  return sub_22F741BB0();
}

uint64_t sub_22F243EB8(void *a1)
{
  v37 = sub_22F73F690();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = a1[1];
  result = sub_22F742000();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ImportantEntitiesGraphInferenceMoment();
        v13 = sub_22F741200();
        *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;
      }

      v30 = v13 & 0xFFFFFFFFFFFFFF8;
      v39[0] = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v39[1] = v12;
      sub_22F2446DC(v39, v40, a1, v11);
      *(v30 + 16) = 0;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v9 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v9 >= 2)
  {
    v31 = v1;
    v32 = v9;
    v14 = (v3 + 8);
    v15 = -1;
    v16 = 1;
    v38 = *a1;
    v17 = v38;
    do
    {
      v34 = v16;
      v35 = v15;
      v18 = v38[v16];
      v33 = v17;
      v19 = v17;
      do
      {
        v20 = *v19;
        v21 = *(v18 + 16);

        v22 = [v21 universalStartDate];
        sub_22F73F640();

        v23 = [*(v20 + 16) universalStartDate];
        v24 = v36;
        sub_22F73F640();

        LOBYTE(v23) = sub_22F73F5D0();
        v25 = *v14;
        v26 = v24;
        v27 = v37;
        (*v14)(v26, v37);
        v25(v8, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v38)
        {
          goto LABEL_20;
        }

        v28 = *v19;
        v18 = v19[1];
        *v19 = v18;
        v19[1] = v28;
        --v19;
      }

      while (!__CFADD__(v15++, 1));
      v16 = v34 + 1;
      v17 = v33 + 1;
      v15 = v35 - 1;
    }

    while (v34 + 1 != v32);
  }

  return result;
}