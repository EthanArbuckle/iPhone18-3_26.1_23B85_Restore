PhotosIntelligence::StoryMusicCurationSong::SongType_optional __swiftcall StoryMusicCurationSong.SongType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StoryMusicCurationSong.SongType.rawValue.getter()
{
  result = 0xD000000000000011;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C7138730@<X0>(unint64_t *a1@<X8>)
{
  result = StoryMusicCurationSong.SongType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C7138814()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217C68);
  __swift_project_value_buffer(v0, qword_1EC217C68);
  return sub_1C754FEFC();
}

uint64_t static StoryMusicCurationSong.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213E00 != -1)
  {
    OUTLINED_FUNCTION_8_29();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC217C68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t StoryMusicCurationSong.init(songType:id:artist:title:genres:moods:maestroKeywords:arousal:valence:clearedForPhotosMemoriesExport:preferenceScore:songURL:memoryAppropriateScore:memoryNotAppropriateScore:regionAndLanguage:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, uint64_t a13, char a14, char a15, uint64_t a16, char a17, __int128 a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24)
{
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12 & 1;
  *(a9 + 72) = a13;
  result = a14 & 1;
  *(a9 + 80) = a14 & 1;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 121) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;
  *(a9 + 128) = a18;
  *(a9 + 144) = a19;
  *(a9 + 152) = a20 & 1;
  *(a9 + 160) = a21;
  *(a9 + 168) = a22 & 1;
  *(a9 + 176) = a23;
  *(a9 + 184) = a24;
  return result;
}

uint64_t sub_1C71389DC()
{
  v0 = sub_1C7551B2C();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C7138A2C(char a1)
{
  result = 0x65707954676E6F73;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6C6173756F7261;
      break;
    case 4:
      result = 0x65636E656C6176;
      break;
    case 5:
      result = 0x747369747261;
      break;
    case 6:
      result = 0x7365726E6567;
      break;
    case 7:
      result = 0x73646F6F6DLL;
      break;
    case 8:
      result = 0x4B6F72747365616DLL;
      break;
    case 9:
      result = 0x6E65726566657270;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0x4C5255676E6F73;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7138BFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C71389DC();
  *a1 = result;
  return result;
}

unint64_t sub_1C7138C2C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C7138A2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C7138C60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C7138A28();
  *a1 = result;
  return result;
}

uint64_t sub_1C7138C94(uint64_t a1)
{
  v2 = sub_1C7139DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7138CD0(uint64_t a1)
{
  v2 = sub_1C7139DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryMusicCurationSong.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C80);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1C7139DFC();
  sub_1C7551FFC();
  if (v2)
  {
    v113 = v2;
    v14 = 0;
    v15 = 0;
    LODWORD(v16) = 0;
    LODWORD(v10) = 0;
    v5 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v12 = v7;
    LOBYTE(v75[0]) = 0;
    sub_1C7139E50();
    OUTLINED_FUNCTION_15_30();
    sub_1C7551C1C();
    v13 = v76[0];
    OUTLINED_FUNCTION_0_71(1);
    LODWORD(v16) = v12;
    v20 = sub_1C7551BBC();
    v73 = v21;
    OUTLINED_FUNCTION_0_71(5);
    v66 = sub_1C7551BBC();
    v72 = v22;
    OUTLINED_FUNCTION_0_71(2);
    v65 = sub_1C7551BBC();
    v71 = v23;
    OUTLINED_FUNCTION_0_71(3);
    v24 = sub_1C7551B8C();
    v63 = v20;
    v64 = v24;
    v111 = v25 & 1;
    OUTLINED_FUNCTION_0_71(4);
    v62 = sub_1C7551B8C();
    v109 = v26 & 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    LOBYTE(v75[0]) = 6;
    sub_1C6FF60E4(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_15_30();
    v68 = v27;
    v113 = v28;
    v15 = v10;
    sub_1C7551BAC();
    v70 = v76[0];
    LOBYTE(v75[0]) = 7;
    OUTLINED_FUNCTION_15_30();
    OUTLINED_FUNCTION_13_32();
    v69 = v76[0];
    LOBYTE(v75[0]) = 8;
    OUTLINED_FUNCTION_15_30();
    OUTLINED_FUNCTION_13_32();
    v113 = 0;
    v68 = v76[0];
    OUTLINED_FUNCTION_0_71(9);
    v29 = v113;
    v30 = sub_1C7551B8C();
    v113 = v29;
    if (v29 || (v16 = v30, v107 = v31 & 1, OUTLINED_FUNCTION_0_71(11), v32 = v113, v33 = sub_1C7551B6C(), v67 = v34, (v113 = v32) != 0))
    {
      v35 = OUTLINED_FUNCTION_5_41();
      v36(v35);
      v18 = 0;
      v14 = 1;
      OUTLINED_FUNCTION_4_39();
      v17 = 1;
    }

    else
    {
      v37 = v33;
      OUTLINED_FUNCTION_0_71(12);
      v38 = v113;
      v61 = sub_1C7551B8C();
      v113 = v38;
      if (!v38)
      {
        v104 = v39 & 1;
        OUTLINED_FUNCTION_0_71(13);
        v40 = v113;
        v60 = sub_1C7551B8C();
        v113 = v40;
        if (!v40)
        {
          v102 = v41 & 1;
          v100 = 14;
          v44 = sub_1C7551BBC();
          v58 = v45;
          v59 = v44;
          v113 = 0;
          v46 = OUTLINED_FUNCTION_5_41();
          v47(v46);
          v48 = v13;
          LOBYTE(v75[0]) = v13;
          v49 = v63;
          v50 = v72;
          v75[1] = v63;
          v75[2] = v73;
          v51 = v71;
          v75[3] = v65;
          v75[4] = v71;
          v75[5] = v66;
          v75[6] = v72;
          v75[7] = v64;
          v53 = v111;
          LOBYTE(v75[8]) = v111;
          v75[9] = v62;
          v54 = v109;
          LOBYTE(v75[10]) = v109;
          v75[11] = v70;
          v75[12] = v69;
          v75[13] = v68;
          v75[14] = v16;
          v55 = v107;
          LOWORD(v75[15]) = v107;
          v75[16] = v37;
          v75[17] = v67;
          v75[18] = v61;
          v56 = v104;
          LOBYTE(v75[19]) = v104;
          v75[20] = v60;
          v57 = v102;
          LOBYTE(v75[21]) = v102;
          v75[22] = v59;
          v75[23] = v58;
          memcpy(a2, v75, 0xC0uLL);
          sub_1C7080654(v75, v76);
          __swift_destroy_boxed_opaque_existential_1(v74);
          LOBYTE(v76[0]) = v48;
          *(v76 + 1) = v112[0];
          HIDWORD(v76[0]) = *(v112 + 3);
          v76[1] = v49;
          v76[2] = v73;
          v76[3] = v65;
          v76[4] = v51;
          v76[5] = v66;
          v76[6] = v50;
          v76[7] = v64;
          v77 = v53;
          *v78 = *v110;
          *&v78[3] = *&v110[3];
          v79 = v62;
          v80 = v54;
          *&v81[3] = *&v108[3];
          *v81 = *v108;
          v82 = v70;
          v83 = v69;
          v84 = v68;
          v85 = v16;
          v86 = v55;
          v87 = 0;
          v88 = v105;
          v89 = v106;
          v90 = v37;
          v91 = v67;
          v92 = v61;
          v93 = v56;
          *&v94[3] = *&v103[3];
          *v94 = *v103;
          v95 = v60;
          v96 = v57;
          *v97 = *v101;
          *&v97[3] = *&v101[3];
          v98 = v59;
          v99 = v58;
          return sub_1C70806B0(v76);
        }
      }

      v42 = OUTLINED_FUNCTION_5_41();
      v43(v42);
      v14 = 1;
      OUTLINED_FUNCTION_4_39();
      v17 = 1;
      v18 = 1;
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(v74);
  if (v14)
  {

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
LABEL_6:

    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (!v16)
  {
LABEL_7:
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (v10)
  {
LABEL_8:

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!v5)
  {
LABEL_9:
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_17:
    if (!v18)
    {
      return result;
    }
  }

LABEL_16:

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:

  if ((v18 & 1) == 0)
  {
    return result;
  }
}

uint64_t StoryMusicCurationSong.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C90);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v46 = *(v1 + 2);
  v47 = v10;
  v11 = *(v1 + 3);
  v44 = *(v1 + 4);
  v45 = v11;
  v12 = *(v1 + 5);
  v42 = *(v1 + 6);
  v43 = v12;
  v41 = *(v1 + 7);
  v51 = v1[64];
  v13 = *(v1 + 9);
  v40 = v1[80];
  v14 = *(v1 + 12);
  v38 = *(v1 + 11);
  v39 = v13;
  v15 = *(v1 + 14);
  v36 = *(v1 + 13);
  v37 = v14;
  LODWORD(v7) = v1[121];
  v34 = v1[120];
  v35 = v7;
  v16 = *(v1 + 17);
  v31 = *(v1 + 16);
  v32 = v16;
  v33 = v15;
  v29 = *(v1 + 18);
  v30 = v1[152];
  v27 = *(v1 + 20);
  v28 = v1[168];
  v17 = *(v1 + 23);
  v26 = *(v1 + 22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7139DFC();
  sub_1C755200C();
  LOBYTE(v49) = v9;
  v52 = 0;
  sub_1C7139EA4();
  OUTLINED_FUNCTION_7_34();
  v18 = v48;
  sub_1C7551D2C();
  if (v18)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v48 = v17;
  v20 = v5;
  LOBYTE(v49) = 1;
  sub_1C7551CCC();
  LOBYTE(v49) = 5;
  sub_1C7551CCC();
  LOBYTE(v49) = 2;
  sub_1C7551CCC();
  v49 = v41;
  LOBYTE(v50) = v51;
  v52 = 3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215778);
  v22 = sub_1C7139EF8();
  OUTLINED_FUNCTION_7_34();
  OUTLINED_FUNCTION_17_31();
  v49 = v39;
  LOBYTE(v50) = v40;
  OUTLINED_FUNCTION_1_53(4);
  OUTLINED_FUNCTION_17_31();
  v44 = v22;
  v45 = v21;
  v49 = v38;
  v52 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217538);
  sub_1C7139F74();
  OUTLINED_FUNCTION_7_34();
  v46 = v8;
  v47 = v3;
  OUTLINED_FUNCTION_12_32();
  v49 = v37;
  OUTLINED_FUNCTION_1_53(7);
  OUTLINED_FUNCTION_12_32();
  v49 = v36;
  OUTLINED_FUNCTION_1_53(8);
  OUTLINED_FUNCTION_12_32();
  LOBYTE(v49) = v35;
  v52 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217C98);
  sub_1C713A01C();
  OUTLINED_FUNCTION_7_34();
  sub_1C7551D2C();
  v49 = v33;
  LOBYTE(v50) = v34;
  OUTLINED_FUNCTION_1_53(9);
  sub_1C7551D2C();
  v49 = v31;
  v50 = v32;
  v52 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
  sub_1C70950A8();
  OUTLINED_FUNCTION_7_34();
  sub_1C7551D2C();
  v49 = v29;
  LOBYTE(v50) = v30;
  OUTLINED_FUNCTION_1_53(12);
  sub_1C7551D2C();
  v49 = v27;
  LOBYTE(v50) = v28;
  OUTLINED_FUNCTION_1_53(13);
  sub_1C7551D2C();
  v23 = v47;
  v49 = v26;
  v50 = v48;
  OUTLINED_FUNCTION_1_53(14);
  v24 = v46;
  sub_1C7551D2C();
  return (*(v20 + 8))(v24, v23);
}

uint64_t StoryMusicCurationSong.hash(into:)()
{
  sub_1C75505AC();

  return sub_1C6FF87E8();
}

uint64_t StoryMusicCurationSong.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C6FF87E8();
  return sub_1C7551FAC();
}

uint64_t sub_1C7139A24()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C6FF87E8();
  return sub_1C7551FAC();
}

uint64_t static StoryMusicCurationSong.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  return sub_1C6FA12A8(v2, v3);
}

uint64_t static StoryMusicCurationSong.sortSongsByMood(_:mood:)(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  if (qword_1EC213E00 != -1)
  {
    OUTLINED_FUNCTION_8_29();
  }

  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EC217C68);
  sub_1C709D4BC(__dst, v10);
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();
  sub_1C713A098(__dst);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C6F765A4(__dst[1], __dst[2], v10);
    _os_log_impl(&dword_1C6F5C000, v4, v5, "[sortSongsByMood] for mood: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1CCA5F8E0](v7, -1, -1);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
  }

  v9 = a1;
  sub_1C709D4BC(__dst, v10);
  sub_1C75504FC();
  sub_1C7139D44(&v9, __dst);
  return v9;
}

BOOL sub_1C7139C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  if (*(a1 + 64))
  {
    v3 = 0.1;
  }

  v4 = *(a1 + 72);
  if (*(a1 + 80))
  {
    v4 = 1.0;
  }

  if (*(a2 + 64))
  {
    v6 = 0.1;
  }

  else
  {
    v5 = *(a2 + 56);
    v6 = v5;
  }

  if (*(a2 + 80))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = *(a2 + 72);
  }

  v8 = *(a3 + 104);
  v9 = *(a3 + 108);
  v10 = hypotf(v3 - v8, v4 - v9);
  return v10 < hypotf(v6 - v8, v7 - v9);
}

uint64_t sub_1C7139D44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1C709D4BC(a2, v9);
  sub_1C709D4BC(a2, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D5C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C709D4BC(a2, v9);
  sub_1C713A5F4(v8, a2);
  *a1 = v4;
  sub_1C713A098(a2);
  sub_1C713A098(a2);
  return sub_1C713A098(a2);
}

unint64_t sub_1C7139DFC()
{
  result = qword_1EDD09950;
  if (!qword_1EDD09950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09950);
  }

  return result;
}

unint64_t sub_1C7139E50()
{
  result = qword_1EC217C88;
  if (!qword_1EC217C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217C88);
  }

  return result;
}

unint64_t sub_1C7139EA4()
{
  result = qword_1EDD09960;
  if (!qword_1EDD09960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09960);
  }

  return result;
}

unint64_t sub_1C7139EF8()
{
  result = qword_1EDD069F0;
  if (!qword_1EDD069F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD069F0);
  }

  return result;
}

unint64_t sub_1C7139F74()
{
  result = qword_1EDD06A90;
  if (!qword_1EDD06A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217538);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06A90);
  }

  return result;
}

unint64_t sub_1C713A01C()
{
  result = qword_1EDD06A38;
  if (!qword_1EDD06A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06A38);
  }

  return result;
}

unint64_t sub_1C713A0F0()
{
  result = qword_1EC217CA0;
  if (!qword_1EC217CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217CA0);
  }

  return result;
}

unint64_t sub_1C713A148()
{
  result = qword_1EC217CA8;
  if (!qword_1EC217CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217CA8);
  }

  return result;
}

uint64_t sub_1C713A1A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C713A1E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationSong.SongType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C713A338(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C713A3C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C713A49C()
{
  result = qword_1EC217CB0;
  if (!qword_1EC217CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217CB0);
  }

  return result;
}

unint64_t sub_1C713A4F4()
{
  result = qword_1EDD09940;
  if (!qword_1EDD09940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09940);
  }

  return result;
}

unint64_t sub_1C713A54C()
{
  result = qword_1EDD09948;
  if (!qword_1EDD09948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09948);
  }

  return result;
}

unint64_t sub_1C713A5A0()
{
  result = qword_1EDD09958;
  if (!qword_1EDD09958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09958);
  }

  return result;
}

uint64_t sub_1C713A5F4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  sub_1C709D4BC(a2, v10);
  sub_1C709D4BC(a2, v10);
  result = sub_1C7551D7C();
  if (result >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        sub_1C713A730(0, v4, 1, a1, a2);
LABEL_11:
        sub_1C713A098(a2);
        return sub_1C713A098(a2);
      }

LABEL_10:
      sub_1C713A098(a2);
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1C709D4BC(a2, v10);
      sub_1C713A8B0(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;

      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C713A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *(a5 + 104);
    v10 = *(a5 + 108);
    v11 = *a4 + 192 * a3 - 192;
    v12 = a1 - a3;
    while (2)
    {
      v13 = v12;
      v14 = v11;
      do
      {
        v15 = *(v14 + 248);
        if (*(v14 + 256))
        {
          v15 = 0.1;
        }

        v16 = *(v14 + 264);
        if (*(v14 + 272))
        {
          v16 = 1.0;
        }

        if (*(v14 + 64))
        {
          v18 = 0.1;
        }

        else
        {
          v17 = *(v14 + 56);
          v18 = v17;
        }

        if (*(v14 + 80))
        {
          v19 = 1.0;
        }

        else
        {
          v19 = *(v14 + 72);
        }

        v20 = hypotf(v15 - v9, v16 - v10);
        if (v20 >= hypotf(v18 - v9, v19 - v10))
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return;
        }

        memcpy(__dst, (v14 + 192), sizeof(__dst));
        memcpy((v14 + 192), v14, 0xC0uLL);
        memcpy(v14, __dst, 0xC0uLL);
        v14 -= 192;
      }

      while (!__CFADD__(v13++, 1));
      ++v6;
      v11 += 192;
      --v12;
      if (v6 != a2)
      {
        continue;
      }

      break;
    }
  }

  sub_1C713A098(a5);
}

uint64_t sub_1C713A8B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    sub_1C709D4BC(a5, v129);
    sub_1C709D4BC(a5, v129);
    v9 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    sub_1C709D4BC(a5, v129);
    sub_1C709D4BC(a5, v129);
    v120 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_114;
    }

    goto LABEL_151;
  }

  sub_1C709D4BC(a5, v129);
  sub_1C709D4BC(a5, v129);
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = (*a3 + 192 * v8);
      memcpy(__dst, v12, sizeof(__dst));
      memcpy(v127, v12, sizeof(v127));
      memcpy(v129, (v11 + 192 * v10), 0xC0uLL);
      memcpy(__src, (v11 + 192 * v10), sizeof(__src));
      v13 = sub_1C7139C84(v127, __src, a5);
      if (v5)
      {
        memcpy(v124, __src, sizeof(v124));
        sub_1C7080654(__dst, v125);
        sub_1C7080654(v129, v125);
        sub_1C70806B0(v124);
        memcpy(v125, v127, sizeof(v125));
        sub_1C70806B0(v125);
LABEL_125:

        v109 = a5;
        sub_1C713A098(a5);
        sub_1C713A098(a5);
        return sub_1C713A098(v109);
      }

      v14 = v13;
      v15 = v9;
      memcpy(v124, __src, sizeof(v124));
      sub_1C7080654(__dst, v123);
      sub_1C7080654(v129, v123);
      sub_1C70806B0(v124);
      memcpy(v125, v127, sizeof(v125));
      sub_1C70806B0(v125);
      v16 = v11 + 192 * v10;
      v17 = 192 * v10;
      v18 = (v16 + 464);
      v19 = v10 + 2;
      do
      {
        v20 = v19;
        if (++v8 >= v7)
        {
          v8 = v7;
          if (!v14)
          {
            goto LABEL_31;
          }

          goto LABEL_21;
        }

        v21 = *(v18 - 3);
        if (*(v18 - 16))
        {
          v21 = 0.1;
        }

        v22 = *(v18 - 1);
        if (*v18)
        {
          v22 = 1.0;
        }

        if (*(v18 - 208))
        {
          v24 = 0.1;
        }

        else
        {
          v23 = *(v18 - 27);
          v24 = v23;
        }

        if (*(v18 - 192))
        {
          v25 = 1.0;
        }

        else
        {
          v25 = *(v18 - 25);
        }

        v26 = *(a5 + 104);
        v27 = *(a5 + 108);
        v28 = hypotf(v21 - v26, v22 - v27);
        v29 = v14 ^ (v28 >= hypotf(v24 - v26, v25 - v27));
        v18 += 24;
        v19 = v20 + 1;
      }

      while ((v29 & 1) != 0);
      if (!v14)
      {
        goto LABEL_31;
      }

LABEL_21:
      if (v8 < v10)
      {
        goto LABEL_150;
      }

      if (v10 < v8)
      {
        if (v7 >= v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = v7;
        }

        v31 = 192 * v30 - 192;
        v32 = v8;
        v33 = v10;
        do
        {
          if (v33 != --v32)
          {
            v34 = v8;
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_155;
            }

            memcpy(v123, (v35 + v17), sizeof(v123));
            memmove((v35 + v17), (v35 + v31), 0xC0uLL);
            memcpy((v35 + v31), v123, 0xC0uLL);
            v8 = v34;
          }

          ++v33;
          v31 -= 192;
          v17 += 192;
        }

        while (v33 < v32);
      }

LABEL_31:
      v9 = v15;
    }

    v36 = a3[1];
    if (v8 < v36)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_147;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v8 < v10)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v9 = v97;
    }

    v52 = *(v9 + 2);
    v53 = v52 + 1;
    if (v52 >= *(v9 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v9 = v98;
    }

    *(v9 + 2) = v53;
    v54 = v9 + 32;
    v55 = &v9[16 * v52 + 32];
    *v55 = v10;
    *(v55 + 1) = v8;
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_156;
    }

    if (v52)
    {
      v112 = v9 + 32;
      v114 = v8;
      while (1)
      {
        v56 = v53 - 1;
        v57 = &v54[16 * v53 - 16];
        v58 = &v9[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v9 + 4);
          v60 = *(v9 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_80:
          if (v62)
          {
            goto LABEL_133;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_136;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_141;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v53 < 2)
        {
          goto LABEL_135;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_95:
        if (v77)
        {
          goto LABEL_138;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_140;
        }

        if (v84 < v76)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v56 - 1 >= v53)
        {
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
          goto LABEL_149;
        }

        v88 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v89 = &v54[16 * v56 - 16];
        v90 = *v89;
        v91 = v56;
        v92 = &v54[16 * v56];
        v93 = *(v92 + 1);
        v118 = (v88 + 192 * *v92);
        v120 = (v88 + 192 * *v89);
        v94 = (v88 + 192 * v93);
        sub_1C709D4BC(a5, v129);
        sub_1C713B1FC(v120, v118, v94, v116, a5);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v93 < v90)
        {
          goto LABEL_128;
        }

        v95 = *(v9 + 2);
        if (v91 > v95)
        {
          goto LABEL_129;
        }

        *v89 = v90;
        *(v89 + 1) = v93;
        if (v91 >= v95)
        {
          goto LABEL_130;
        }

        v96 = v91;
        v53 = v95 - 1;
        sub_1C7423CF4(v92 + 16, v95 - 1 - v96, v92);
        *(v9 + 2) = v95 - 1;
        v54 = v9 + 32;
        v8 = v114;
        if (v95 <= 2)
        {
          goto LABEL_109;
        }
      }

      v63 = &v54[16 * v53];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_131;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_132;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_134;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_137;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_145;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_112;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_148;
  }

  if (v10 + a4 >= v36)
  {
    v37 = a3[1];
  }

  else
  {
    v37 = v10 + a4;
  }

  if (v37 < v10)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v9 = sub_1C7420830();
LABEL_114:
    v100 = v9 + 16;
    v99 = *(v9 + 2);
    for (i = v9; ; v9 = i)
    {
      if (v99 < 2)
      {
        sub_1C713A098(a5);
        sub_1C713A098(a5);

        sub_1C713A098(a5);
        sub_1C713A098(a5);
        return sub_1C713A098(a5);
      }

      v101 = *a3;
      if (!*a3)
      {
        goto LABEL_154;
      }

      v102 = &v9[16 * v99];
      v103 = *v102;
      v104 = &v100[2 * v99];
      v105 = *(v104 + 1);
      v117 = (v101 + 192 * *v104);
      v119 = (v101 + 192 * *v102);
      v106 = (v101 + 192 * v105);
      sub_1C709D4BC(a5, v129);
      sub_1C713B1FC(v119, v117, v106, v112, a5);
      if (v120)
      {
        break;
      }

      if (v105 < v103)
      {
        goto LABEL_142;
      }

      if (v99 - 2 >= *v100)
      {
        goto LABEL_143;
      }

      *v102 = v103;
      *(v102 + 1) = v105;
      v107 = *v100 - v99;
      if (*v100 < v99)
      {
        goto LABEL_144;
      }

      v99 = *v100 - 1;
      sub_1C7423CF4(v104 + 16, v107, v104);
      *v100 = v99;
    }

    v109 = a5;
    sub_1C713A098(a5);
    sub_1C713A098(a5);

    sub_1C713A098(a5);
    sub_1C713A098(a5);
    return sub_1C713A098(v109);
  }

  if (v8 == v37)
  {
    goto LABEL_59;
  }

  v113 = v9;
  v38 = *a3;
  v39 = *(a5 + 104);
  v40 = *(a5 + 108);
  v41 = *a3 + 192 * v8 - 192;
  v42 = v10 - v8;
LABEL_42:
  v43 = v42;
  v44 = v41;
  while (1)
  {
    v45 = *(v44 + 248);
    if (*(v44 + 256))
    {
      v45 = 0.1;
    }

    v46 = *(v44 + 264);
    if (*(v44 + 272))
    {
      v46 = 1.0;
    }

    if (*(v44 + 64))
    {
      v48 = 0.1;
    }

    else
    {
      v47 = *(v44 + 56);
      v48 = v47;
    }

    if (*(v44 + 80))
    {
      v49 = 1.0;
    }

    else
    {
      v49 = *(v44 + 72);
    }

    v50 = hypotf(v45 - v39, v46 - v40);
    if (v50 >= hypotf(v48 - v39, v49 - v40))
    {
LABEL_57:
      v41 += 192;
      --v42;
      if (++v8 == v37)
      {
        v9 = v113;
        v8 = v37;
        goto LABEL_59;
      }

      goto LABEL_42;
    }

    if (!v38)
    {
      break;
    }

    memcpy(v129, (v44 + 192), 0xC0uLL);
    memcpy((v44 + 192), v44, 0xC0uLL);
    memcpy(v44, v129, 0xC0uLL);
    v44 -= 192;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_57;
    }
  }

  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_153:
  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_154:
  sub_1C713A098(a5);
  __break(1u);
LABEL_155:
  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_156:
  sub_1C713A098(a5);
  sub_1C713A098(a5);
  __break(1u);
LABEL_157:
  sub_1C713A098(a5);
  result = sub_1C713A098(a5);
  __break(1u);
  return result;
}

uint64_t sub_1C713B1FC(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 192;
  v11 = (a3 - a2) / 192;
  if (v10 < v11)
  {
    sub_1C741E6AC(a1, (a2 - a1) / 192, a4);
    v12 = &v6[192 * v10];
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_48;
      }

      v14 = *(v8 + 56);
      if (*(v8 + 64))
      {
        v14 = 0.1;
      }

      v15 = *(v8 + 72);
      if (*(v8 + 80))
      {
        v15 = 1.0;
      }

      if (v6[64])
      {
        v17 = 0.1;
      }

      else
      {
        v16 = *(v6 + 7);
        v17 = v16;
      }

      v18 = v6[80] ? 1.0 : *(v6 + 9);
      v19 = *(a5 + 104);
      v20 = *(a5 + 108);
      v21 = hypotf(v14 - v19, v15 - v20);
      if (v21 >= hypotf(v17 - v19, v18 - v20))
      {
        break;
      }

      v22 = v8;
      v23 = v9 == v8;
      v8 += 192;
      if (!v23)
      {
        goto LABEL_22;
      }

LABEL_23:
      v9 += 192;
    }

    v22 = v6;
    v23 = v9 == v6;
    v6 += 192;
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_22:
    memmove(v9, v22, 0xC0uLL);
    goto LABEL_23;
  }

  sub_1C741E6AC(a2, (a3 - a2) / 192, a4);
  v24 = &v6[192 * v11];
LABEL_25:
  for (i = 0; ; i -= 192)
  {
    v12 = &v24[i];
    if (&v24[i] <= v6 || v8 <= v9)
    {
      break;
    }

    v27 = *(v12 - 17);
    if (*(v12 - 128))
    {
      v27 = 0.1;
    }

    v28 = *(v12 - 15);
    if (*(v12 - 112))
    {
      v28 = 1.0;
    }

    if (*(v8 - 128))
    {
      v30 = 0.1;
    }

    else
    {
      v29 = *(v8 - 136);
      v30 = v29;
    }

    if (*(v8 - 112))
    {
      v31 = 1.0;
    }

    else
    {
      v31 = *(v8 - 120);
    }

    v32 = *(a5 + 104);
    v33 = *(a5 + 108);
    v34 = hypotf(v27 - v32, v28 - v33);
    if (v34 < hypotf(v30 - v32, v31 - v33))
    {
      v35 = (v8 - 192);
      v36 = &v7[i];
      v7 = &v7[i - 192];
      v24 += i;
      v23 = v36 == v8;
      v8 -= 192;
      if (!v23)
      {
        memmove(v7, v35, 0xC0uLL);
        v8 = v35;
      }

      goto LABEL_25;
    }

    if (v12 != &v7[i])
    {
      memmove(&v7[i - 192], v12 - 192, 0xC0uLL);
    }
  }

LABEL_48:
  v37 = (v12 - v6) / 192;
  if (v8 != v6 || v8 >= &v6[192 * v37])
  {
    memmove(v8, v6, 192 * v37);
  }

  sub_1C713A098(a5);
  return 1;
}

uint64_t static FreeformStoryType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 5)
  {
    case 1u:
      if ((v3 & 0xE0) != 0x20)
      {
        goto LABEL_17;
      }

      v4 = ((v3 ^ v2) & 1) == 0;
      return v4 & 1;
    case 2u:
      if (v2 == 64)
      {
        if (v3 == 64)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      if (v3 != 65)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3u:
      if (v2 == 96)
      {
        if (v3 != 96)
        {
          goto LABEL_17;
        }

LABEL_15:
        v4 = 1;
        return v4 & 1;
      }

      if (v3 == 97)
      {
        goto LABEL_15;
      }

LABEL_17:
      v4 = 0;
      return v4 & 1;
    case 4u:
      if (v3 != 128)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    default:
      if (v3 >= 0x20)
      {
        goto LABEL_17;
      }

      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
  }
}

void sub_1C713B574(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C755068C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

unint64_t FreeformStoryType.description.getter()
{
  v1 = *v0;
  result = 0x79636167656CLL;
  switch(v1 >> 5)
  {
    case 1u:
      if (v1)
      {
        result = 0xD00000000000001BLL;
      }

      else
      {
        result = 0xD00000000000001ALL;
      }

      break;
    case 2u:
      if (v1 == 64)
      {
        result = 0xD000000000000012;
      }

      else
      {
        result = 0xD00000000000001FLL;
      }

      break;
    case 3u:
      if (v1 == 96)
      {
        result = 0x6F7365527473616CLL;
      }

      else
      {
        result = 0xD000000000000013;
      }

      break;
    case 4u:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void static FreeformStoryDecoder.propertyListDecoder(for:)()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19[-v4];
  v6 = sub_1C7551A1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13];
  if (qword_1EC213E08 != -1)
  {
    OUTLINED_FUNCTION_17_32();
  }

  v15 = __swift_project_value_buffer(v2, qword_1EC25B678);
  sub_1C712A774(v15, v5, &qword_1EC216B50);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C6FD7FC8(v5, &qword_1EC216B50);
    sub_1C713DF3C();
    OUTLINED_FUNCTION_166_0();
    *v16 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v14, v5, v6);
    sub_1C754DB8C();
    swift_allocObject();
    sub_1C754DB7C();
    (*(v8 + 16))(v11, v14, v6);
    v20[3] = sub_1C6F65BE8(0, &qword_1EDD10110);
    v20[0] = v1;
    v17 = v1;
    v18 = sub_1C754DB6C();
    sub_1C709B0DC(v20, v11);
    v18(v19, 0);
    (*(v8 + 8))(v14, v6);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C713B9AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461727563657270 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172756374736F70 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C713BA7C(char a1)
{
  if (a1)
  {
    return 0x6172756374736F70;
  }

  else
  {
    return 0x7461727563657270;
  }
}

uint64_t sub_1C713BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713B9AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C713BAF4(uint64_t a1)
{
  v2 = sub_1C713DF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713BB30(uint64_t a1)
{
  v2 = sub_1C713DF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713BB6C(uint64_t a1)
{
  v2 = sub_1C713DFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713BBA8(uint64_t a1)
{
  v2 = sub_1C713DFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713BBE4(uint64_t a1)
{
  v2 = sub_1C713E038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713BC20(uint64_t a1)
{
  v2 = sub_1C713E038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryType.Stage.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CC0);
  OUTLINED_FUNCTION_3_0();
  v24 = v4;
  v25 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v23 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CC8);
  OUTLINED_FUNCTION_3_0();
  v22[0] = v8;
  v22[1] = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_251();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CD0);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C713DF90();
  sub_1C755200C();
  v17 = (v12 + 8);
  if (v16)
  {
    sub_1C713DFE4();
    v18 = v23;
    sub_1C7551C6C();
    (*(v24 + 8))(v18, v25);
  }

  else
  {
    sub_1C713E038();
    sub_1C7551C6C();
    v19 = OUTLINED_FUNCTION_41_13();
    v21(v19, v20);
  }

  (*v17)(v15, v10);
  OUTLINED_FUNCTION_125();
}

uint64_t FreeformStoryType.Stage.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void FreeformStoryType.Stage.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v45 = v0;
  v3 = v2;
  v42 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CE0);
  OUTLINED_FUNCTION_3_0();
  v41 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CE8);
  OUTLINED_FUNCTION_3_0();
  v40 = v10;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CF0);
  OUTLINED_FUNCTION_3_0();
  v43 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_6();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C713DF90();
  v17 = v45;
  sub_1C7551FFC();
  if (v17)
  {
    goto LABEL_10;
  }

  v38 = v9;
  v39 = v13;
  v45 = v3;
  v18 = v44;
  v19 = sub_1C7551C5C();
  v20 = sub_1C6FD80E0(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = v20;
LABEL_9:
    v33 = sub_1C75518EC();
    OUTLINED_FUNCTION_166_0();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v35 = &type metadata for FreeformStoryType.Stage;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v1, v14);
    v3 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  v37[1] = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    v25 = sub_1C6FD80C8(v22 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 == v29 >> 1)
    {
      if (v24)
      {
        sub_1C713DFE4();
        v30 = v8;
        OUTLINED_FUNCTION_5_3();
        v31 = v42;
        v32 = v43;
        swift_unknownObjectRelease();
        (*(v41 + 8))(v30, v18);
      }

      else
      {
        sub_1C713E038();
        v36 = v39;
        OUTLINED_FUNCTION_5_3();
        v31 = v42;
        v32 = v43;
        swift_unknownObjectRelease();
        (*(v40 + 8))(v36, v38);
      }

      (*(v32 + 8))(v1, v27);
      *v31 = v24;
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_11;
    }

    v44 = v25;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t FreeformStoryType.prettyDescription.getter()
{
  v1 = *v0;
  result = 0x79636167654CLL;
  switch(v1 >> 5)
  {
    case 1u:
      if (v1)
      {
        result = 0xD00000000000001CLL;
      }

      else
      {
        result = 0xD00000000000001BLL;
      }

      break;
    case 2u:
      if (v1 == 64)
      {
        result = 0x42206C6175736956;
      }

      else
      {
        result = 0xD00000000000001ALL;
      }

      break;
    case 3u:
      if (v1 == 96)
      {
        result = 0x736552207473614CLL;
      }

      else
      {
        result = 0x61622D7469617254;
      }

      break;
    case 4u:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t FreeformStoryType.analyticsValue.getter()
{
  v1 = *v0;
  result = 13;
  switch(v1 >> 5)
  {
    case 1u:
      v3 = (v1 & 1) == 0;
      v4 = 11;
      v5 = 18;
      goto LABEL_7;
    case 2u:
      if (v1 == 64)
      {
        result = 14;
      }

      else
      {
        result = 15;
      }

      break;
    case 3u:
      if (v1 == 96)
      {
        result = 16;
      }

      else
      {
        result = 12;
      }

      break;
    case 4u:
      return result;
    default:
      v3 = (v1 & 1) == 0;
      v4 = 10;
      v5 = 17;
LABEL_7:
      if (v3)
      {
        result = v4;
      }

      else
      {
        result = v5;
      }

      break;
  }

  return result;
}

uint64_t static FreeformStoryType.~= infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 5)
  {
    case 1u:
      return (v3 & 0xE0) == 0x20;
    case 2u:
      if (v2 == 64)
      {
        if (v3 == 64)
        {
          return 1;
        }
      }

      else if (v3 == 65)
      {
        return 1;
      }

      return 0;
    case 3u:
      if (v2 != 96)
      {
        return v3 == 97;
      }

      return v3 == 96;
    case 4u:
      return v3 == 128;
    default:
      return v3 < 0x20;
  }
}

uint64_t sub_1C713C5F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7453686374697773 && a2 == 0xEB00000000656761)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C713C68C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656761746E6F6DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C6F6E6F726863 && a2 == 0xED00006C61636967;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C759C3C0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001C759C3A0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F7365527473616CLL && a2 == 0xEA00000000007472;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001C759C380 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x79636167656CLL && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C713C8D0(char a1)
{
  result = 0x656761746E6F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6F6C6F6E6F726863;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0x6F7365527473616CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x79636167656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C713C9C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C713CA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713C5F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C713CA80(uint64_t a1)
{
  v2 = sub_1C7140F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CABC(uint64_t a1)
{
  v2 = sub_1C7140F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713C68C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C713CB28(uint64_t a1)
{
  v2 = sub_1C7140D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CB64(uint64_t a1)
{
  v2 = sub_1C7140D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CBA0(uint64_t a1)
{
  v2 = sub_1C7140E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CBDC(uint64_t a1)
{
  v2 = sub_1C7140E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CC18(uint64_t a1)
{
  v2 = sub_1C7140D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CC54(uint64_t a1)
{
  v2 = sub_1C7140D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713C9C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C713CCC0(uint64_t a1)
{
  v2 = sub_1C7140FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CCFC(uint64_t a1)
{
  v2 = sub_1C7140FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CD38(uint64_t a1)
{
  v2 = sub_1C7140DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CD74(uint64_t a1)
{
  v2 = sub_1C7140DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CDB0(uint64_t a1)
{
  v2 = sub_1C7140E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CDEC(uint64_t a1)
{
  v2 = sub_1C7140E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C713CE28(uint64_t a1)
{
  v2 = sub_1C7140EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713CE64(uint64_t a1)
{
  v2 = sub_1C7140EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryType.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v70 = v1;
  v3 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217CF8);
  OUTLINED_FUNCTION_3_0();
  v67 = v7;
  v68 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36();
  v66 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D00);
  OUTLINED_FUNCTION_3_0();
  v61 = v11;
  v62 = v10;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_36();
  v60 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D08);
  OUTLINED_FUNCTION_3_0();
  v58 = v15;
  v59 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36();
  v57 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D10);
  OUTLINED_FUNCTION_3_0();
  v55 = v19;
  v56 = v18;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_36();
  v54 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D18);
  OUTLINED_FUNCTION_3_0();
  v52 = v23;
  v53 = v22;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_36();
  v51 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D20);
  OUTLINED_FUNCTION_3_0();
  v64 = v27;
  v65 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_6();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D28);
  OUTLINED_FUNCTION_3_0();
  v63 = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_251();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D30);
  OUTLINED_FUNCTION_3_0();
  v33 = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v50 - v35;
  v37 = *v3;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C7140D3C();
  sub_1C755200C();
  switch(v37 >> 5)
  {
    case 1u:
      sub_1C7140F34();
      OUTLINED_FUNCTION_45_14();
      sub_1C7140F88();
      v47 = v65;
      sub_1C7551D2C();
      (*(v64 + 8))(v2, v47);
      v42 = *(v33 + 8);
      v40 = v36;
      v41 = v29;
      goto LABEL_9;
    case 2u:
      if (v37 == 64)
      {
        sub_1C7140EE0();
        v44 = v51;
        OUTLINED_FUNCTION_6_43();
        v46 = v52;
        v45 = v53;
      }

      else
      {
        sub_1C7140E8C();
        v44 = v54;
        OUTLINED_FUNCTION_6_43();
        v46 = v55;
        v45 = v56;
      }

      goto LABEL_12;
    case 3u:
      if (v37 == 96)
      {
        sub_1C7140E38();
        v44 = v57;
        OUTLINED_FUNCTION_6_43();
        v46 = v58;
        v45 = v59;
      }

      else
      {
        sub_1C7140DE4();
        v44 = v60;
        OUTLINED_FUNCTION_6_43();
        v46 = v61;
        v45 = v62;
      }

LABEL_12:
      (*(v46 + 8))(v44, v45);
      v48 = OUTLINED_FUNCTION_103();
      v49(v48);
      break;
    case 4u:
      sub_1C7140D90();
      v43 = v66;
      OUTLINED_FUNCTION_45_14();
      (*(v67 + 8))(v43, v68);
      (*(v33 + 8))(v36, v29);
      break;
    default:
      sub_1C7140FDC();
      sub_1C7551C6C();
      sub_1C7551CDC();
      v38 = OUTLINED_FUNCTION_41_13();
      v39(v38, v29);
      v40 = OUTLINED_FUNCTION_103();
LABEL_9:
      v42(v40, v41);
      break;
  }

  OUTLINED_FUNCTION_125();
}

void FreeformStoryType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  OUTLINED_FUNCTION_124();
  v122 = v11;
  v15 = v14;
  v117 = v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D60);
  OUTLINED_FUNCTION_3_0();
  v113 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_36();
  v120 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D68);
  OUTLINED_FUNCTION_3_0();
  v111 = v20;
  v112 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_36();
  v119 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D70);
  OUTLINED_FUNCTION_3_0();
  v109 = v25;
  v110 = v24;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_36();
  v116 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D78);
  OUTLINED_FUNCTION_3_0();
  v107 = v29;
  v108 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_36();
  v115 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D80);
  OUTLINED_FUNCTION_3_0();
  v103 = v33;
  v104 = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_36();
  v114 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D88);
  OUTLINED_FUNCTION_3_0();
  v105 = v37;
  v106 = v36;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v97 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D90);
  OUTLINED_FUNCTION_3_0();
  v118 = v42;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_251();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217D98);
  OUTLINED_FUNCTION_3_0();
  v46 = v45;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_14_6();
  v48 = v15[3];
  v121 = v15;
  __swift_project_boxed_opaque_existential_1(v15, v48);
  sub_1C7140D3C();
  v49 = v122;
  sub_1C7551FFC();
  if (v49)
  {
    goto LABEL_9;
  }

  v99 = v13;
  v98 = v41;
  v100 = v40;
  v50 = v120;
  v122 = v46;
  v101 = v12;
  v51 = sub_1C7551C5C();
  sub_1C6FD80E0(v51, 0);
  if (v53 == v54 >> 1)
  {
LABEL_8:
    v66 = sub_1C75518EC();
    OUTLINED_FUNCTION_166_0();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v68 = &type metadata for FreeformStoryType;
    v69 = v101;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v122 + 8))(v69, v44);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v121);
LABEL_10:
    OUTLINED_FUNCTION_125();
    return;
  }

  v97[1] = 0;
  if (v53 < (v54 >> 1))
  {
    v55 = v44;
    v56 = *(v52 + v53);
    sub_1C6FD80C8(v53 + 1);
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    v61 = v118;
    if (v58 == v60 >> 1)
    {
      v62 = v117;
      v63 = v101;
      switch(v56)
      {
        case 1:
          sub_1C7140F34();
          OUTLINED_FUNCTION_4_40();
          sub_1C7141030();
          v86 = v106;
          sub_1C7551C1C();
          v87 = v122;
          swift_unknownObjectRelease();
          v94 = OUTLINED_FUNCTION_41_13();
          v95(v94, v86);
          (*(v87 + 8))(v63, v55);
          v93 = a11 | 0x20;
          break;
        case 2:
          sub_1C7140EE0();
          OUTLINED_FUNCTION_4_40();
          swift_unknownObjectRelease();
          v74 = OUTLINED_FUNCTION_42_16();
          v75(v74);
          v76 = OUTLINED_FUNCTION_1_54();
          v77(v76);
          v93 = 64;
          break;
        case 3:
          sub_1C7140E8C();
          OUTLINED_FUNCTION_4_40();
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_42_16();
          v79(v78);
          v80 = OUTLINED_FUNCTION_1_54();
          v81(v80);
          v93 = 65;
          break;
        case 4:
          sub_1C7140E38();
          OUTLINED_FUNCTION_4_40();
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_42_16();
          v71(v70);
          v72 = OUTLINED_FUNCTION_1_54();
          v73(v72);
          v93 = 96;
          break;
        case 5:
          sub_1C7140DE4();
          OUTLINED_FUNCTION_4_40();
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_42_16();
          v83(v82);
          v84 = OUTLINED_FUNCTION_1_54();
          v85(v84);
          v93 = 97;
          break;
        case 6:
          sub_1C7140D90();
          OUTLINED_FUNCTION_4_40();
          swift_unknownObjectRelease();
          (*(v113 + 8))(v50, v102);
          v88 = OUTLINED_FUNCTION_1_54();
          v89(v88);
          v93 = 0x80;
          break;
        default:
          sub_1C7140FDC();
          v64 = v99;
          OUTLINED_FUNCTION_4_40();
          v65 = v98;
          v90 = sub_1C7551BCC();
          swift_unknownObjectRelease();
          (*(v61 + 8))(v64, v65);
          v91 = OUTLINED_FUNCTION_1_54();
          v92(v91);
          v93 = v90 & 1;
          break;
      }

      v96 = v121;
      *v62 = v93;
      __swift_destroy_boxed_opaque_existential_1(v96);
      goto LABEL_10;
    }

    v44 = v55;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C713DEC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50);
  __swift_allocate_value_buffer(v0, qword_1EC25B678);
  __swift_project_value_buffer(v0, qword_1EC25B678);
  return sub_1C7551A0C();
}

unint64_t sub_1C713DF3C()
{
  result = qword_1EC217CB8;
  if (!qword_1EC217CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217CB8);
  }

  return result;
}

unint64_t sub_1C713DF90()
{
  result = qword_1EDD0AA48;
  if (!qword_1EDD0AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA48);
  }

  return result;
}

unint64_t sub_1C713DFE4()
{
  result = qword_1EC217CD8;
  if (!qword_1EC217CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217CD8);
  }

  return result;
}

unint64_t sub_1C713E038()
{
  result = qword_1EDD0AA30;
  if (!qword_1EDD0AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA30);
  }

  return result;
}

uint64_t sub_1C713E08C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_6();
  v5 = sub_1C7551A1C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  if (qword_1EC213E08 != -1)
  {
    OUTLINED_FUNCTION_17_32();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EC25B678);
  sub_1C712A774(v12, v1, &qword_1EC216B50);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1C6FD7FC8(v1, &qword_1EC216B50);
    sub_1C713DF3C();
    OUTLINED_FUNCTION_166_0();
    *v13 = 0;
    return swift_willThrow();
  }

  (*(v7 + 32))(v11, v1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7551FEC();
  sub_1C6FE1304();

  if (v21)
  {
    sub_1C6F65BE8(0, &qword_1EDD10110);
    if (swift_dynamicCast())
    {
      v15 = OUTLINED_FUNCTION_103();
      v16(v15);
      return v22;
    }
  }

  else
  {
    sub_1C6FD7FC8(v20, &qword_1EC219770);
  }

  sub_1C713DF3C();
  OUTLINED_FUNCTION_166_0();
  *v17 = 1;
  swift_willThrow();
  v18 = OUTLINED_FUNCTION_103();
  return v19(v18);
}

uint64_t FreeformStory.storyCompletion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v4 = *(v1 + 72);
  v8 = *(v1 + 56);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C712A774(v7, &v6, &qword_1EC217DA8);
}

uint64_t FreeformStory.storyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FreeformStory();
  *a1 = *(v1 + *(result + 44));
  return result;
}

void FreeformStory.numberOfCuratedAssets.getter()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = (v2 + 144);
  v4 = -*(v2 + 16);
  v5 = -1;
  while (v4 + v5 != -1)
  {
    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    if (*v3)
    {
      goto LABEL_8;
    }

    v6 = v3 + 128;
    v7 = [*(v3 - 1) count];
    v3 = v6;
    v8 = __OFADD__(v1, v7);
    v1 += v7;
    if (v8)
    {
      __break(1u);
LABEL_8:
      sub_1C6FBC6B8();
      OUTLINED_FUNCTION_166_0();
      *v9 = 2;
      swift_willThrow();
      return;
    }
  }
}

uint64_t FreeformStory.init(title:chapters:storyCompletion:memoryLocalIdentifier:allAssets:id:musicCuration:storyType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v13 = a4[1];
  *(a9 + 24) = *a4;
  *(a9 + 40) = v13;
  v14 = a4[3];
  *(a9 + 56) = a4[2];
  v15 = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 72) = v14;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  v16 = type metadata accessor for FreeformStory();
  result = sub_1C70D5DF0(a11, a9 + *(v16 + 40));
  *(a9 + *(v16 + 44)) = v15;
  return result;
}

void FreeformStory.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v24 = v3;
  type metadata accessor for StoryMusicCuration();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DB0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for FreeformStory();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = sub_1C713E08C(v2);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v23 = v14;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1C71410D0();
    sub_1C7551FFC();
    LOBYTE(v27) = 0;
    *v13 = sub_1C7551BBC();
    *(v13 + 8) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560);
    LOBYTE(v26) = 1;
    sub_1C7141328(&qword_1EC217DB8, sub_1C7141124);
    sub_1C7551C1C();
    *(v13 + 16) = v27;
    sub_1C7141178();
    OUTLINED_FUNCTION_28_13();
    sub_1C7551C1C();
    v16 = v28;
    *(v13 + 24) = v27;
    *(v13 + 40) = v16;
    v17 = v30;
    *(v13 + 56) = v29;
    *(v13 + 72) = v17;
    OUTLINED_FUNCTION_43_14(3);
    *(v13 + 88) = sub_1C7551BBC();
    *(v13 + 96) = v18;
    v19 = objc_autoreleasePoolPush();
    sub_1C713EBA4(v23, &v25, &v26);
    objc_autoreleasePoolPop(v19);
    *(v13 + 104) = v26;
    OUTLINED_FUNCTION_43_14(5);
    *(v13 + 112) = sub_1C7551BBC();
    *(v13 + 120) = v20;
    LOBYTE(v26) = 6;
    sub_1C71414D8(&qword_1EC2173D8);
    OUTLINED_FUNCTION_28_13();
    sub_1C7551C1C();
    sub_1C70D5DF0(v7, v13 + *(v9 + 40));
    LOBYTE(v25) = 7;
    sub_1C71411CC();
    OUTLINED_FUNCTION_28_13();
    sub_1C7551C1C();

    *(v13 + *(v9 + 44)) = v26;
    v21 = OUTLINED_FUNCTION_16_24();
    v22(v21);
    sub_1C7141220(v13, v24, type metadata accessor for FreeformStory);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1C714127C(v13, type metadata accessor for FreeformStory);
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C713EBA4(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DB0);
  sub_1C704233C();
  sub_1C7551C1C();
  v7 = v3;
  if (!v3)
  {
    v8 = [a1 librarySpecificFetchOptions];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = sub_1C6FCA158(v14, v8, v9);

    if (v11)
    {
      type metadata accessor for FreeformStoryDiagnosticsUtils();
      v13 = sub_1C734A78C(v11, v14, a1);

      *a3 = v13;
      return;
    }

    sub_1C71412D4();
    v7 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  *a2 = v7;
}

uint64_t FreeformStory.traits.getter()
{
  if (*(v0 + 32))
  {
    return sub_1C75504FC();
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t FreeformStory.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C755F050;
  OUTLINED_FUNCTION_3_1();
  *(v3 + 32) = 0xD000000000000021;
  *(v3 + 40) = v4;
  v5 = v0[4];
  if (v5)
  {
    v6 = FreeformStoryCompletionSync.description.getter();
  }

  else
  {
    v7 = 0x80000001C75A0620;
    v6 = 0xD000000000000013;
  }

  *(v2 + 48) = v6;
  *(v2 + 56) = v7;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 64) = 0xD00000000000002BLL;
  *(v2 + 72) = v8;
  if (v5)
  {
    sub_1C75504FC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v9 = sub_1C75505FC();
  v11 = v10;

  *(v2 + 80) = v9;
  *(v2 + 88) = v11;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 96) = 0xD00000000000001FLL;
  *(v2 + 104) = v12;
  *(v2 + 112) = MEMORY[0x1CCA5D090](v1[2], &type metadata for FreeformStoryCuratedChapter);
  *(v2 + 120) = v13;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 128) = 0xD000000000000016;
  *(v2 + 136) = v14;
  v15 = type metadata accessor for FreeformStory();
  *(v2 + 144) = StoryMusicCuration.description.getter();
  *(v2 + 152) = v16;
  OUTLINED_FUNCTION_3_1();
  *(v2 + 160) = 0xD000000000000021;
  *(v2 + 168) = v17;
  if (v1[12])
  {
    v18 = v1[11];
    v19 = v1[12];
  }

  else
  {
    v19 = 0x80000001C759B720;
    v18 = 0xD000000000000011;
  }

  *(v2 + 176) = v18;
  *(v2 + 184) = v19;
  *(v2 + 192) = 0xD000000000000012;
  *(v2 + 200) = 0x80000001C75A06E0;
  v20 = *(v1 + *(v15 + 44));
  sub_1C75504FC();
  sub_1C73E69B8(v20);
  *(v2 + 208) = 0;
  *(v2 + 216) = 0xE000000000000000;
  v21 = sub_1C75505FC();

  return v21;
}

uint64_t sub_1C713EFD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7372657470616863 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_10_20() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000015 && 0x80000001C759B7D0 == a2;
        if (v9 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0x74657373416C6C61 && a2 == 0xE900000000000073;
          if (v10 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 25705 && a2 == 0xE200000000000000;
            if (v11 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == OUTLINED_FUNCTION_31_15() && a2 == v12;
              if (v13 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065)
              {

                return 7;
              }

              else
              {
                v15 = OUTLINED_FUNCTION_6_2();

                if (v15)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C713F1D0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x7372657470616863;
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_20();
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x74657373416C6C61;
      break;
    case 5:
      result = 25705;
      break;
    case 6:
      result = OUTLINED_FUNCTION_31_15();
      break;
    case 7:
      result = 0x70795479726F7473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C713F2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C713EFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C713F2E4(uint64_t a1)
{
  v2 = sub_1C71410D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C713F320(uint64_t a1)
{
  v2 = sub_1C71410D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStory.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v47 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DD8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C71410D0();
  sub_1C755200C();
  v10 = [*(v0 + 104) fetchedObjects];
  if (v10)
  {
    v11 = v10;
    v45 = v0;
    v46 = v9;
    v44 = v4;
    v43 = v6;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v12 = sub_1C7550B5C();

    v13 = sub_1C6FB6304();
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v59 = MEMORY[0x1E69E7CC0];
    while (v13 != v14)
    {
      if (v15)
      {
        v16 = MEMORY[0x1CCA5DDD0](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = v16;
      v18 = [v11 uuid];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1C755068C();
        v42 = v21;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v59 = v25;
        }

        v22 = *(v59 + 16);
        v11 = (v22 + 1);
        if (v22 >= *(v59 + 24) >> 1)
        {
          sub_1C6FB1814();
          v59 = v26;
        }

        *(v59 + 16) = v11;
        v23 = v59 + 16 * v22;
        v24 = v42;
        *(v23 + 32) = v20;
        *(v23 + 40) = v24;
        v14 = v17;
      }

      else
      {

        ++v14;
      }
    }

    v27 = v45;
    LOBYTE(v56[0]) = 0;
    v15 = v44;
    v28 = v47;
    sub_1C7551CCC();
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_8_30();
      v30(v29);

      goto LABEL_20;
    }

    v58 = *(v27 + 16);
    v57 = 1;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560);
    sub_1C7141328(&qword_1EDD06B20, sub_1C71413A0);
    OUTLINED_FUNCTION_38_13();

    v32 = *(v27 + 40);
    v56[0] = *(v27 + 24);
    v56[1] = v32;
    v33 = *(v27 + 72);
    v56[2] = *(v27 + 56);
    v56[3] = v33;
    v34 = *(v27 + 40);
    v52 = *(v27 + 24);
    v53 = v34;
    v35 = *(v27 + 72);
    v54 = *(v27 + 56);
    v55 = v35;
    v51[79] = 2;
    sub_1C712A774(v56, v51, &qword_1EC217DA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217DA8);
    sub_1C71413F4();
    OUTLINED_FUNCTION_38_13();
    v11 = 0;
    OUTLINED_FUNCTION_13_33();
    sub_1C6FD7FC8(v51, &qword_1EC217DA8);
    v36 = *(v27 + 96);
    v49 = *(v27 + 88);
    v50 = v36;
    v48 = 3;
    sub_1C75504FC();
    v37 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37);
    sub_1C7141478(&qword_1EDD06C00, &qword_1EC215620);
    OUTLINED_FUNCTION_27_23();
    v12 = v46;
    sub_1C7551D2C();

    v49 = v59;
    v48 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C7141478(&qword_1EDD0CF60, &unk_1EC217A00);
    OUTLINED_FUNCTION_27_23();
    sub_1C7551D2C();
LABEL_23:

    v38 = v45;
    LOBYTE(v49) = 5;
    sub_1C7551CCC();
    v39 = v43;
    if (!v11)
    {
      v40 = type metadata accessor for FreeformStory();
      LOBYTE(v49) = 6;
      type metadata accessor for StoryMusicCuration();
      sub_1C71414D8(&unk_1EDD0A748);
      OUTLINED_FUNCTION_38_13();
      LOBYTE(v49) = *(v38 + *(v40 + 44));
      v48 = 7;
      sub_1C714151C();
      OUTLINED_FUNCTION_27_23();
      sub_1C7551D2C();
    }

    (*(v39 + 8))(v12, v15);
  }

  else
  {
    sub_1C71412D4();
    OUTLINED_FUNCTION_166_0();
    *v31 = 0;
    swift_willThrow();
    (*(v6 + 8))(v9, v4);
  }

LABEL_20:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C713FA1C@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStory.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FreeformStory.assetAndShotListDebugDescription(in:)(PHPhotoLibrary in)
{
  v2 = v1;
  v112 = 0;
  v113 = 0xE000000000000000;
  v3 = v1[12];
  if (v3)
  {
    v5 = v2[11];
    v6 = [(objc_class *)in.super.isa librarySpecificFetchOptions];
    [v6 setIncludeStoryMemories_];
    sub_1C6F65BE8(0, &qword_1EDD0CCF8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C755BAB0;
    v101 = v5;
    *(v8 + 32) = v5;
    *(v8 + 40) = v3;
    sub_1C75504FC();
    v9 = sub_1C7550B3C();

    v10 = [ObjCClassFromMetadata fetchAssetCollectionsWithLocalIdentifiers:v9 options:v6];

    v11 = [v10 firstObject];
    if (v11)
    {
      v12 = v11;
      v93 = v6;
      v13 = objc_opt_self();
      v14 = [v13 fetchCuratedAssetsInAssetCollection_];
      if (!v14)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v16 = v14;
      v17 = [v14 fetchedObjects];

      if (v17)
      {
        sub_1C6F65BE8(0, &qword_1EDD0FA70);
        OUTLINED_FUNCTION_40_14();
        v92 = sub_1C7550B5C();

        v18 = v10;
        v19 = [(objc_class *)in.super.isa librarySpecificFetchOptions];
        v20 = [v13 fetchKeyAssetByMemoryUUIDForMemories:v18 options:v19];
        v91 = v18;

        if (v20)
        {
          v21 = sub_1C75504AC();

          v89 = v12;
          v14 = sub_1C6FCA214(v89);
          if (!v15)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v22 = sub_1C6FE376C(v14, v15, v21);

          if (v22)
          {
            v90 = v22;
            OUTLINED_FUNCTION_39_14();
            sub_1C755180C();
            OUTLINED_FUNCTION_20_27();
            MEMORY[0x1CCA5CD70](v12 + 27, 0x80000001C75A07F0);
            OUTLINED_FUNCTION_46_12();
            MEMORY[0x1CCA5CD70](0x2D2D2D2022, 0xE500000000000000);
            OUTLINED_FUNCTION_37_18();

            sub_1C755180C();

            OUTLINED_FUNCTION_3_1();
            MEMORY[0x1CCA5CD70](v101, v3);
            OUTLINED_FUNCTION_37_18();

            sub_1C755180C();

            OUTLINED_FUNCTION_3_1();
            __dst[0] = v12 + 11;
            __dst[1] = v23;
            *&aBlock = sub_1C6FB6304();
            v24 = sub_1C7551D8C();
            MEMORY[0x1CCA5CD70](v24);

            OUTLINED_FUNCTION_37_18();

            v14 = swift_allocObject();
            *(v14 + 16) = MEMORY[0x1E69E7CC8];
            v94 = v2[2];
            v95 = *(v94 + 16);
            if (v95)
            {
              v25 = 0;
              v26 = &selRef_clsSceneClassifications;
              v27 = *(v94 + 16);
              v99 = v14;
              while (v25 < v27)
              {
                v97 = v25;
                memcpy(__dst, (v94 + 32 + (v25 << 7)), sizeof(__dst));
                v28 = __dst[2];
                v29 = __dst[3];
                v30 = __dst[5];
                v96 = __dst[6];
                v103 = __dst[7];
                v98 = __dst[8];
                v109 = 0;
                v110 = 0xE000000000000000;
                sub_1C6FB7BB8(__dst, &aBlock);
                sub_1C75504FC();
                sub_1C755180C();

                strcpy(&aBlock, "\n\n-- Chapter ");
                HIBYTE(aBlock) = -18;
                v100 = v29;
                v102 = v28;
                MEMORY[0x1CCA5CD70](v28, v29);
                MEMORY[0x1CCA5CD70](757932066, 0xE400000000000000);
                MEMORY[0x1CCA5CD70](aBlock, *(&aBlock + 1));

                MEMORY[0x1CCA5CD70](0x20746F6853090A0ALL, 0xED00003A7473694CLL);
                v31 = *(v30 + 16);
                if (v31)
                {
                  sub_1C75504FC();
                  v32 = (v30 + 64);
                  v33 = v26;
                  do
                  {
                    v34 = *(v32 - 4);
                    v35 = *(v32 - 3);
                    v36 = *(v32 - 2);
                    v37 = *v32;
                    v32 += 5;
                    v12 = v37;
                    *&aBlock = 0;
                    *(&aBlock + 1) = 0xE000000000000000;
                    sub_1C75504FC();
                    v38 = v36;
                    sub_1C75504FC();
                    sub_1C75504FC();
                    sub_1C755180C();

                    *&aBlock = 592138;
                    *(&aBlock + 1) = 0xE300000000000000;
                    sub_1C75504FC();
                    MEMORY[0x1CCA5CD70](v34, v35);

                    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
                    v109 = [v38 v33 + 888];
                    v39 = sub_1C7551D8C();
                    MEMORY[0x1CCA5CD70](v39);

                    MEMORY[0x1CCA5CD70](0xD000000000000020, 0x80000001C75A08B0);
                    OUTLINED_FUNCTION_33_15();

                    --v31;
                  }

                  while (v31);

                  OUTLINED_FUNCTION_39_14();
                  v26 = v33;
                }

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1C755180C();

                *&aBlock = v12;
                *(&aBlock + 1) = 0x80000001C75A0860;
                sub_1C75504FC();
                MEMORY[0x1CCA5CD70](v96, v103);

                OUTLINED_FUNCTION_33_15();

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1C755180C();

                *&aBlock = 10;
                *(&aBlock + 1) = 0xE100000000000000;
                v109 = [v98 v26[32]];
                OUTLINED_FUNCTION_40_14();
                v40 = sub_1C7551D8C();
                MEMORY[0x1CCA5CD70](v40);

                MEMORY[0x1CCA5CD70](v12 + 19, 0x80000001C75A0880);
                OUTLINED_FUNCTION_33_15();

                v41 = *(v30 + 16);
                if (v41)
                {
                  sub_1C75504FC();
                  v42 = v30 + 64;
                  do
                  {
                    v43 = *(v42 - 32);
                    v44 = *(v42 - 24);
                    v104 = *(v42 - 16);
                    v42 += 40;
                    v45 = swift_allocObject();
                    v45[2] = v99;
                    v45[3] = v102;
                    v45[4] = v100;
                    v45[5] = v43;
                    v45[6] = v44;
                    OUTLINED_FUNCTION_9_35();
                    v106 = sub_1C7067B48;
                    v107 = &block_descriptor_11;
                    v46 = _Block_copy(&aBlock);
                    v12 = v108;
                    sub_1C75504FC();
                    swift_bridgeObjectRetain_n();
                    v47 = v104;
                    sub_1C75504FC();
                    sub_1C75504FC();

                    [v47 enumerateObjectsUsingBlock_];
                    _Block_release(v46);

                    --v41;
                  }

                  while (v41);

                  OUTLINED_FUNCTION_39_14();
                  v26 = &selRef_clsSceneClassifications;
                }

                v25 = v97 + 1;
                v48 = swift_allocObject();
                v48[2] = v99;
                v48[3] = v102;
                v48[4] = v100;
                OUTLINED_FUNCTION_9_35();
                v106 = sub_1C7067B48;
                v107 = &block_descriptor_9;
                v2 = _Block_copy(&aBlock);

                v49 = v98;

                [v49 enumerateObjectsUsingBlock_];
                sub_1C6FBC664(__dst);
                _Block_release(v2);

                if (v97 + 1 == v95)
                {
                  goto LABEL_29;
                }

                v27 = *(v94 + 16);
              }

              __break(1u);
              goto LABEL_44;
            }

LABEL_29:
            MEMORY[0x1CCA5CD70](v12 + 1, 0x80000001C75A08E0);
            OUTLINED_FUNCTION_34_13();
            v60 = sub_1C6FE1340(v90, *v2);
            if (v60)
            {
              v61 = v60;
              swift_endAccess();
              __dst[0] = v61;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
              sub_1C703328C();
              v62 = sub_1C75505FC();
              v64 = v63;

              __dst[0] = 0;
              __dst[1] = 0xE000000000000000;
              sub_1C755180C();

              __dst[0] = 10;
              __dst[1] = 0xE100000000000000;
              v65 = [v90 localIdentifier];
              sub_1C755068C();

              v66 = OUTLINED_FUNCTION_40_14();
              MEMORY[0x1CCA5CD70](v66);

              MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A0900);
              MEMORY[0x1CCA5CD70](v62, v64);

              OUTLINED_FUNCTION_12_33();

              MEMORY[0x1CCA5CD70](v12 + 6, 0x80000001C75A0920);
              v14 = sub_1C6FB6304();
              v67 = v93;
              if (v14)
              {
                v68 = v14;
                if (v14 < 1)
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

                v69 = 0;
                do
                {
                  if ((v92 & 0xC000000000000001) != 0)
                  {
                    v70 = MEMORY[0x1CCA5DDD0](v69, v92);
                  }

                  else
                  {
                    v70 = *(v92 + 8 * v69 + 32);
                  }

                  v71 = v70;
                  OUTLINED_FUNCTION_34_13();
                  v72 = *v67;
                  if (*(*v67 + 16) && (sub_1C6FC29A4(), (v74 & 1) != 0))
                  {
                    v75 = *(*(v72 + 56) + 8 * v73);
                    swift_endAccess();
                    __dst[0] = v75;
                    sub_1C75504FC();
                    v76 = sub_1C75505FC();
                    v78 = v77;

                    __dst[0] = 0;
                    __dst[1] = 0xE000000000000000;
                    sub_1C755180C();

                    __dst[0] = 10;
                    __dst[1] = 0xE100000000000000;
                    v79 = [v71 localIdentifier];
                    v80 = sub_1C755068C();
                    v12 = v81;

                    MEMORY[0x1CCA5CD70](v80, v12);
                    OUTLINED_FUNCTION_39_14();

                    MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A0900);
                    MEMORY[0x1CCA5CD70](v76, v78);
                  }

                  else
                  {
                    swift_endAccess();
                    OUTLINED_FUNCTION_7_35();
                    sub_1C755180C();
                    OUTLINED_FUNCTION_20_27();
                    MEMORY[0x1CCA5CD70](0x646574617275430ALL, 0xEF20746573736120);
                    v82 = [v71 localIdentifier];
                    sub_1C755068C();

                    v83 = OUTLINED_FUNCTION_40_14();
                    MEMORY[0x1CCA5CD70](v83);

                    MEMORY[0x1CCA5CD70](v12 + 41, 0x80000001C75A0940);
                  }

                  OUTLINED_FUNCTION_12_33();
                  ++v69;

                  v67 = v93;
                }

                while (v68 != v69);
              }

              v59 = v91;
              goto LABEL_27;
            }

            swift_endAccess();

            OUTLINED_FUNCTION_7_35();
            sub_1C755180C();
            OUTLINED_FUNCTION_20_27();
            MEMORY[0x1CCA5CD70](0x7373612079654B0ALL, 0xEB00000000207465);
            v84 = [v90 localIdentifier];
            v85 = sub_1C755068C();
            v87 = v86;

            MEMORY[0x1CCA5CD70](v85, v87);

            MEMORY[0x1CCA5CD70](v12 + 41, 0x80000001C75A0940);
            OUTLINED_FUNCTION_12_33();

LABEL_26:
            v59 = v93;
LABEL_27:

            goto LABEL_28;
          }
        }

        OUTLINED_FUNCTION_7_35();
        sub_1C755180C();
        OUTLINED_FUNCTION_20_27();
        OUTLINED_FUNCTION_18_21();
        MEMORY[0x1CCA5CD70](v55 + 30, v56 | 0x8000000000000000);
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_2_51();
        OUTLINED_FUNCTION_12_33();
      }

      else
      {
        OUTLINED_FUNCTION_7_35();
        sub_1C755180C();
        OUTLINED_FUNCTION_20_27();
        OUTLINED_FUNCTION_18_21();
        MEMORY[0x1CCA5CD70](v57 + 35, v58 | 0x8000000000000000);
        OUTLINED_FUNCTION_46_12();
        OUTLINED_FUNCTION_2_51();
        OUTLINED_FUNCTION_12_33();
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_7_35();
    sub_1C755180C();
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_18_21();
    MEMORY[0x1CCA5CD70](v53 | 0x20, v54 | 0x8000000000000000);
    OUTLINED_FUNCTION_46_12();
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_12_33();
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_18_21();
    MEMORY[0x1CCA5CD70](v50 + 33, v51 | 0x8000000000000000);
    v52 = OUTLINED_FUNCTION_103();
    MEMORY[0x1CCA5CD70](v52);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_12_33();
  }

LABEL_28:
  v14 = v112;
  v15 = v113;
LABEL_47:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1C7140954(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a5, a6);
  MEMORY[0x1CCA5CD70](0x20746F6873202C22, 0xE900000000000022);
  MEMORY[0x1CCA5CD70](a7, a8);
  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C75A0980;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1C6FC29A4();
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151B8);
  if (sub_1C7551A2C())
  {
    sub_1C6FC29A4();
    if ((v19 & 1) == (v21 & 1))
    {
      v18 = v20;
      goto LABEL_5;
    }

LABEL_9:
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a4 + 16) = v15;
  if ((v19 & 1) == 0)
  {
    sub_1C6FC6D68(v18, a1, MEMORY[0x1E69E7CC0], v15);
    v22 = a1;
  }

  sub_1C6FD2568(inited);
  return swift_endAccess();
}

uint64_t sub_1C7140B64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a5, a6);
  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);
  *(inited + 32) = 0xD00000000000002BLL;
  *(inited + 40) = 0x80000001C75A09A0;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1C6FC29A4();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151B8);
  if (sub_1C7551A2C())
  {
    sub_1C6FC29A4();
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_9:
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a4 + 16) = v11;
  if ((v15 & 1) == 0)
  {
    sub_1C6FC6D68(v14, a1, MEMORY[0x1E69E7CC0], v11);
    v18 = a1;
  }

  sub_1C6FD2568(inited);
  return swift_endAccess();
}

unint64_t sub_1C7140D3C()
{
  result = qword_1EDD0AAE0;
  if (!qword_1EDD0AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAE0);
  }

  return result;
}

unint64_t sub_1C7140D90()
{
  result = qword_1EC217D38;
  if (!qword_1EC217D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217D38);
  }

  return result;
}

unint64_t sub_1C7140DE4()
{
  result = qword_1EC217D40;
  if (!qword_1EC217D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217D40);
  }

  return result;
}

unint64_t sub_1C7140E38()
{
  result = qword_1EC217D48;
  if (!qword_1EC217D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217D48);
  }

  return result;
}

unint64_t sub_1C7140E8C()
{
  result = qword_1EC217D50;
  if (!qword_1EC217D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217D50);
  }

  return result;
}

unint64_t sub_1C7140EE0()
{
  result = qword_1EC217D58;
  if (!qword_1EC217D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217D58);
  }

  return result;
}

unint64_t sub_1C7140F34()
{
  result = qword_1EDD0AA90;
  if (!qword_1EDD0AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA90);
  }

  return result;
}

unint64_t sub_1C7140F88()
{
  result = qword_1EDD0AA08;
  if (!qword_1EDD0AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA08);
  }

  return result;
}

unint64_t sub_1C7140FDC()
{
  result = qword_1EDD0AAB8;
  if (!qword_1EDD0AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAB8);
  }

  return result;
}

unint64_t sub_1C7141030()
{
  result = qword_1EC217DA0;
  if (!qword_1EC217DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DA0);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStory()
{
  result = qword_1EDD0C2E0;
  if (!qword_1EDD0C2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C71410D0()
{
  result = qword_1EDD0C308;
  if (!qword_1EDD0C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C308);
  }

  return result;
}

unint64_t sub_1C7141124()
{
  result = qword_1EC217DC0;
  if (!qword_1EC217DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DC0);
  }

  return result;
}

unint64_t sub_1C7141178()
{
  result = qword_1EC217DC8;
  if (!qword_1EC217DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DC8);
  }

  return result;
}

unint64_t sub_1C71411CC()
{
  result = qword_1EC217DD0;
  if (!qword_1EC217DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DD0);
  }

  return result;
}

uint64_t sub_1C7141220(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C714127C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C71412D4()
{
  result = qword_1EC217DE0;
  if (!qword_1EC217DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DE0);
  }

  return result;
}

uint64_t sub_1C7141328(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216560);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C71413A0()
{
  result = qword_1EDD08CA8;
  if (!qword_1EDD08CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CA8);
  }

  return result;
}

unint64_t sub_1C71413F4()
{
  result = qword_1EDD08D10;
  if (!qword_1EDD08D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217DA8);
    sub_1C70E1188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08D10);
  }

  return result;
}

uint64_t sub_1C7141478(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C71414D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoryMusicCuration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C714151C()
{
  result = qword_1EDD0AA00;
  if (!qword_1EDD0AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA00);
  }

  return result;
}

unint64_t sub_1C7141590()
{
  result = qword_1EC217DE8;
  if (!qword_1EC217DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FreeformStoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7C)
  {
    if (a2 + 132 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 132) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 133;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v5 >= 0x7B)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7C)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7B)
  {
    v6 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7141754(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 5);
  }
}

_BYTE *sub_1C7141780(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    LOBYTE(v2) = *result & 1 | (32 * a2);
  }

  else
  {
    v2 = (a2 & 1 | (32 * (a2 >> 1))) + 32;
  }

  *result = v2;
  return result;
}

void sub_1C7141808()
{
  sub_1C714196C(319, &qword_1EDD06B28, &type metadata for FreeformStoryCuratedChapter, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C714196C(319, &qword_1EDD08D18, &type metadata for FreeformStoryCompletionSync, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C714196C(319, &qword_1EDD0D078, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6F65BE8(319, &qword_1EDD0CEA0);
        if (v3 <= 0x3F)
        {
          type metadata accessor for StoryMusicCuration();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C714196C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FreeformStory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C7141B94(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1C7141CC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7141DA0()
{
  result = qword_1EC217DF0;
  if (!qword_1EC217DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DF0);
  }

  return result;
}

unint64_t sub_1C7141DF8()
{
  result = qword_1EC217DF8;
  if (!qword_1EC217DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217DF8);
  }

  return result;
}

unint64_t sub_1C7141E50()
{
  result = qword_1EC217E00;
  if (!qword_1EC217E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217E00);
  }

  return result;
}

unint64_t sub_1C7141EA8()
{
  result = qword_1EC217E08;
  if (!qword_1EC217E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217E08);
  }

  return result;
}

unint64_t sub_1C7141F00()
{
  result = qword_1EC217E10;
  if (!qword_1EC217E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217E10);
  }

  return result;
}

unint64_t sub_1C7141F58()
{
  result = qword_1EC217E18;
  if (!qword_1EC217E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217E18);
  }

  return result;
}

unint64_t sub_1C7141FB0()
{
  result = qword_1EC217E20;
  if (!qword_1EC217E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC217E20);
  }

  return result;
}

unint64_t sub_1C7142008()
{
  result = qword_1EDD0C2F8;
  if (!qword_1EDD0C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C2F8);
  }

  return result;
}

unint64_t sub_1C7142060()
{
  result = qword_1EDD0C300;
  if (!qword_1EDD0C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C300);
  }

  return result;
}

unint64_t sub_1C71420B8()
{
  result = qword_1EDD0AAA8;
  if (!qword_1EDD0AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAA8);
  }

  return result;
}

unint64_t sub_1C7142110()
{
  result = qword_1EDD0AAB0;
  if (!qword_1EDD0AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAB0);
  }

  return result;
}

unint64_t sub_1C7142168()
{
  result = qword_1EDD0AA80;
  if (!qword_1EDD0AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA80);
  }

  return result;
}

unint64_t sub_1C71421C0()
{
  result = qword_1EDD0AA88;
  if (!qword_1EDD0AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA88);
  }

  return result;
}

unint64_t sub_1C7142218()
{
  result = qword_1EDD0AA70;
  if (!qword_1EDD0AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA70);
  }

  return result;
}

unint64_t sub_1C7142270()
{
  result = qword_1EDD0AA78;
  if (!qword_1EDD0AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA78);
  }

  return result;
}

unint64_t sub_1C71422C8()
{
  result = qword_1EDD0AA50;
  if (!qword_1EDD0AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA50);
  }

  return result;
}

unint64_t sub_1C7142320()
{
  result = qword_1EDD0AA58;
  if (!qword_1EDD0AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA58);
  }

  return result;
}

unint64_t sub_1C7142378()
{
  result = qword_1EDD0AA98;
  if (!qword_1EDD0AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA98);
  }

  return result;
}

unint64_t sub_1C71423D0()
{
  result = qword_1EDD0AAA0;
  if (!qword_1EDD0AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAA0);
  }

  return result;
}

unint64_t sub_1C7142428()
{
  result = qword_1EDD0AA60;
  if (!qword_1EDD0AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA60);
  }

  return result;
}

unint64_t sub_1C7142480()
{
  result = qword_1EDD0AA68;
  if (!qword_1EDD0AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA68);
  }

  return result;
}

unint64_t sub_1C71424D8()
{
  result = qword_1EDD0AAC0;
  if (!qword_1EDD0AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAC0);
  }

  return result;
}

unint64_t sub_1C7142530()
{
  result = qword_1EDD0AAC8;
  if (!qword_1EDD0AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAC8);
  }

  return result;
}

unint64_t sub_1C7142588()
{
  result = qword_1EDD0AAD0;
  if (!qword_1EDD0AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAD0);
  }

  return result;
}

unint64_t sub_1C71425E0()
{
  result = qword_1EDD0AAD8;
  if (!qword_1EDD0AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAD8);
  }

  return result;
}

unint64_t sub_1C7142638()
{
  result = qword_1EDD0AA20;
  if (!qword_1EDD0AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA20);
  }

  return result;
}

unint64_t sub_1C7142690()
{
  result = qword_1EDD0AA28;
  if (!qword_1EDD0AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA28);
  }

  return result;
}

unint64_t sub_1C71426E8()
{
  result = qword_1EDD0AA10;
  if (!qword_1EDD0AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA10);
  }

  return result;
}

unint64_t sub_1C7142740()
{
  result = qword_1EDD0AA18;
  if (!qword_1EDD0AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA18);
  }

  return result;
}

unint64_t sub_1C7142798()
{
  result = qword_1EDD0AA38;
  if (!qword_1EDD0AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA38);
  }

  return result;
}

unint64_t sub_1C71427F0()
{
  result = qword_1EDD0AA40;
  if (!qword_1EDD0AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AA40);
  }

  return result;
}

uint64_t sub_1C7142884()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E28);
  __swift_project_value_buffer(v0, qword_1EC217E28);
  return sub_1C754FEFC();
}

uint64_t static DailyMemoryFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC217E28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FreeformStoryGeneration.Chronological.Uncurated.Story.identifier.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryGeneration.Chronological.Uncurated.Story.elements.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x130uLL);
  memcpy(a1, (v1 + 24), 0x130uLL);
  return sub_1C6FDE884(__dst, v4);
}

uint64_t FreeformStoryGeneration.Chronological.Uncurated.Story.musicCurationTask.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 384);
  *a1 = *(v1 + 376);
  a1[1] = v2;
}

__n128 FreeformStoryGeneration.Chronological.Uncurated.Story.init(identifier:elements:completion:shots:musicCurationTask:)@<Q0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, __int128 *a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 16) = 32;
  *a7 = a2;
  *(a7 + 8) = a3;
  memcpy((a7 + 24), __src, 0x130uLL);
  sub_1C6F699F8(a4, a7 + 328);
  *(a7 + 368) = a5;
  result = *a6;
  *(a7 + 376) = *a6;
  return result;
}

Swift::Void __swiftcall FreeformStoryGeneration.Chronological.Uncurated.Story.cancel()()
{
  if (qword_1EC213E18 != -1)
  {
    swift_once();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EC217E40);
  sub_1C70BFB18(v0, v10);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    v6 = v10[0];
    v7 = v10[1];
    sub_1C75504FC();
    sub_1C70BFB74(v10);
    v8 = sub_1C6F765A4(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Cancelling music task for story %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    sub_1C70BFB74(v10);
  }

  type metadata accessor for StoryMusicCuration();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C7550E1C();
  sub_1C7550E1C();
}

uint64_t sub_1C7142D9C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E40);
  __swift_project_value_buffer(v0, qword_1EC217E40);
  return sub_1C754FEFC();
}

uint64_t sub_1C7142E1C(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6[120] = v5;
  v6[119] = a5;
  v6[118] = a4;
  v6[117] = a2;
  v6[116] = a1;
  v9 = sub_1C754F2FC();
  v6[121] = v9;
  v6[122] = *(v9 - 8);
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  memcpy(v6 + 77, a2, 0x58uLL);
  memcpy(v6 + 40, a3, 0xC0uLL);
  v6[127] = a3[24];
  memcpy(v6 + 64, a3 + 25, 0x68uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C7142F54()
{
  sub_1C754F2CC();
  v1 = v0[127];
  v2 = v0[120];
  sub_1C754F2BC();
  sub_1C754F2BC();
  if (*(v1 + 16) >= *v2)
  {
    v15 = v0[126];
    v16 = v0[124];
    v17 = v0[122];
    v18 = v0[121];
    v19 = v0[117];
    type metadata accessor for FreeformStoryCompletionGenerator.Diagnostics();
    swift_allocObject();
    sub_1C6FB03C4();
    v0[128] = v20;
    memcpy(v0 + 88, v19, 0x41uLL);
    v21 = *(v17 + 32);
    v0[129] = v21;
    v21(v16, v15, v18);
    _s9GeneratorVMa_0();
    memcpy(v0 + 97, v0 + 88, 0x41uLL);
    v0[114] = type metadata accessor for FreeformStoryCompletionAsync();
    v0[115] = sub_1C6FE58DC();
    __swift_allocate_boxed_opaque_existential_0(v0 + 111);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[130] = v22;
    *v22 = v23;
    v22[1] = sub_1C71432C4;
    OUTLINED_FUNCTION_20_3();

    return sub_1C6FAE48C();
  }

  else
  {
    _s9GeneratorVMa_0();
    v3 = sub_1C754FEEC();
    v4 = sub_1C75511BC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C6F5C000, v3, v4, "Not enough assets to use adapter, using empty completion and empty story title", v5, 2u);
      OUTLINED_FUNCTION_109();
    }

    v6 = v0[126];
    v7 = v0[122];
    v8 = v0[121];

    v0[109] = &type metadata for FreeformStoryCompletionSync;
    v0[110] = sub_1C6FB5578();
    v0[106] = swift_allocObject();
    sub_1C70BBFD0();
    (*(v7 + 8))(v6, v8);
    v9 = *(v7 + 32);
    OUTLINED_FUNCTION_5_42();
    OUTLINED_FUNCTION_21_3();
    v10 = OUTLINED_FUNCTION_1_16();
    v9(v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[132] = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_0_73(v11);
    OUTLINED_FUNCTION_20_3();

    return sub_1C7143958();
  }
}

uint64_t sub_1C71432C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 1048) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71433C4()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 960);
  sub_1C6F699F8((v0 + 888), v0 + 848);
  sub_1C714383C(v2, v0 + 616, v1);

  v3 = *(v0 + 1032);
  OUTLINED_FUNCTION_5_42();
  OUTLINED_FUNCTION_21_3();
  v4 = OUTLINED_FUNCTION_1_16();
  v3(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1056) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_0_73(v5);

  return sub_1C7143958();
}

uint64_t sub_1C714349C()
{
  v1 = v0[128];
  v2 = v0[125];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  __swift_deallocate_boxed_opaque_existential_1((v0 + 111));
  sub_1C714383C(v5, (v0 + 77), v1);

  v7 = *(v3 + 8);
  v7(v2, v4);
  v7(v6, v4);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C714358C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 1064) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C714368C()
{
  v1 = *(v0 + 1064);
  sub_1C754F2EC();
  if (v1)
  {
    v2 = *(v0 + 928);
    FreeformStoryGeneration.Chronological.Uncurated.Story.cancel()();
    swift_willThrow();
    sub_1C70BFB74(v2);
  }

  else
  {
    OUTLINED_FUNCTION_13_34();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 848);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C714378C()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[119];
  __swift_destroy_boxed_opaque_existential_1((v0 + 106));
  (*(v1 + 8))(v3, v2);
  OUTLINED_FUNCTION_13_34();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C714383C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + *(_s9GeneratorVMa_0() + 20);
  result = type metadata accessor for StoryGenerationSession(0);
  v7 = *(v5 + *(result + 24));
  if (v7)
  {

    sub_1C755180C();
    v9 = *(a2 + 72);
    v8 = *(a2 + 80);
    sub_1C75504FC();

    MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C7598200);

    sub_1C716A8F8(v9, v8, v7, a3);

    sub_1C6FAFAAC(v7);
  }

  return result;
}

uint64_t sub_1C7143958()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[156] = v0;
  v1[155] = v4;
  v1[154] = v5;
  v1[153] = v6;
  v1[152] = v7;
  v1[151] = v8;
  v1[150] = v9;
  v10 = sub_1C754F2FC();
  v1[157] = v10;
  v1[158] = *(v10 - 8);
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x130uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C7143A60()
{
  v15 = v0;
  sub_1C754F2CC();
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1280);
  v11 = *(v0 + 1288);
  v12 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v10 = *(v0 + 1256);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1208);
  sub_1C754F2BC();
  sub_1C754F2BC();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F15C();
  v6 = _s9GeneratorVMa_0();
  *(v0 + 1304) = v6;
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C6FB5E28(v5, v0 + 1160);
  *(v0 + 1368) = *(v6 + 20);
  v7 = *(v3 + 32);
  v7(v2, v1, v10);
  FreeformStoryGenerator.musicCurationTask(from:storyCompletion:storySession:eventRecorder:progressReporter:)();
  sub_1C6FE5984(v0 + 1160);
  *(v0 + 1312) = v13;
  memcpy((v0 + 320), (v0 + 16), 0x130uLL);
  v7(v12, v11, v10);
  v8 = swift_task_alloc();
  *(v0 + 1328) = v8;
  *v8 = v0;
  v8[1] = sub_1C7143CF0;

  return sub_1C7049E94();
}

uint64_t sub_1C7143CF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1336) = v4;
  *(v2 + 1344) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7143DF8()
{
  v1 = *(v0 + 1208);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 64) + **(v3 + 64));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1352) = v4;
  *v4 = v5;
  v4[1] = sub_1C7143F20;

  return v7(v0 + 992, v2, v3);
}

uint64_t sub_1C7143F20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v3 + 1360) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7144028()
{
  v34 = v0;
  v1 = *(v0 + 1248) + *(v0 + 1368);
  v2 = *(v0 + 1008);
  *(v0 + 928) = *(v0 + 992);
  *(v0 + 944) = v2;
  v3 = *(v0 + 1040);
  *(v0 + 960) = *(v0 + 1024);
  *(v0 + 976) = v3;
  v4 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  if (v4)
  {
    v5 = *(v0 + 1224);
    v6 = *(v0 + 1216);
    sub_1C755180C();
    sub_1C75504FC();

    v33[0] = v6;
    v33[1] = v5;
    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75981E0);
    sub_1C6FDE928(v0 + 928, v0 + 1056);
    sub_1C716A8FC(v6, v5, v4, v0 + 928);
  }

  v7 = 0;
  v8 = *(v0 + 1336);
  v9 = *(v8 + 16);
  v10 = (v8 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  while (v9 != v7)
  {
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v12 = *v10;
    v13 = *(*v10 + 16);
    v14 = *(v11 + 16);
    if (__OFADD__(v14, v13))
    {
      goto LABEL_26;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v11 + 24) >> 1)
    {
      sub_1C6FB25A8();
      v11 = v15;
    }

    if (*(v12 + 16))
    {
      if ((*(v11 + 24) >> 1) - *(v11 + 16) < v13)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v16 = *(v11 + 16);
        v17 = __OFADD__(v16, v13);
        v18 = v16 + v13;
        if (v17)
        {
          goto LABEL_29;
        }

        *(v11 + 16) = v18;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_27;
      }
    }

    v10 += 13;
    ++v7;
  }

  v19 = *(v0 + 1360);
  v20 = *(v0 + 1320);
  v21 = *(v0 + 1312);
  v22 = *(v0 + 1224);
  v23 = *(v0 + 1216);
  v24 = *(v0 + 1200);

  *(v24 + 352) = &type metadata for FreeformStoryCompletionSync;
  *(v24 + 360) = sub_1C6FB5578();
  v25 = swift_allocObject();
  *(v24 + 328) = v25;
  v26 = *(v0 + 976);
  v25[3] = *(v0 + 960);
  v25[4] = v26;
  v27 = *(v0 + 944);
  v25[1] = *(v0 + 928);
  v25[2] = v27;
  *(v24 + 16) = 32;
  *v24 = v23;
  *(v24 + 8) = v22;
  memcpy((v24 + 24), (v0 + 16), 0x130uLL);
  *(v24 + 368) = v11;
  *(v24 + 376) = v21;
  *(v24 + 384) = v20;
  sub_1C75504FC();
  sub_1C6FDE884(v0 + 16, v0 + 624);

  sub_1C754F2EC();
  if (v19)
  {
    OUTLINED_FUNCTION_4_42();
    v28 = sub_1C754FEEC();
    v29 = sub_1C75511BC();

    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_7_6();
      v33[0] = OUTLINED_FUNCTION_15_5();
      *v22 = 136315138;
      *(v22 + 4) = sub_1C6F765A4(v21, v11, v33);
      OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v30, v31, "Cancelling music task before story creation for story %s");
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_14_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    OUTLINED_FUNCTION_1_16();
    sub_1C7550E1C();
    OUTLINED_FUNCTION_8_0();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v0 + 1120);
    sub_1C70BFB74(*(v0 + 1200));
    OUTLINED_FUNCTION_9_8();

    OUTLINED_FUNCTION_43();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 1120);

    OUTLINED_FUNCTION_43();
  }

  v32();
}

uint64_t sub_1C7144468()
{
  v2 = OUTLINED_FUNCTION_4_7();
  v3(v2);
  OUTLINED_FUNCTION_4_42();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7_6();
    v10 = OUTLINED_FUNCTION_15_5();
    *(v1 + 4) = OUTLINED_FUNCTION_22_8(4.8149e-34, v10);
    OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v6, v7, "Cancelling music task before story creation for story %s");
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_1_16();
  sub_1C7550E1C();
  OUTLINED_FUNCTION_8_0();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v0 + 1120);
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C71445DC()
{
  v2 = OUTLINED_FUNCTION_4_7();
  v3(v2);
  OUTLINED_FUNCTION_4_42();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_7_6();
    v10 = OUTLINED_FUNCTION_15_5();
    *(v1 + 4) = OUTLINED_FUNCTION_22_8(4.8149e-34, v10);
    OUTLINED_FUNCTION_10_4(&dword_1C6F5C000, v6, v7, "Cancelling music task before story creation for story %s");
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  OUTLINED_FUNCTION_1_16();
  sub_1C7550E1C();
  OUTLINED_FUNCTION_8_0();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v0 + 1120);
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t _s9GeneratorVMa_0()
{
  result = qword_1EC217E58;
  if (!qword_1EC217E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C71447EC()
{
  result = type metadata accessor for StoryGenerationSession(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FreeformStoryGenerator();
    if (v2 <= 0x3F)
    {
      result = sub_1C70DEA6C();
      if (v3 <= 0x3F)
      {
        result = sub_1C754FF1C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.elements.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x130uLL);
  memcpy(a1, (v1 + 24), 0x130uLL);
  return sub_1C6FDE884(__dst, v4);
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.completion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 472);
  v7[0] = *(v1 + 456);
  v7[1] = v2;
  v4 = *(v1 + 504);
  v8 = *(v1 + 488);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C6FDE928(v7, &v6);
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.musicCuration.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  OUTLINED_FUNCTION_15_32();
  return sub_1C714E5B8(v1 + v3, a1);
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.chapters.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C755BAB0;
  memcpy(__dst, (v0 + 328), 0x80uLL);
  memcpy((v1 + 32), (v0 + 328), 0x80uLL);
  sub_1C6FB7BB8(__dst, v3);
  return v1;
}

uint64_t FreeformStoryGeneration.Chronological.Curated.Story.init(identifier:type:elements:fakeChapter:completion:keyAsset:musicCuration:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X2>, const void *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v14;
  memcpy((a9 + 24), __src, 0x130uLL);
  memcpy((a9 + 328), a5, 0x80uLL);
  v15 = a6[1];
  *(a9 + 456) = *a6;
  *(a9 + 472) = v15;
  v16 = a6[3];
  *(a9 + 488) = a6[2];
  *(a9 + 504) = v16;
  *(a9 + 520) = a7;
  v17 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  return sub_1C714D8C8(a8, a9 + *(v17 + 40));
}

uint64_t sub_1C7144BC0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC217E68);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t sub_1C7144C3C()
{
  OUTLINED_FUNCTION_42();
  v1[373] = v0;
  v1[372] = v2;
  v1[371] = v3;
  v1[370] = v4;
  v1[369] = v5;
  v1[374] = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  v1[375] = OUTLINED_FUNCTION_77();
  type metadata accessor for StoryMusicCuration();
  v1[376] = OUTLINED_FUNCTION_77();
  v6 = sub_1C754DFFC();
  v1[377] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[378] = v7;
  v1[379] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754F2FC();
  v1[380] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[381] = v9;
  v1[382] = swift_task_alloc();
  v1[383] = swift_task_alloc();
  v1[384] = swift_task_alloc();
  v1[385] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v1[386] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[387] = v11;
  v1[388] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C7144E04()
{
  OUTLINED_FUNCTION_63_0();
  v1 = *(v0 + 2968);
  v2 = OUTLINED_FUNCTION_154();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v42 = *(v0 + 3080);
  v4 = *(v0 + 3048);
  v44 = *(v0 + 3040);
  v46 = *(v0 + 3032);
  v47 = *(v0 + 3024);
  v48 = *(v0 + 3016);
  v5 = *(v0 + 2984);
  v43 = v5;
  v49 = *(v0 + 2960);
  v51 = *(v0 + 3064);
  OUTLINED_FUNCTION_10_3(*(v0 + 2968));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  *(v0 + 2736) = 5;
  *(v0 + 2744) = 0x3F9EB851EB851EB8;
  *(v0 + 2752) = xmmword_1C755EB70;
  *(v0 + 2768) = xmmword_1C755EB70;
  *(v0 + 2784) = 0x3F847AE147AE147BLL;
  v6 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v7 = *(v5 + *(v6 + 28));
  *(v0 + 3112) = v7;
  v8 = v7 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  *(v0 + 2912) = *v8;
  *(v0 + 2920) = v10;
  *(v0 + 2928) = v11;
  type metadata accessor for FreeformStoryKeyAssetElector();
  swift_allocObject();
  v12 = v9;

  *(v0 + 3120) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v0 + 2736), (v0 + 2912));
  v13 = *(v6 + 24);
  *(v0 + 2908) = v13;
  v41 = *(v4 + 32);
  v41(v51, v42, v44);
  v14 = *(v49 + 368);
  v15 = objc_allocWithZone(MEMORY[0x1E6978840]);
  sub_1C75504FC();
  v45 = [v15 init];
  v16 = OUTLINED_FUNCTION_70_9();
  v17 = OUTLINED_FUNCTION_70_9();
  sub_1C754DFEC();
  v18 = sub_1C754DF8C();
  v20 = v19;
  (*(v47 + 8))(v46, v48);
  *(v0 + 2400) = v18;
  *(v0 + 2408) = v20;
  *(v0 + 2416) = 0;
  *(v0 + 2424) = 0xE000000000000000;
  *(v0 + 2432) = 3;
  *(v0 + 2440) = v14;
  *(v0 + 2448) = 0;
  *(v0 + 2456) = 0xE000000000000000;
  *(v0 + 2464) = v45;
  *(v0 + 2472) = v16;
  *(v0 + 2480) = v17;
  *(v0 + 2488) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C755BAB0;
  memcpy((v21 + 32), (v0 + 2400), 0x68uLL);
  memcpy((v0 + 16), (v49 + 24), 0x130uLL);
  memcpy((v0 + 320), (v49 + 24), 0x130uLL);
  sub_1C6FC061C(v0 + 2400, v0 + 2504);
  sub_1C6FDE884(v0 + 16, v0 + 624);
  sub_1C7246CB8(v21, (v0 + 320), v43 + v13, (v0 + 2792), v51, (v0 + 2872));
  memcpy((v0 + 1232), (v0 + 320), 0x130uLL);
  sub_1C6FE0DC0(v0 + 1232);
  swift_setDeallocating();
  sub_1C6FDC93C();
  v31 = *(v0 + 2872);
  *(v0 + 3128) = v31;
  *(v0 + 3136) = *(v0 + 2880);
  *(v0 + 3152) = *(v0 + 2896);
  *(v0 + 2905) = *(v0 + 2904);
  if (!v31)
  {
    sub_1C6FE0D14();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v40, 2);
    swift_willThrow();
    sub_1C70552E0(v0 + 2400);
    v22 = *(v0 + 3104);
    v23 = *(v0 + 3096);
    v24 = *(v0 + 3072);
    v25 = *(v0 + 3048);
    v26 = *(v0 + 3040);
    v50 = *(v0 + 2976);
    v52 = *(v0 + 3088);
    v27 = *(v0 + 2968);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2792);
    v28 = *(v25 + 8);
    v28(v24, v26);
    OUTLINED_FUNCTION_70(v27, *(v1 + 24));
    sub_1C754F1AC();
    (*(v23 + 8))(v22, v52);
    v28(v50, v26);
    OUTLINED_FUNCTION_9_36();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X1, X16 }
  }

  v32 = *(v0 + 3072);
  v33 = *(v0 + 3056);
  v34 = *(v0 + 3040);
  v35 = *(v0 + 3032);
  sub_1C70552E0(v0 + 2400);
  sub_1C754DFEC();
  *(v0 + 2856) = &type metadata for Random.Arc4Random;
  *(v0 + 2864) = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v35, v0 + 2832);
  v41(v33, v32, v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 3160) = v36;
  *v36 = v37;
  v36[1] = sub_1C71454B0;
  OUTLINED_FUNCTION_128_0();

  return sub_1C7145F50();
}

uint64_t sub_1C71454B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71455A8()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[370];
  memcpy(v0 + 284, v0 + 268, 0x80uLL);
  OUTLINED_FUNCTION_10_3((v1 + 328));
  OUTLINED_FUNCTION_31_2();
  v6 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[397] = v3;
  *v3 = v4;
  v3[1] = sub_1C71456CC;
  OUTLINED_FUNCTION_16_6();

  return v6();
}

uint64_t sub_1C71456CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3184) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71457C4()
{
  v1 = *(v0 + 2960);
  *(v0 + 2672) = *(v0 + 2608);
  *(v0 + 2688) = *(v0 + 2624);
  *(v0 + 2704) = *(v0 + 2640);
  *(v0 + 2720) = *(v0 + 2656);
  v2 = *(v1 + 384);
  *(v0 + 2936) = *(v1 + 376);
  *(v0 + 2944) = v2;
  type metadata accessor for StoryGenerationSession(0);

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 3192) = v3;
  *v3 = v4;
  v3[1] = sub_1C71458C8;

  return sub_1C73E72EC();
}

uint64_t sub_1C71458C8()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C71459EC()
{
  v1 = *(v0 + 3184);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3008);
  v4 = *(v0 + 3000);
  v5 = *(v0 + 2960);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v5 + 16);
  memcpy((v0 + 1536), v5 + 3, 0x130uLL);
  OUTLINED_FUNCTION_15_32();
  sub_1C714E5B8(v3, v4 + v9);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v8;
  memcpy((v4 + 24), (v0 + 1536), 0x130uLL);
  memcpy((v4 + 328), (v0 + 2272), 0x80uLL);
  v10 = *(v0 + 2688);
  v11 = *(v0 + 2720);
  v12 = *(v0 + 2672);
  *(v4 + 488) = *(v0 + 2704);
  *(v4 + 504) = v11;
  *(v4 + 456) = v12;
  *(v4 + 472) = v10;
  *(v4 + 520) = v2;
  sub_1C75504FC();
  sub_1C6FDE884(v0 + 1536, v0 + 1840);
  v13 = v2;
  sub_1C754F2EC();
  v14 = *(v0 + 3104);
  v28 = *(v0 + 3096);
  v29 = *(v0 + 3088);
  if (v1)
  {
    v15 = *(v0 + 3008);
    v27 = *(v0 + 3104);
    v16 = *(v0 + 3000);

    OUTLINED_FUNCTION_59_9();
    sub_1C714D870(v16, type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story);
    OUTLINED_FUNCTION_14_30();
    sub_1C714D870(v15, v17);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2792);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2832);
    v18 = OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_70(v18, v19);
    OUTLINED_FUNCTION_457();
    sub_1C754F1AC();
    (*(v28 + 8))(v27, v29);
    OUTLINED_FUNCTION_9_36();
  }

  else
  {
    v21 = *(v0 + 3008);
    v26 = *(v0 + 3000);
    v22 = *(v0 + 2968);
    v23 = *(v0 + 2952);

    OUTLINED_FUNCTION_59_9();
    OUTLINED_FUNCTION_14_30();
    sub_1C714D870(v21, v24);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2792);
    sub_1C714D8C8(v26, v23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2832);
    OUTLINED_FUNCTION_70(v22, v22[3]);
    OUTLINED_FUNCTION_15_1();
    sub_1C754F1AC();
    (*(v28 + 8))(v14, v29);
  }

  OUTLINED_FUNCTION_43();

  return v20();
}

uint64_t sub_1C7145D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_40_15();
  v20 = *(v16 + 3096);
  v21 = *(v16 + 3048);
  OUTLINED_FUNCTION_48_11();
  v22 = OUTLINED_FUNCTION_154();
  sub_1C6FE0E14(v22, v23, v14, v15, v18);
  __swift_destroy_boxed_opaque_existential_1(v16 + 2792);
  __swift_destroy_boxed_opaque_existential_1(v16 + 2832);
  OUTLINED_FUNCTION_10_3(v19);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v20 + 8))(v17, a9);
  (*(v21 + 8))(a10, a11);
  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7145E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_40_15();
  v20 = *(v16 + 3096);
  v21 = *(v16 + 3048);
  OUTLINED_FUNCTION_48_11();
  v22 = OUTLINED_FUNCTION_154();
  sub_1C6FE0E14(v22, v23, v14, v15, v18);
  sub_1C6FBC664(v16 + 2272);
  __swift_destroy_boxed_opaque_existential_1(v16 + 2792);
  __swift_destroy_boxed_opaque_existential_1(v16 + 2832);
  OUTLINED_FUNCTION_10_3(v19);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v20 + 8))(v17, a9);
  (*(v21 + 8))(a10, a11);
  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7145F50()
{
  OUTLINED_FUNCTION_42();
  v1[358] = v0;
  v1[357] = v2;
  v1[356] = v3;
  v1[355] = v4;
  v1[354] = v5;
  v1[353] = v6;
  v1[352] = v7;
  v1[351] = v8;
  v9 = sub_1C754DFFC();
  v1[359] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[360] = v10;
  v1[361] = OUTLINED_FUNCTION_77();
  v1[362] = type metadata accessor for StoryGenerationSession(0);
  v1[363] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F2FC();
  v1[364] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[365] = v12;
  v1[366] = swift_task_alloc();
  v1[367] = swift_task_alloc();
  v1[368] = swift_task_alloc();
  v1[369] = swift_task_alloc();
  v1[370] = swift_task_alloc();
  v1[371] = swift_task_alloc();
  v13 = sub_1C754F38C();
  v1[372] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[373] = v14;
  v1[374] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C7146118()
{
  OUTLINED_FUNCTION_115_0();
  v216 = v0;
  v1 = *(v0 + 2848);
  v2 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v4 = *(v0 + 2864);
  __src = *(v0 + 2824);
  v5 = v1;
  v6 = *(v0 + 2816);
  v202 = v5;
  OUTLINED_FUNCTION_70(*(v0 + 2848), *(v5 + 24));
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v7 = *(v6 + 368);
  *(v0 + 3000) = v7;
  sub_1C71491D8(v7, __dst);
  v8 = __dst[0];
  *(v0 + 3008) = __dst[0];
  v9 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v10 = *(v9 + 32);
  *(v0 + 3360) = v10;
  v157 = v4 + v10;
  v161 = v9;
  v166 = *(v4 + v10);
  *(v0 + 3016) = v166;
  memcpy((v0 + 16), (v6 + 24), 0x130uLL);
  v11 = sub_1C70CAC04(__src);
  *(v0 + 3024) = v12;
  *(v0 + 3032) = v11;
  if (v12)
  {
    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v12)
  {
    v20 = v12;
  }

  OUTLINED_FUNCTION_60_8(v11, v12, v13, v14, v15, v16, v17, v18, v97, v101, v105, v109, v113, v117, v121, v126, v130, v134, v137, v140, v144, v148, v152, v157, v161, v166, v170, v173, v176, v180, v184, v189, v194, v20, v202, v206, __src, __dst[0]);
  v215[0] = v8;
  v21 = sub_1C71494AC(__dst, v215);
  *(v0 + 3040) = v21;
  OUTLINED_FUNCTION_60_8(v21, v22, v23, v24, v25, v26, v27, v28, v98, v102, v106, v110, v114, v118, v122, v127, v131, v135, v138, v141, v145, v149, v153, v158, v162, v167, v171, v174, v177, v181, v185, v190, v195, v198, v203, v207, __srcb, __dst[0]);
  v29 = sub_1C7149654(__dst);
  OUTLINED_FUNCTION_60_8(v29, v30, v31, v32, v33, v34, v35, v36, v99, v103, v107, v111, v115, v119, v123, v128, v132, v136, v139, v142, v146, v150, v154, v159, v163, v168, v172, v175, v178, v182, v186, v191, v196, v199, v204, v208, __srcc, __dst[0]);
  v192 = sub_1C7149A3C(__dst);
  __srca = (v0 + 16);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_1C7149B44(__dst);
  v187 = v37;
  v38 = sub_1C754FEEC();
  v39 = sub_1C75511BC();
  v209 = v8;
  v197 = v19;
  v155 = v29;
  if (OUTLINED_FUNCTION_128(v39))
  {
    v40 = 0x746E6176656C6552;
    v41 = OUTLINED_FUNCTION_20_1();
    __dst[0] = swift_slowAlloc();
    *v41 = 136315650;
    if (v29)
    {
      if (v29 == 1)
      {
        v42 = 0x6169746E65737345;
      }

      else
      {
        v42 = 0x6465726975716552;
      }

      if (v29 == 1)
      {
        v43 = 0xE90000000000006CLL;
      }

      else
      {
        v43 = 0xE800000000000000;
      }
    }

    else
    {
      v43 = 0xE800000000000000;
      v42 = 0x746E6176656C6552;
    }

    v44 = sub_1C6F765A4(v42, v43, __dst);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    if (v192)
    {
      if (v192 == 1)
      {
        v45 = 0x6169746E65737345;
      }

      else
      {
        v45 = 0x6465726975716552;
      }

      if (v192 == 1)
      {
        v46 = 0xE90000000000006CLL;
      }

      else
      {
        v46 = 0xE800000000000000;
      }
    }

    else
    {
      v46 = 0xE800000000000000;
      v45 = 0x746E6176656C6552;
    }

    v47 = sub_1C6F765A4(v45, v46, __dst);

    *(v41 + 14) = v47;
    *(v41 + 22) = 2080;
    if (v187)
    {
      if (v187 == 1)
      {
        v40 = 0x6169746E65737345;
      }

      else
      {
        v40 = 0x6465726975716552;
      }

      if (v187 == 1)
      {
        v48 = 0xE90000000000006CLL;
      }

      else
      {
        v48 = 0xE800000000000000;
      }
    }

    else
    {
      v48 = 0xE800000000000000;
    }

    v49 = sub_1C6F765A4(v40, v48, __dst);

    *(v41 + 24) = v49;
    _os_log_impl(&dword_1C6F5C000, v38, v39, "[curatedFakeChapter] Shotlist-matching modes are:\n\tretrievedAssets: %s\n\textendedRetrievedAssets: %s\n\tglobalTraitsExpandedAssets: %s", v41, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v50 = *(v0 + 2968);
  v51 = *(v0 + 2952);
  v52 = *(v0 + 2920);
  v53 = *(v0 + 2912);
  v179 = *(v0 + 2848);
  v183 = v21;
  v54 = *(v0 + 2840);
  memcpy(__dst, __srca, sizeof(__dst));
  v215[0] = v8;
  v55 = sub_1C7149C7C(__dst, v215, v21, v54);
  *(v0 + 3048) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C755BAB0;
  *(v56 + 32) = v197;
  *(v56 + 40) = v200;
  sub_1C75504FC();
  v57 = sub_1C70739AC(v56, v55);
  *(v0 + 3056) = v57;
  v58 = *(v52 + 32);
  *(v0 + 3064) = v58;
  *(v0 + 3072) = (v52 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v58(v51, v50, v53);
  v59 = sub_1C7149FE0(v57, v179, v51);
  *(v0 + 3080) = v59;
  v60 = v59;
  v147 = v58;
  v143 = (v0 + 2576);
  v61 = *(*(v0 + 2832) + *(*(v0 + 2896) + 24));
  *(v0 + 3088) = v61;
  if (v61)
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C755180C();

    __dst[0] = 0xD000000000000025;
    __dst[1] = 0x80000001C75A0D00;
    *(v0 + 2800) = v60[2];
    v62 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v62);

    MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
    sub_1C7161CDC(__dst[0], __dst[1]);
  }

  v151 = v60;
  v63 = v155 != 0;
  if (!v192)
  {
    v63 = 0;
  }

  if (v187)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_1C754FEEC();
  v66 = sub_1C75511BC();
  v133 = v64;
  if (OUTLINED_FUNCTION_128(v66))
  {
    v67 = swift_slowAlloc();
    __dst[0] = OUTLINED_FUNCTION_20_1();
    *v67 = 136315138;
    if (v64)
    {
      v68 = 0;
    }

    else
    {
      v68 = 544501614;
    }

    if (v64)
    {
      v69 = 0xE000000000000000;
    }

    else
    {
      v69 = 0xE400000000000000;
    }

    v70 = sub_1C6F765A4(v68, v69, __dst);

    *(v67 + 4) = v70;
    _os_log_impl(&dword_1C6F5C000, v65, v66, "[curatedFakeChapter] Shotlist will %sdrive the curation span", v67, 0xCu);
    OUTLINED_FUNCTION_12_6();
    OUTLINED_FUNCTION_109();
  }

  v124 = v192 != 0;
  v125 = v187 != 0;
  v120 = v155 != 0;
  v156 = *(v0 + 2944);
  v188 = *(v0 + 2912);
  v193 = *(v0 + 2960);
  v71 = *(v0 + 2904);
  v100 = *(v0 + 2864);
  v72 = *(v0 + 2848);
  v108 = *(v0 + 2840);
  v73 = *(v0 + 2832);
  v116 = v73;
  v129 = *(v0 + 2816);
  v112 = *(*(v0 + 296) + 16) != 0;
  memcpy((v0 + 320), __srca, 0x130uLL);
  sub_1C714E5B8(v73, v71);
  v74 = *v160;
  v75 = *(v160 + 8);
  v76 = *(v160 + 16);
  *(v0 + 2712) = *v160;
  *(v0 + 2720) = v75;
  *(v0 + 2728) = v76;
  *(v0 + 2776) = &unk_1F46A8048;
  type metadata accessor for Hastings.FeatureProvider();
  swift_allocObject();
  sub_1C6FDE884(__srca, v0 + 624);
  v77 = v74;

  v78 = Hastings.FeatureProvider.init(storyElements:storySession:storyPhotoLibraryContext:configuration:)((v0 + 320), v71, (v0 + 2712), (v0 + 2776));
  *(v0 + 3096) = v78;
  v104 = v72;
  __swift_project_boxed_opaque_existential_1(v72, *(v205 + 24));
  v79 = swift_task_alloc();
  *(v79 + 16) = v78;
  *(v79 + 24) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EC8);
  sub_1C754F1DC();

  v80 = *(v0 + 2768);
  *(v0 + 3104) = v80;
  v81 = OUTLINED_FUNCTION_90();
  __swift_project_boxed_opaque_existential_1(v81, v82);
  v83 = swift_task_alloc();
  v83[2] = v100;
  v83[3] = v57;
  v83[4] = __srca;
  sub_1C754F1DC();

  v84 = *(v0 + 2736);
  *(v0 + 3112) = v84;
  v85 = *(v0 + 2744);
  *(v0 + 3120) = v85;
  v86 = *(v0 + 2752);
  *(v0 + 3128) = v86;
  v165 = *(v100 + *(v164 + 20));
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1C755BAB0;
  *(v87 + 32) = v197;
  *(v87 + 40) = v200;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C707DA44();
  v201 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1C755BAB0;
  *(v89 + 32) = v84;
  *(v89 + 40) = v85;
  *(v89 + 48) = v86;
  __swift_mutable_project_boxed_opaque_existential_0(v108, *(v108 + 24));
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v90 = sub_1C755057C();
  *(v0 + 2576) = v165;
  *(v0 + 2584) = v201;
  *(v0 + 2592) = v183;
  *(v0 + 2600) = v80;
  *(v0 + 2608) = v209;
  *(v0 + 2616) = v89;
  *(v0 + 2624) = v133;
  *(v0 + 2625) = v120;
  *(v0 + 2626) = v124;
  *(v0 + 2627) = v125;
  *(v0 + 2628) = v112;
  *(v0 + 2629) = v90;
  __swift_project_boxed_opaque_existential_1(v104, *(v205 + 24));
  v91 = swift_task_alloc();
  v91[2] = v116;
  v91[3] = v129;
  v91[4] = v143;
  *(v0 + 3136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8);
  sub_1C754F1DC();

  type metadata accessor for Hastings.DiagnosticReporter();
  v92 = swift_allocObject();
  *(v0 + 3144) = v92;
  _s10SummarizerC18DiagnosticReporterCMa();
  swift_allocObject();
  *(v92 + 16) = sub_1C7034BC4();
  v93 = *(v0 + 2592);
  *(v0 + 2520) = *v143;
  *(v0 + 2536) = v93;
  *(v0 + 2552) = *(v0 + 2608);
  *(v0 + 2566) = *(v0 + 2622);
  v147(v156, v193, v188);

  v94 = swift_task_alloc();
  *(v0 + 3152) = v94;
  *v94 = v0;
  v94[1] = sub_1C7146E9C;
  v95 = *(v0 + 2944);

  return static Hastings.curatedAssetUUIDs(from:options:photoLibrary:eventRecorder:progressReporter:diagnosticReporter:)(v151, v0 + 2520, v169, v0 + 2632, v95, v92);
}

uint64_t sub_1C7146E9C()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 3160) = v5;
  *(v3 + 3168) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C714702C()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  sub_1C75504FC();
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v2))
  {
    v3 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_68_1(v3, 3.8521e-34);
    OUTLINED_FUNCTION_58_10();
    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  if (*(v0 + 3088))
  {
    v9 = *(v0 + 3160);
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000028, 0x80000001C75A0CD0);
    *(v0 + 2792) = *(v9 + 16);
    v10 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v10);

    v11 = OUTLINED_FUNCTION_30_18();
    MEMORY[0x1CCA5CD70](v11);
    sub_1C7161CDC(0, 0xE000000000000000);
  }

  v12 = *(v0 + 3144);
  v13 = *(v0 + 2832);
  v14 = *(v0 + 2816);
  __swift_project_boxed_opaque_existential_1(*(v0 + 2848), *(*(v0 + 2848) + 24));
  v15 = swift_task_alloc();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v12;
  sub_1C754F1DC();

  v16 = swift_task_alloc();
  *(v0 + 3176) = v16;
  *v16 = v0;
  v16[1] = sub_1C7147284;
  OUTLINED_FUNCTION_17_1();

  return static StoryGenerationUtilities.memoriesDedupedAssetUUIDs(from:in:eligibleAssetUUIDs:requiredAssetUUIDs:)(v17, v18, v19, v20);
}

uint64_t sub_1C7147284()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 3184) = v4;
  *(v2 + 3192) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7147388()
{
  sub_1C75504FC();
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v2))
  {
    v3 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_68_1(v3, 3.8521e-34);
    OUTLINED_FUNCTION_58_10();
    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  v9 = *(v0 + 2816);
  v10 = [*(v0 + 24) string];
  v11 = sub_1C755068C();
  v13 = v12;

  *(v0 + 3200) = v11;
  *(v0 + 3208) = v13;
  sub_1C7055874(v9 + 328, v0 + 2672);
  OUTLINED_FUNCTION_10_3((v0 + 2672));
  OUTLINED_FUNCTION_31_2();
  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v0 + 3216) = v15;
  *v15 = v0;
  v15[1] = sub_1C7147574;
  v16 = OUTLINED_FUNCTION_57_0();

  return v18(v16);
}

uint64_t sub_1C7147574()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[403] = v5;
  v3[404] = v6;
  v3[405] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_36_13();

    sub_1C714E318((v3 + 322));
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7147714()
{
  OUTLINED_FUNCTION_123();
  v0[406] = v0[39];
  OUTLINED_FUNCTION_10_3(v0 + 334);
  OUTLINED_FUNCTION_31_2();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[407] = v2;
  *v2 = v0;
  v2[1] = sub_1C714782C;
  v3 = OUTLINED_FUNCTION_57_0();

  return v5(v3);
}

uint64_t sub_1C714782C()
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 3264) = v5;
  *(v3 + 3272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_36_13();

    sub_1C714E318(v3 + 2576);
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_129();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C71479D8()
{
  OUTLINED_FUNCTION_63_0();
  v1 = (v0 + 2760);
  v2 = *(v0 + 3184);
  sub_1C754F2BC();
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = v2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  *(v0 + 3280) = v6;
  v7 = (v5 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v0 + 3024);
    if (v8)
    {
      v9 = *(v0 + 3024);
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    if (v8)
    {
      v10 = *(v0 + 3032);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v7 - 1);
    v12 = *v7;
    if (v11 != v10 || v12 != v9)
    {
      OUTLINED_FUNCTION_15_1();
      if ((sub_1C7551DBC() & 1) == 0)
      {
        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v1 = v6;
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v1;
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6F7ED9C();
          v15 = v1;
          v6 = *v1;
        }

        v5 = v2 + 40;
        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        v18 = v6;
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_15(v16);
          v21 = v20;
          sub_1C6F7ED9C();
          v15 = v21;
          v18 = *v21;
          v5 = v2 + 40;
        }

        ++v3;
        *(v18 + 16) = v17 + 1;
        v19 = v18 + 16 * v17;
        *(v19 + 32) = v11;
        *(v19 + 40) = v12;
        v6 = v18;
        v1 = v15;
        goto LABEL_2;
      }
    }

    v7 += 2;
    ++v3;
  }

  v52 = *(v0 + 3064);
  v22 = *(v0 + 3032);
  v23 = *(v0 + 3024);
  v24 = *(v0 + 3000);
  v51 = *(v0 + 2936);
  v49 = *(v0 + 2928);
  v50 = *(v0 + 2912);
  v25 = *(v0 + 2888);
  v26 = *(v0 + 2880);
  v27 = v23 == 0;
  if (!v23)
  {
    v23 = 0xE000000000000000;
  }

  v48 = v23;
  if (v27)
  {
    v22 = 0;
  }

  v46 = *(v0 + 2872);
  v47 = v22;
  v28 = objc_allocWithZone(MEMORY[0x1E6978840]);
  sub_1C75504FC();
  v29 = [v28 init];
  v30 = OUTLINED_FUNCTION_67_8();
  v31 = OUTLINED_FUNCTION_67_8();
  sub_1C754DFEC();
  v32 = sub_1C754DF8C();
  v34 = v33;
  (*(v26 + 8))(v25, v46);
  *(v0 + 2208) = v32;
  *(v0 + 2216) = v34;
  *(v0 + 2224) = 0;
  *(v0 + 2232) = 0xE000000000000000;
  *(v0 + 2240) = 3;
  *(v0 + 2248) = v24;
  *(v0 + 2256) = 0;
  *(v0 + 2264) = 0xE000000000000000;
  *(v0 + 2272) = v29;
  *(v0 + 2280) = v30;
  *(v0 + 2288) = v31;
  *(v0 + 2296) = 0u;
  v35 = swift_allocObject();
  *(v0 + 3288) = v35;
  *(v35 + 16) = xmmword_1C755BAB0;
  *(v35 + 32) = v47;
  *(v35 + 40) = v48;
  memcpy((v0 + 2312), (v0 + 2208), 0x68uLL);
  v52(v49, v51, v50);
  sub_1C75504FC();
  v36 = swift_task_alloc();
  *(v0 + 3296) = v36;
  *v36 = v0;
  v36[1] = sub_1C7147D60;
  OUTLINED_FUNCTION_128_0();

  sub_1C714A95C(v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_1C7147D60(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 3304) = v1;

  if (v1)
  {

    sub_1C714E318(v5 + 2576);
  }

  else
  {
    *(v5 + 3312) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7147F60()
{
  OUTLINED_FUNCTION_63_0();
  v44 = *(v0 + 3288);
  sub_1C6FD2568(*(v0 + 3312));

  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  v3 = OUTLINED_FUNCTION_128(v2);
  v4 = *(v0 + 3280);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_23_1();
    *v5 = 134218240;
    *(v5 + 4) = *(v4 + 16) + 1;

    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v44 + 16);

    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  if (*(v0 + 3088))
  {
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75A0CA0);
    *(v0 + 2784) = *(v44 + 16);
    v11 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v11);

    v12 = OUTLINED_FUNCTION_30_18();
    MEMORY[0x1CCA5CD70](v12);
    sub_1C7161CDC(0, 0xE000000000000000);
  }

  v13 = *(v0 + 2864) + *(v0 + 3360);
  v14 = *(v13 + 8);
  v15 = *v13;

  v16 = [v15 librarySpecificFetchOptions];
  *(v0 + 3320) = v16;
  [v16 setSharingFilter_];

  if (qword_1EDD08290 != -1)
  {
    swift_once();
  }

  v17 = sub_1C7550B3C();
  [v16 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C75604F0;
  v19 = sub_1C6F65BE8(0, &qword_1EDD108F0);
  swift_getKeyPath();
  v20 = sub_1C75511EC();
  *(v18 + 56) = v19;
  *(v18 + 32) = v20;
  swift_getKeyPath();
  v21 = sub_1C75511EC();
  *(v18 + 88) = v19;
  *(v18 + 64) = v21;
  v22 = OUTLINED_FUNCTION_154();
  sub_1C70E7F40(v22, v23);
  v24 = objc_opt_self();
  v25 = v16;
  v26 = OUTLINED_FUNCTION_57_0();
  v28 = sub_1C6FCA158(v26, v27, v24);
  *(v0 + 3328) = v28;

  if (v28)
  {
    v42 = *(v0 + 2856);
    v43 = *(v0 + 2864);

    sub_1C714E318(v0 + 2576);

    memcpy((v0 + 1056), (v0 + 2208), 0x68uLL);
    *(v0 + 1160) = v28;
    *(v0 + 1168) = 0;
    *(v0 + 1176) = MEMORY[0x1E69E7CC8];
    __swift_project_boxed_opaque_existential_1((v0 + 2632), *(v0 + 2656));
    v37 = swift_task_alloc();
    *(v0 + 3336) = v37;
    v37[2] = v42;
    v37[3] = v0 + 1056;
    v37[4] = v0 + 16;
    v37[5] = v43;
    sub_1C6FC061C(v0 + 2208, v0 + 2416);
    v38 = v28;
    v39 = swift_task_alloc();
    *(v0 + 3344) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215140);
    *v39 = v0;
    v39[1] = sub_1C71484A8;
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2A6A0](v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_1C71484A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C71485B4()
{
  OUTLINED_FUNCTION_63_0();
  memcpy(v0 + 260, v0 + 228, 0x80uLL);
  memcpy(v0 + 244, v0 + 228, 0x80uLL);
  if (sub_1C6F9ED5C((v0 + 244)) == 1)
  {
    v1 = v0[416];
    v2 = v0[374];
    v3 = v0[373];
    v26 = v0[415];
    v27 = v0[372];
    v4 = v0[365];
    v28 = v0[357];
    v29 = v0[364];
    v5 = v0[356];

    sub_1C6FE0D14();
    swift_allocError();
    OUTLINED_FUNCTION_62_1(v6, 4);
    swift_willThrow();

    sub_1C6FBC664((v0 + 132));

    sub_1C70552E0((v0 + 276));
    __swift_destroy_boxed_opaque_existential_1((v0 + 334));
    __swift_destroy_boxed_opaque_existential_1((v0 + 329));
    OUTLINED_FUNCTION_10_3(v5);
    OUTLINED_FUNCTION_16_6();
    sub_1C754F1AC();
    (*(v3 + 8))(v2, v27);
    (*(v4 + 8))(v28, v29);
  }

  else
  {
    v7 = v0[386];
    memcpy(v0 + 148, v0 + 244, 0x80uLL);
    if (v7)
    {
      v8 = v0[416];
      v9 = v0[376];
      v10 = v0[358];
      v11 = v0[352];
      memcpy(v0 + 196, v0 + 260, 0x80uLL);
      sub_1C6FB7BB8((v0 + 196), (v0 + 180));
      sub_1C755180C();
      v13 = *v11;
      v12 = v11[1];
      sub_1C75504FC();

      MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A0C60);
      sub_1C6FB7BB8((v0 + 244), (v0 + 164));
      sub_1C716382C();

      sub_1C755180C();
      sub_1C75504FC();

      MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A0C80);
      v14 = swift_task_alloc();
      v14[2] = v8;
      v14[3] = v10;
      v14[4] = v9;
      sub_1C7164850(v13, v12, sub_1C714E45C, v14);
    }

    else
    {
      memcpy(v0 + 116, v0 + 260, 0x80uLL);
      sub_1C6FB7BB8((v0 + 116), (v0 + 212));
    }

    v15 = v0[419];
    sub_1C754F2EC();
    v16 = v0[416];
    v17 = v0[415];
    v18 = v0[374];
    v19 = v0[373];
    v30 = v0[372];
    if (!v15)
    {
      v23 = v0[374];
      v24 = v0[356];
      v25 = v0[351];

      sub_1C70552E0((v0 + 276));
      sub_1C6FBC664((v0 + 132));
      sub_1C6FD7FC8((v0 + 260), &qword_1EC215140);
      memcpy(v25, v0 + 148, 0x80uLL);
      __swift_destroy_boxed_opaque_existential_1((v0 + 334));
      __swift_destroy_boxed_opaque_existential_1((v0 + 329));
      OUTLINED_FUNCTION_70(v24, v24[3]);
      sub_1C754F1AC();
      (*(v19 + 8))(v23, v30);

      OUTLINED_FUNCTION_43();
LABEL_9:
      OUTLINED_FUNCTION_128_0();

      __asm { BRAA            X1, X16 }
    }

    v20 = v0[356];

    sub_1C6FD7FC8((v0 + 260), &qword_1EC215140);
    sub_1C6FD7FC8((v0 + 260), &qword_1EC215140);
    sub_1C6FBC664((v0 + 132));

    sub_1C70552E0((v0 + 276));
    __swift_destroy_boxed_opaque_existential_1((v0 + 334));
    __swift_destroy_boxed_opaque_existential_1((v0 + 329));
    OUTLINED_FUNCTION_70(v20, v20[3]);
    sub_1C754F1AC();
    (*(v19 + 8))(v18, v30);
  }

  OUTLINED_FUNCTION_3_52();

  OUTLINED_FUNCTION_43();
  goto LABEL_9;
}

uint64_t sub_1C7148B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  sub_1C714E318(v12 + 2576);
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7148C10()
{
  v6 = v0[374];
  v1 = v0[373];
  v2 = v0[365];
  v9 = v0[364];
  v7 = v0[372];
  v8 = v0[357];
  v3 = v0[356];

  sub_1C714E318((v0 + 322));

  __swift_destroy_boxed_opaque_existential_1((v0 + 329));
  OUTLINED_FUNCTION_10_3(v3);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v1 + 8))(v6, v7);
  (*(v2 + 8))(v8, v9);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7148DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  __swift_destroy_boxed_opaque_existential_1(v12 + 2672);
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7148ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  __swift_destroy_boxed_opaque_existential_1(v12 + 2672);
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C7148FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_1_56();

  sub_1C70552E0(v12 + 2208);
  __swift_destroy_boxed_opaque_existential_1(v12 + 2672);
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v13 = OUTLINED_FUNCTION_21_24();
  v14(v13);
  v15 = OUTLINED_FUNCTION_23_19();
  v16(v15);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1C71490A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[416];
  v14 = v12[415];
  v15 = v12[365];
  v28 = v12[364];
  v16 = v12[357];

  sub_1C70552E0((v12 + 276));
  sub_1C6FBC664((v12 + 132));
  __swift_destroy_boxed_opaque_existential_1((v12 + 334));
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_42_17();
  sub_1C754F1AC();
  v17 = OUTLINED_FUNCTION_15_1();
  v18(v17);
  (*(v15 + 8))(v16, v28);
  OUTLINED_FUNCTION_0_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

void sub_1C71491D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v33 = a1 + 32;
  v34 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC8];
LABEL_2:
  v4 = MEMORY[0x1E69E7CC0];
  if (v2 == v34)
  {
    *a2 = v3;
  }

  else
  {
    v36 = v3;
    v5 = (v33 + 40 * v2);
    v6 = v5[2];
    v7 = v5[3];
    v8 = v5[4];
    sub_1C75504FC();
    v9 = v6;
    sub_1C75504FC();
    v38 = v8;
    sub_1C75504FC();
    v35 = v9;
    if ([v9 fetchedObjects])
    {
      v10 = OUTLINED_FUNCTION_19_1();
      sub_1C6F65BE8(v10, &qword_1EDD0FA70);
      v11 = sub_1C7550B5C();
    }

    else
    {
      v11 = v4;
    }

    v12 = v4;
    v13 = sub_1C6FB6304();
    v14 = 0;
    v37 = v12;
LABEL_7:
    v15 = v38;
    while (1)
    {
      if (v13 == v14)
      {

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FC9078();

        v3 = v36;
        ++v2;
        goto LABEL_2;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1CCA5DDD0](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = sub_1C70CAC04(v16);
      if (v20)
      {
        v21 = v20;
        if (*(v15 + 16))
        {
          v22 = v19;
          v23 = sub_1C6F78124(v19, v20);
          if (v24)
          {
            v25 = *(*(v38 + 56) + 8 * v23);

            v26 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB37AC();
              v26 = v30;
            }

            v28 = *(v26 + 16);
            v27 = *(v26 + 24);
            if (v28 >= v27 >> 1)
            {
              OUTLINED_FUNCTION_15(v27);
              sub_1C6FB37AC();
              v26 = v31;
            }

            *(v26 + 16) = v28 + 1;
            v37 = v26;
            v29 = (v26 + 24 * v28);
            v29[4] = v22;
            v29[5] = v21;
            v29[6] = v25;
            v14 = v18;
            goto LABEL_7;
          }

          v15 = v38;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v14;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C71494AC(void *a1, void *a2)
{
  v3 = a1[21];
  v4 = a1[22];
  v5 = a1[23];
  __dst[0] = *a2;
  Hastings.ShotlistRetrieval.assetUUIDs.getter();
  memcpy(__dst, a1, sizeof(__dst));
  v14 = v3;
  v15 = v4;
  v16 = v5;
  memcpy(v17, a1 + 24, sizeof(v17));
  v6 = sub_1C7149654(__dst);
  v7 = sub_1C75504FC();
  if (v6 >= 2)
  {
    sub_1C7069A44();
  }

  v18 = v7;
  memcpy(__dst, a1, sizeof(__dst));
  v14 = v3;
  v15 = v4;
  v16 = v5;
  memcpy(v17, a1 + 24, sizeof(v17));
  v8 = sub_1C7149A3C(__dst);
  v9 = sub_1C75504FC();
  if (v8 >= 2)
  {
    sub_1C7069A44();
  }

  sub_1C739796C(v9);
  memcpy(__dst, a1, sizeof(__dst));
  v14 = v3;
  v15 = v4;
  v16 = v5;
  memcpy(v17, a1 + 24, sizeof(v17));
  sub_1C7149B44(__dst);
  if (v10 > 1u)
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v5 = v11;
  }

  else
  {

    sub_1C75504FC();
  }

  sub_1C739796C(v5);
  return v18;
}

uint64_t sub_1C7149654(uint64_t a1)
{
  v2 = type metadata accessor for TimeExtendedToken(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 232);
  v33 = *(a1 + 216);
  v34 = v9;
  v10 = *(a1 + 256);
  v35 = *(a1 + 248);
  v32 = *(a1 + 264);
  v12 = *(a1 + 280);
  v11 = *(a1 + 288);
  swift_storeEnumTagMultiPayload();
  v24 = v8;
  LOBYTE(a1) = sub_1C707351C();
  sub_1C714D870(v8, type metadata accessor for QueryTokenCategoryType);
  if (a1)
  {
    return 1;
  }

  if (*(v12 + 16))
  {
    return 0;
  }

  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v10;
  v29 = v32;
  v30 = v12;
  v31 = v11;
  if (ExtendedTokenCollection.numberOfQueryCharacters.getter() > 0)
  {
    return 0;
  }

  v14 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v14);
  *&v23[-16] = v8;
  v15 = sub_1C707351C();
  result = sub_1C714D870(v8, type metadata accessor for QueryTokenCategoryType);
  if (v15)
  {
    return 0;
  }

  v16 = *(v10 + 16);
  if (!v16)
  {
LABEL_13:
    v20 = (v11 + 58);
    v21 = *(v11 + 16) + 1;
    while (--v21)
    {
      result = 0;
      v22 = *v20;
      v20 += 40;
      if (v22 == 1)
      {
        return result;
      }
    }

    return 1;
  }

  v17 = 0;
  v18 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (2)
  {
    if (v17 < *(v10 + 16))
    {
      sub_1C714E5B8(v18 + *(v3 + 72) * v17++, v5);
      switch(v5[57])
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
          v19 = sub_1C7551DBC();

          result = sub_1C714D870(v5, type metadata accessor for TimeExtendedToken);
          if (v19)
          {
            return 0;
          }

          if (v16 == v17)
          {
            goto LABEL_13;
          }

          continue;
        default:

          sub_1C714D870(v5, type metadata accessor for TimeExtendedToken);
          return 0;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7149A3C(uint64_t a1)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + 288);
  swift_storeEnumTagMultiPayload();
  v11 = v4;
  LOBYTE(a1) = sub_1C707351C();
  sub_1C714D870(v4, type metadata accessor for QueryTokenCategoryType);
  if ((a1 & 1) == 0)
  {
    v7 = (v5 + 58);
    v8 = *(v5 + 16) + 1;
    while (--v8)
    {
      v9 = *v7;
      v7 += 40;
      if (v9 == 1)
      {
        return 0;
      }
    }
  }

  return 2;
}

void sub_1C7149B44(uint64_t a1)
{
  v2 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = 0;
  v6 = *(a1 + 296);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    sub_1C7055874(v8, v10);
    sub_1C6FD80E4(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
    if (swift_dynamicCast())
    {
      sub_1C714D870(v4, type metadata accessor for GlobalTrait);
      return;
    }

    ++v5;
    v8 += 40;
  }
}

uint64_t sub_1C7149C7C(const void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v44, a1, 0x130uLL);
  v41 = *a2;
  v13 = *(v4 + *(type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0) + 20) + 16);
  v14 = v44[24];
  v15 = *(v44[24] + 16);
  sub_1C75504FC();
  if (v13 >= v15)
  {
    sub_1C75504FC();
    v29 = sub_1C754FEEC();
    v30 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v30))
    {
      v31 = OUTLINED_FUNCTION_23_1();
      *v31 = 134218240;
      *(v31 + 4) = *(v14 + 16);

      *(v31 + 12) = 2048;
      *(v31 + 14) = v13;
      OUTLINED_FUNCTION_43_15();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }
  }

  else
  {
    v39 = a3;
    v40 = a4;
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_23_1();
      *v18 = 134218240;
      *(v18 + 4) = *(v14 + 16);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v13;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "[assetUUIDsForHastings] %ld storytelling assets, more than %ld, will use staged sampling to reduce", v18, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    memcpy(v43, a1, sizeof(v43));
    v19 = sub_1C7149654(v43);
    memcpy(v43, v44, sizeof(v43));
    v20 = sub_1C7149A3C(v43);
    memcpy(v43, v44, sizeof(v43));
    sub_1C7149B44(v43);
    v22 = v21;
    v42 = v41;
    sub_1C6FDE884(v44, v43);
    Hastings.ShotlistRetrieval.assetUUIDs.getter();
    v24 = v23;
    if (qword_1EC213E28 != -1)
    {
      OUTLINED_FUNCTION_26_22();
    }

    v25 = v22 != 0;
    v26 = sub_1C754FF1C();
    __swift_project_value_buffer(v26, qword_1EC217E80);
    OUTLINED_FUNCTION_62_2();
    (*(v27 + 16))(v12);
    memcpy(&v12[v9[5]], v44, 0x130uLL);
    *&v12[v9[6]] = v24;
    *&v12[v9[7]] = v39;
    v12[v9[8]] = v19 != 0;
    v12[v9[9]] = v20 != 0;
    v12[v9[10]] = v25;
    sub_1C75504FC();
    v28 = FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler.sample(from:maximumNumberOfAssets:randomizer:)(v14, v13);

    sub_1C714D870(v12, type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator.StagedSampler);
    return v28;
  }

  return v14;
}

void *sub_1C7149FE0(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v7 = sub_1C754F38C();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C754F1CC();
  v67 = a3;
  sub_1C754F2CC();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1C754F1AC();
    (*(v8 + 8))(v10, v7);
    v11 = sub_1C754F2FC();
    (*(*(v11 - 8) + 8))(v67, v11);
    return v7;
  }

  v61 = v10;
  v62 = v8;
  v63 = 0;
  v65 = v7;
  v12 = *(type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0) + 32);
  v60 = v3;
  v13 = v3 + v12;
  v14 = *(v13 + 8);
  v15 = *v13;
  v16 = v66;
  v17 = v15;

  v7 = [v17 librarySpecificFetchOptions];
  [v7 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C755BA90;
  *(v18 + 32) = sub_1C755068C();
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_1C755068C();
  *(v18 + 56) = v20;
  *(v18 + 64) = sub_1C755068C();
  *(v18 + 72) = v21;
  *(v18 + 80) = sub_1C755068C();
  *(v18 + 88) = v22;
  *(v18 + 96) = sub_1C755068C();
  *(v18 + 104) = v23;
  sub_1C6FCA0EC(v18, v7);
  v24 = StoryGenerationCache.cachedObjectIDByAssetUUID(for:)();
  v25 = sub_1C71CDA94(v24);
  v26 = objc_opt_self();
  sub_1C71BA844(v25, v34, v27, v28, v29, v30, v31, v32, v33, v59, v60, v61, v62, v63, v64, v65, v66, v67, Current, v69, v70, v71, v72, v73, v74);
  v36 = v35;

  v64 = v7;
  v37 = sub_1C740A230(v36, v7, v26);
  v38 = v67;
  if (v37)
  {
    v39 = v37;
    v40 = [v37 fetchedObjects];
    if (v40)
    {
      v41 = v40;
      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      v42 = sub_1C7550B5C();

      v43 = v63;
      sub_1C754F2DC();
      if (v43)
      {

        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v44 = v61;
        sub_1C754F1AC();
        (*(v62 + 8))(v44, v65);
        v56 = sub_1C754F2FC();
        (*(*(v56 - 8) + 8))(v38, v56);
      }

      else
      {
        v53 = [objc_allocWithZone(CLSCurationSession) init];
        v69 = 0;
        v70 = 0;
        LODWORD(v71) = 0;
        Current = CFAbsoluteTimeGetCurrent();
        MEMORY[0x1EEE9AC00](v54);
        *(&v59 - 4) = v53;
        *(&v59 - 3) = &Current;
        *(&v59 - 2) = v38;
        *(&v59 - 1) = &v69;
        sub_1C715A3B8(sub_1C714E594, (&v59 - 6), v42);
        v55 = v62;
        v7 = v57;

        sub_1C754F2EC();

        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v58 = v61;
        sub_1C754F1AC();
        (*(v55 + 8))(v58, v65);
      }

      return v7;
    }
  }

  sub_1C75504FC();
  v45 = sub_1C754FEEC();
  v46 = sub_1C755119C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = *(v16 + 16);

    _os_log_impl(&dword_1C6F5C000, v45, v46, "Failed to fetch objects for %ld assets", v47, 0xCu);
    MEMORY[0x1CCA5F8E0](v47, -1, -1);
  }

  else
  {
  }

  v48 = v65;
  v50 = v61;
  v49 = v62;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C754F1AC();
  (*(v49 + 8))(v50, v48);
  v51 = sub_1C754F2FC();
  (*(*(v51 - 8) + 8))(v38, v51);
  return MEMORY[0x1E69E7CC0];
}

void sub_1C714A6F4(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(a1 + 168);
  v7 = *(a1 + 176);
  v8 = v3;
  type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  sub_1C712A774(&v8, v6, &unk_1EC215BF0);
  sub_1C712A774(&v7, v6, &unk_1EC215BF0);
  StoryGenerationCache.momentUUIDByAssetUUID(for:)();
  v4 = v7;
  *a2 = v8;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_1C714A7A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  result = type metadata accessor for StoryGenerationSession(0);
  v9 = *(a1 + *(result + 24));
  if (v9)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1C755180C();
    v11 = *a2;
    v10 = a2[1];
    sub_1C75504FC();

    v12 = v11;
    v13 = v10;
    MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75A0D50);
    sub_1C7035CB0(a3, &v12);
    sub_1C7163DA4();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_1C714A894@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  result = type metadata accessor for StoryGenerationSession(0);
  v9 = *(a1 + *(result + 24));
  if (v9)
  {
    v10 = *a2;
    v11 = a2[1];
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x676E69747361682FLL, 0xED00006C6D782E73);

    sub_1C7164054(v10, v11, v9, a3);
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_1C714A95C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 800) = v8;
  *(v9 + 792) = v15;
  *(v9 + 784) = v14;
  *(v9 + 768) = v13;
  *(v9 + 760) = a8;
  *(v9 + 752) = a7;
  *(v9 + 744) = a6;
  *(v9 + 736) = a5;
  *(v9 + 728) = a4;
  *(v9 + 720) = a3;
  *(v9 + 712) = a1;
  *(v9 + 808) = type metadata accessor for AssetCurationOutlierDetector();
  *(v9 + 816) = swift_task_alloc();
  memcpy((v9 + 16), a2, 0x68uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C714AA38, 0, 0);
}

uint64_t sub_1C714AA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  if ([objc_opt_self() useOnDeviceAssetCurationOutlier])
  {
    v17 = v16[102];
    v18 = v16[101];
    v19 = v16[100];
    v56 = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
    v20 = v19 + *(v56 + 32);
    v21 = *v20;
    v55 = *(v20 + 8);
    v22 = *(v20 + 16);
    sub_1C7055874(*(v19 + *(v56 + 28)) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting, v17 + *(v18 + 28));
    v23 = qword_1EC213DB8;
    v24 = v21;

    if (v23 != -1)
    {
      swift_once();
    }

    v25 = v16[102];
    v26 = v16[101];
    v27 = sub_1C754FF1C();
    __swift_project_value_buffer(v27, qword_1EC25B660);
    OUTLINED_FUNCTION_62_2();
    (*(v28 + 16))(v25);
    v29 = v25 + *(v26 + 20);
    *v29 = v24;
    *(v29 + 8) = v55;
    *(v29 + 16) = v22;
    type metadata accessor for LLMAssetCache();
    swift_allocObject();
    *(v25 + *(v26 + 24)) = LLMAssetCache.init()();
    v30 = qword_1EDD0A988;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (v30 != -1)
    {
      swift_once();
    }

    v31 = v16[97];
    v32 = v16[96];
    v33 = v16[95];
    v34 = *(v16 + 93);
    v35 = v16[90];
    v36 = 4096;
    if (byte_1EC218F88 == 1)
    {
      v36 = 2048;
    }

    v16[67] = v16[89];
    v16[68] = v32;
    v16[69] = v31;
    v16[70] = v35;
    *(v16 + 71) = *(v16 + 91);
    *(v16 + 73) = v34;
    v16[75] = v33;
    v16[76] = v36;
    memcpy(v16 + 77, v16 + 67, 0x50uLL);
    memcpy(v16 + 15, v16 + 2, 0x68uLL);
    type metadata accessor for StoryGenerationSession(0);
    sub_1C6FC061C((v16 + 2), (v16 + 28));
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v16[103] = v37;
    *v37 = v38;
    v37[1] = sub_1C714AE38;
    OUTLINED_FUNCTION_129();

    return AssetCurationOutlierDetector.assetOutliers(with:chapter:eventRecorder:progressReporter:diagnosticContext:)();
  }

  else
  {
    v41 = sub_1C754FEEC();
    v42 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "AssetCurationOutlier is disabled, not removing outliers", v43, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    v45 = *(v44 + 8);
    sub_1C75504FC();
    v46 = OUTLINED_FUNCTION_90();
    v45(v46);

    OUTLINED_FUNCTION_129();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C714AE38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[104] = v5;
  v3[105] = v0;

  if (v0)
  {
    memcpy(v3 + 41, v3 + 15, 0x68uLL);
    sub_1C6FD7FC8((v3 + 41), &qword_1EC217EF8);
  }

  else
  {
    memcpy(v3 + 54, v3 + 15, 0x68uLL);
    sub_1C6FD7FC8((v3 + 54), &qword_1EC217EF8);
    sub_1C714E540((v3 + 67));
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C714AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_126_0();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = 0;
  v68 = v24 + 87;
  v28 = v24[89];
  v29 = *(v28 + 16);
  v30 = v28 + 40;
  v66 = v28 + 40;
  v67 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v31 = (v30 + 16 * v27);
  while (v29 != v27)
  {
    if (v27 >= v29)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    if (__OFADD__(v27, 1))
    {
      goto LABEL_20;
    }

    v32 = *(v31 - 1);
    v33 = *v31;
    v24[87] = v32;
    v24[88] = v33;
    *(swift_task_alloc() + 16) = v68;
    sub_1C75504FC();
    v34 = sub_1C70735F4();

    if (!v34)
    {
      v35 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a12 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v35 = a12;
      }

      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_15(v37);
        sub_1C6F7ED9C();
        v35 = a12;
      }

      *(v35 + 16) = v38 + 1;
      v67 = v35;
      v39 = v35 + 16 * v38;
      *(v39 + 32) = v32;
      *(v39 + 40) = v33;
      ++v27;
      v30 = v66;
      goto LABEL_2;
    }

    ++v27;
    v31 += 2;
  }

  sub_1C75504FC();
  swift_retain_n();
  v40 = sub_1C754FEEC();
  v41 = sub_1C75511BC();
  v42 = OUTLINED_FUNCTION_128(v41);
  v43 = v24[104];
  v44 = v24[102];
  if (v42)
  {
    v45 = OUTLINED_FUNCTION_20_1();
    v46 = OUTLINED_FUNCTION_20_1();
    a12 = v46;
    *v45 = 134218498;
    *(v45 + 4) = *(v43 + 16);

    *(v45 + 12) = 2080;
    v47 = MEMORY[0x1CCA5D090](v43, MEMORY[0x1E69E6158]);
    v49 = v48;

    v50 = sub_1C6F765A4(v47, v49, &a12);

    *(v45 + 14) = v50;
    *(v45 + 22) = 2048;
    v51 = *(v67 + 16);

    *(v45 + 24) = v51;

    OUTLINED_FUNCTION_43_15();
    _os_log_impl(v52, v53, v54, v55, v56, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_17_33();
  sub_1C714D870(v44, v57);

  OUTLINED_FUNCTION_129();

  v60(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, a12, a13, a14, a15, a16);
}

uint64_t sub_1C714B270()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 816);
  OUTLINED_FUNCTION_17_33();
  sub_1C714D870(v1, v2);
  sub_1C714E540(v0 + 536);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C714B2E4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateCreated];
  if (v3)
  {
    v4 = v3;
    sub_1C754DF2C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C754DF6C();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_1C714B364(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C712A774(a1, &v10 - v5, &unk_1EC219230);
  v7 = *a2;
  v8 = sub_1C754DF6C();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1C754DECC();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDateCreated_];
}

id sub_1C714B480@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_1C714B4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  v6 = sub_1C754F2FC();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C714B590, 0, 0);
}

uint64_t sub_1C714B590()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = v0[40];
  sub_1C754F2BC();
  type metadata accessor for FreeformStoryGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8);
  inited = swift_initStackObject();
  v0[47] = inited;
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy((inited + 32), v1, 0x80uLL);
  type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v3 = OUTLINED_FUNCTION_154();
  v4(v3);
  sub_1C6FB7BB8(v1, (v0 + 22));
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_1C714B6DC;
  OUTLINED_FUNCTION_42_17();
  OUTLINED_FUNCTION_44();

  return static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(v6, v7, v8, v9);
}

uint64_t sub_1C714B6DC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 392) = v0;

  if (!v0)
  {
    *(v4 + 400) = v3;
  }

  swift_setDeallocating();
  sub_1C6FDCAA8();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C714B82C()
{
  sub_1C710D898(*(v0 + 400), *(v0 + 304));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C714B8B8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

id sub_1C714B91C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = [a1 fetchedObjects];
  if (result)
  {
    v6 = result;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v7 = sub_1C7550B5C();

    v9 = a2;
    sub_1C714B9F4(v7, &v9, a3);
  }

  else
  {
    v8 = MEMORY[0x1E69E6160];
    a3[3] = MEMORY[0x1E69E6158];
    a3[4] = v8;
    *a3 = 0xD000000000000015;
    a3[1] = 0x80000001C75A0D30;
  }

  return result;
}

unint64_t sub_1C714B9F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = 0;
  v93 = *a2;
  v5 = sub_1C6FB6304();
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v92 = v6;
  while (v5 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA5DDD0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);

      __break(1u);
      return result;
    }

    v9 = v7;
    v10 = [v9 uuid];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C755068C();
      v107 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v92 = v17;
      }

      v15 = *(v92 + 16);
      v14 = *(v92 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_15(v14);
        sub_1C6FB1814();
        v92 = v18;
      }

      v6 = v92;
      *(v92 + 16) = v15 + 1;
      v16 = v92 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v107;
      v4 = v8;
      goto LABEL_2;
    }

    ++v4;
  }

  v19 = sub_1C75504FC();
  v20 = sub_1C706D154(v19);
  v21 = v93;
  v22 = *(v93 + 16);
  if (v22)
  {
    v112 = MEMORY[0x1E69E7CC0];
    sub_1C716E5CC(0, v22, 0);
    v104 = v112;
    v23 = sub_1C70D4544(v93);
    v26 = 0;
    v91 = v22;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(v21 + 32))
    {
      if (((*(v93 + 64 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_74;
      }

      if (*(v21 + 36) != v24)
      {
        goto LABEL_75;
      }

      v98 = v25;
      v100 = v24;
      v102 = v23;
      v106 = v26 + 1;
      v27 = (*(v21 + 48) + 16 * v23);
      v95 = v27[1];
      v97 = *v27;
      v28 = *(*(v21 + 56) + 8 * v23);
      v29 = *(v28 + 16);
      sub_1C75504FC();
      sub_1C75504FC();
      v30 = 0;
      v31 = MEMORY[0x1E69E7CC8];
LABEL_23:
      while (v30 != v29)
      {
        v32 = v30;
        if (v30 >= *(v28 + 16))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        ++v30;
        if (*(v20 + 16))
        {
          v33 = (v28 + 32 + 24 * v32);
          v35 = *v33;
          v34 = v33[1];
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v36 = sub_1C7551FAC();
          v37 = ~(-1 << *(v20 + 32));
          while (1)
          {
            v38 = v36 & v37;
            if (((*(v20 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
            {
              break;
            }

            v39 = (*(v20 + 48) + 16 * v38);
            if (*v39 != v35 || v39[1] != v34)
            {
              v41 = sub_1C7551DBC();
              v36 = v38 + 1;
              if ((v41 & 1) == 0)
              {
                continue;
              }
            }

            swift_isUniquelyReferenced_nonNull_native();
            v110 = v31;
            sub_1C6FC79C4();

            goto LABEL_23;
          }
        }
      }

      v42 = v104;
      v112 = v104;
      v44 = *(v104 + 16);
      v43 = *(v104 + 24);
      if (v44 >= v43 >> 1)
      {
        v51 = OUTLINED_FUNCTION_15(v43);
        sub_1C716E5CC(v51, v44 + 1, 1);
        v42 = v112;
      }

      *(v42 + 16) = v44 + 1;
      v104 = v42;
      v45 = (v42 + 24 * v44);
      v45[4] = v97;
      v45[5] = v95;
      v45[6] = v31;
      v21 = v93;
      v46 = sub_1C733EECC(v102, v100, v98 & 1, v93);
      v48 = v47;
      v50 = v49;
      sub_1C6F9ED50(v102, v100, v98 & 1);
      v23 = v46;
      v24 = v48;
      v25 = v50;
      v26 = v106;
      if (v106 == v91)
      {

        sub_1C6F9ED50(v46, v48, v50 & 1);
        v6 = v92;
        v52 = v104;
        goto LABEL_40;
      }
    }

    goto LABEL_73;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v53 = *(v6 + 16);
  if (v53)
  {
    v112 = MEMORY[0x1E69E7CC0];
    sub_1C716E580();
    v54 = 0;
    v55 = v112;
    v56 = *(v52 + 16);
    v96 = v6 + 32;
    v99 = v52 + 48;
    v105 = v52;
    v94 = v53;
    while (v54 < *(v6 + 16))
    {
      v101 = v54 + 1;
      v103 = v55;
      v57 = (v96 + 16 * v54);
      v58 = v57[1];
      v108 = *v57;
      sub_1C75504FC();
      v59 = 0;
      v60 = MEMORY[0x1E69E7CC0];
LABEL_44:
      v61 = (v99 + 24 * v59);
      while (v56 != v59)
      {
        if (v59 >= *(v52 + 16))
        {
          goto LABEL_70;
        }

        v62 = *v61;
        if (*(*v61 + 16))
        {
          v64 = *(v61 - 2);
          v63 = *(v61 - 1);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v65 = sub_1C6F78124(v108, v58);
          if (v66)
          {
            v67 = *(*(v62 + 56) + 8 * v65);
            swift_bridgeObjectRelease_n();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB37DC();
              v60 = v71;
            }

            v69 = *(v60 + 16);
            v68 = *(v60 + 24);
            if (v69 >= v68 >> 1)
            {
              OUTLINED_FUNCTION_15(v68);
              sub_1C6FB37DC();
              v60 = v72;
            }

            ++v59;
            *(v60 + 16) = v69 + 1;
            v70 = (v60 + 24 * v69);
            v70[4] = v64;
            v70[5] = v63;
            v70[6] = v67;
            goto LABEL_44;
          }

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v61 += 3;
        ++v59;
      }

      v110 = v60;
      sub_1C75504FC();
      sub_1C714D51C(&v110);

      v73 = v110;
      v74 = *(v110 + 16);
      if (v74)
      {
        v109 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v75 = v109;
        v76 = (v73 + 48);
        do
        {
          v77 = *(v76 - 1);
          v78 = *v76;
          v110 = *(v76 - 2);
          v111 = v77;
          swift_bridgeObjectRetain_n();
          MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_1C755BAB0;
          *(v79 + 56) = MEMORY[0x1E69E63B0];
          *(v79 + 64) = MEMORY[0x1E69E6438];
          *(v79 + 32) = v78;
          v80 = sub_1C75506BC();
          MEMORY[0x1CCA5CD70](v80);

          v82 = v110;
          v81 = v111;
          v84 = *(v109 + 16);
          v83 = *(v109 + 24);
          if (v84 >= v83 >> 1)
          {
            OUTLINED_FUNCTION_15(v83);
            sub_1C6F7ED9C();
          }

          *(v109 + 16) = v84 + 1;
          v85 = v109 + 16 * v84;
          *(v85 + 32) = v82;
          *(v85 + 40) = v81;
          v76 += 3;
          --v74;
        }

        while (v74);

        v53 = v94;
      }

      else
      {

        v75 = MEMORY[0x1E69E7CC0];
      }

      v55 = v103;
      v112 = v103;
      v87 = *(v103 + 16);
      v86 = *(v103 + 24);
      v6 = v92;
      if (v87 >= v86 >> 1)
      {
        OUTLINED_FUNCTION_15(v86);
        sub_1C716E580();
        v55 = v112;
      }

      *(v55 + 16) = v87 + 1;
      v88 = (v55 + 24 * v87);
      v88[4] = v108;
      v88[5] = v58;
      v88[6] = v75;
      v54 = v101;
      v52 = v105;
      if (v101 == v53)
      {

        goto LABEL_68;
      }
    }

    goto LABEL_76;
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_68:
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EE0);
  result = sub_1C714E468();
  a3[4] = result;
  *a3 = v55;
  return result;
}