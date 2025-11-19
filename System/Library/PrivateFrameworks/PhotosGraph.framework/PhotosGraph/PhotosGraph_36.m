uint64_t sub_22F3B0CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_22F73F690();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for CacherStatus(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  sub_22F3B170C(v16, v21, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v21[*(v17 + 20)], v7, &qword_27DAB0920, &qword_22F770B20);
  v26 = v42;
  v25 = v43;
  if ((*(v42 + 48))(v7, 1, v43) == 1)
  {
    sub_22F2CE854(v21, type metadata accessor for CacherStatus);
    v22 = &qword_27DAB0920;
    v23 = &qword_22F770B20;
    v24 = v7;
    goto LABEL_5;
  }

  v29 = v41;
  (*(v26 + 32))(v41, v7, v25);
  sub_22F1E3F74(v47);
  memcpy(v48, v47, 0x121uLL);
  if (sub_22F1EDAB8(v48) == 1)
  {
    GEOLocationCoordinate2DMake(v48);
    memcpy(v45, v47, 0x121uLL);
    GEOLocationCoordinate2DMake(v45);
    v27 = *v30;
    v46 = *v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v26 + 8))(v29, v25);
    sub_22F2CE854(v21, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake(v48);
    sub_22F120ADC(v47, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v45, v47, 0x121uLL);
    GEOLocationCoordinate2DMake(v45);
    v32 = v31;
    v27 = v38;
    sub_22F73F680();
    sub_22F73F590();
    v34 = v33;
    v35 = v29;
    v36 = *(v26 + 8);
    v36(v27, v25);
    LOBYTE(v27) = v39;
    v37 = v44;
    sub_22F7416A0();
    if (!v37)
    {
      LOBYTE(v27) = *(v32 + 112) < v34;
    }

    v36(v35, v25);
    sub_22F2CE854(v21, type metadata accessor for CacherStatus);
  }

  return v27 & 1;
}

uint64_t sub_22F3B11B8(void *a1, void *a2, uint64_t a3)
{
  v8 = type metadata accessor for SongSource();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22F741690();
  if (v3)
  {
    return v4;
  }

  v39 = v9;
  v40 = a3;
  v4 = sub_22F7416B0();
  v15 = v14;
  v16 = [a1 librarySpecificFetchOptions];
  v17 = [objc_opt_self() fetchMomentsWithOptions_];
  v18 = [v17 fetchedObjects];

  if (!v18)
  {
    sub_22F3B16B8();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    return v4;
  }

  v41 = v15;
  v42 = v4;
  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  v19 = sub_22F741180();

  v21 = sub_22F3B04D0(v19, a2);

  v22 = v42;
  sub_22F7416A0();
  v38 = 0;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22F770DF0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_22F153470();
  *(v23 + 32) = 0x696669746E656469;
  *(v23 + 40) = 0xEA00000000007265;
  *(v23 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v23 + 104) = sub_22F25F050();
  *(v23 + 72) = v21;

  v24 = sub_22F741560();
  v25 = v38;
  v26 = sub_22F1935BC();
  v38 = v25;
  if (v25)
  {

    return v4;
  }

  v4 = v26;

  v27 = sub_22F1515F8(v21);

  v44 = v27;
  v28 = v4[2];
  if (v28)
  {
    v29 = v4 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v30 = *(v39 + 72);
    do
    {
      sub_22F1684A8(v29, v12);
      v31 = *v12;
      v32 = v12[1];

      sub_22F2CE854(v12, type metadata accessor for SongSource);
      sub_22F164408(v31, v32);

      v29 += v30;
      --v28;
    }

    while (v28);
  }

  v33 = v41;
  v34 = v38;
  sub_22F7416A0();
  if (v34)
  {

    return v4;
  }

  v35 = v44;
  v36 = *(v44 + 16);
  if (!v36)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = sub_22F10B348(*(v44 + 16), 0);
  v37 = sub_22F11A438(&v43, v4 + 4, v36, v35);
  result = sub_22F1534EC();
  if (v37 == v36)
  {

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F3B16B8()
{
  result = qword_27DAB3EC0;
  if (!qword_27DAB3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EC0);
  }

  return result;
}

uint64_t sub_22F3B170C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F3B1774(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 == 0, a1);
}

uint64_t objectdestroyTm_8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v22 = v4;
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
    v4 = v22;
    if (!v11(v5 + v12, 1, v9))
    {
      (*(v10 + 8))(v5 + v12, v9);
    }
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;

  v18 = *(v0 + v15 + 40);

  v19 = *(v0 + v15 + 48);

  v20 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v2 | 7);
}

void sub_22F3B19DC(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 63) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_22F3AF418(a1, a2 & 1, *(v2 + 16), (v2 + v6), *(v2 + v7), *(v2 + v8), v2 + v9, *(v2 + v10), *(v2 + v10 + 8));
}

unint64_t sub_22F3B1AF4()
{
  result = qword_27DAB3EC8;
  if (!qword_27DAB3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EC8);
  }

  return result;
}

void FlexMusicSongProtocol.asJSON(includeCalculatedProperties:)(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F779720;
  *(v3 + 32) = 6580597;
  *(v3 + 40) = 0xE300000000000000;
  v4 = [v2 uid];
  v5 = sub_22F740E20();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(v3 + 48) = v5;
  *(v3 + 56) = v7;
  *(v3 + 72) = v8;
  *(v3 + 80) = 0x614E747369747261;
  *(v3 + 88) = 0xEA0000000000656DLL;
  v9 = [v2 artistName];
  v10 = sub_22F740E20();
  v12 = v11;

  *(v3 + 96) = v10;
  *(v3 + 104) = v12;
  *(v3 + 120) = v8;
  *(v3 + 128) = 0x656D614E676E6F73;
  *(v3 + 136) = 0xE800000000000000;
  v13 = [v2 songName];
  v14 = sub_22F740E20();
  v16 = v15;

  *(v3 + 144) = v14;
  *(v3 + 152) = v16;
  *(v3 + 168) = v8;
  *(v3 + 176) = 0x79616C506E6163;
  *(v3 + 184) = 0xE700000000000000;
  v17 = [v2 canPlay];
  v18 = MEMORY[0x277D839B0];
  *(v3 + 192) = v17;
  *(v3 + 216) = v18;
  *(v3 + 224) = 0x6E6564646968;
  *(v3 + 232) = 0xE600000000000000;
  *(v3 + 240) = [v2 hidden];
  *(v3 + 264) = v18;
  *(v3 + 272) = 0x64656C6C61636572;
  *(v3 + 280) = 0xE800000000000000;
  *(v3 + 288) = [v2 recalled];
  *(v3 + 312) = v18;
  *(v3 + 320) = 0x734449676174;
  *(v3 + 328) = 0xE600000000000000;
  v92 = v2;
  v19 = [v2 tagIDs];
  v20 = sub_22F741420();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_22F10B348(*(v20 + 16), 0);
    v23 = sub_22F11A438(&v98, v22 + 4, v21, v20);
    sub_22F1534EC();
    if (v23 == v21)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_5:
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v3 + 360) = v91;
  *(v3 + 336) = v22;
  v24 = sub_22F14EA28(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = v2;
  v26 = [v2 keywords];
  v27 = sub_22F741420();

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_22F10B348(*(v27 + 16), 0);
    v30 = sub_22F11A438(&v98, v29 + 4, v28, v27);
    sub_22F1534EC();
    if (v30 != v28)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v29[2])
    {
      goto LABEL_8;
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_8:
      v99 = v91;
      *&v98 = v29;
      sub_22F107D08(&v98, v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22F130630(v97, 0x7364726F7779656BLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v32 = [v2 weightedKeywords];
      goto LABEL_11;
    }
  }

  v32 = [v2 weightedKeywords];
LABEL_11:
  v33 = v32;
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v34 = sub_22F740CA0();

  v35 = *(v34 + 16);

  if (v35)
  {
    v36 = [v2 weightedKeywords];
    v37 = sub_22F740CA0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v38 = sub_22F741DC0();
    v39 = v38;
    v40 = 0;
    v42 = v37 + 64;
    v41 = *(v37 + 64);
    v95 = v37;
    v43 = 1 << *(v37 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v41;
    v46 = (v43 + 63) >> 6;
    v93 = v38 + 64;
    v94 = v38;
    if ((v44 & v41) != 0)
    {
      while (1)
      {
        v47 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
LABEL_21:
        v50 = v47 | (v40 << 6);
        v51 = (*(v95 + 48) + 16 * v50);
        v52 = v51[1];
        v96 = *v51;
        v53 = *(*(v95 + 56) + 8 * v50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_22F771340;

        v55 = v53;
        [v55 floatValue];
        *(v54 + 56) = MEMORY[0x277D83A90];
        *(v54 + 64) = MEMORY[0x277D83B08];
        *(v54 + 32) = v56;
        v57 = sub_22F740E60();
        v59 = v58;

        v39 = v94;
        *(v93 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v60 = (v94[6] + 16 * v50);
        *v60 = v96;
        v60[1] = v52;
        v61 = (v94[7] + 16 * v50);
        *v61 = v57;
        v61[1] = v59;
        v62 = v94[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          break;
        }

        v94[2] = v64;
        if (!v45)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v48 = v40;
      v25 = v92;
      while (1)
      {
        v40 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v40 >= v46)
        {

          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
          *&v98 = v39;
          sub_22F107D08(&v98, v97);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          sub_22F130630(v97, 0xD000000000000010, 0x800000022F78D720, v65);
          goto LABEL_25;
        }

        v49 = *(v42 + 8 * v40);
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v45 = (v49 - 1) & v49;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_25:
  v66 = [v25 tagIDs];
  v67 = sub_22F741420();

  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = sub_22F10B348(*(v67 + 16), 0);
    v70 = sub_22F11A438(&v98, v69 + 4, v68, v67);
    sub_22F1534EC();
    if (v70 != v68)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v69[2])
    {
LABEL_28:
      v99 = v91;
      *&v98 = v69;
      sub_22F107D08(&v98, v97);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      sub_22F130630(v97, 0x734449676174, 0xE600000000000000, v71);
      if ((a1 & 1) == 0)
      {
        return;
      }

      goto LABEL_32;
    }
  }

  else
  {

    v69 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_28;
    }
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

LABEL_32:
  v72 = [v25 valence];
  if (v72)
  {
    v73 = v72;
    [v72 floatValue];
    v99 = MEMORY[0x277D83A90];
    LODWORD(v98) = v74;
    sub_22F107D08(&v98, v97);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F130630(v97, 0x65636E656C6176, 0xE700000000000000, v75);
  }

  v76 = [v25 arousal];
  if (v76)
  {
    v77 = v76;
    [v76 floatValue];
    v99 = MEMORY[0x277D83A90];
    LODWORD(v98) = v78;
    sub_22F107D08(&v98, v97);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F130630(v97, 0x6C6173756F7261, 0xE700000000000000, v79);
  }

  v80 = [v25 regions];
  v81 = sub_22F741420();

  v82 = *(v81 + 16);
  if (v82)
  {
    v83 = sub_22F10B348(*(v81 + 16), 0);
    v84 = sub_22F11A438(&v98, v83 + 4, v82, v81);
    sub_22F1534EC();
    if (v84 != v82)
    {
LABEL_50:
      __break(1u);
      return;
    }

    if (v83[2])
    {
      goto LABEL_39;
    }
  }

  else
  {

    v83 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_39:
      v99 = v91;
      *&v98 = v83;
      sub_22F107D08(&v98, v97);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      sub_22F130630(v97, 0x736E6F69676572, 0xE700000000000000, v85);
      goto LABEL_42;
    }
  }

LABEL_42:
  v86 = [v25 mood];
  if (v86)
  {
    v87 = v86;
    v99 = sub_22F120634(0, &qword_27DAB24A8, 0x277CCACA8);
    *&v98 = v87;
    sub_22F107D08(&v98, v97);
    v88 = v87;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F130630(v97, 1685024621, 0xE400000000000000, v89);
  }
}

id MeaningThresholds.__allocating_init(highRecallThreshold:highPrecisionThreshold:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] = a1;
  *&v5[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MeaningThresholds.init(highRecallThreshold:highPrecisionThreshold:)(double a1, double a2)
{
  *&v2[OBJC_IVAR___PGMeaningThresholds_highRecallThreshold] = a1;
  *&v2[OBJC_IVAR___PGMeaningThresholds_highPrecisionThreshold] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MeaningThresholds();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MeaningThresholds.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MeaningThresholds.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeaningThresholds();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3B2818(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_22F146954(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_22F741980();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v26 = v1;
  v27 = v9;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v12 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 56) + 8 * v6);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    v16 = v7;

    if (v15 >= v14 >> 1)
    {
      result = sub_22F146954((v14 > 1), v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    *(v28 + 8 * v15 + 32) = v13;
    v10 = 1 << *(v16 + 32);
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v12);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v16;
    v18 = *(v16 + 36);
    v9 = v27;
    if (v27 != v18)
    {
      goto LABEL_26;
    }

    v19 = v17 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v11 = v26;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (a1 + 72 + 8 * v12);
      v11 = v26;
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22F107D18(v6, v27, 0);
          v7 = a1;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v6, v27, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v10;
    if (v8 == v11)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22F3B2A6C(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6620(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F3B52FC(v5);
  *a1 = v3;
}

PhotosGraph::CLIPIndex::CreationOptions __swiftcall CLIPIndex.CreationOptions.init(positivesOversamplingFactor:negativesOversamplingFactor:)(Swift::Int positivesOversamplingFactor, Swift::Int negativesOversamplingFactor)
{
  *v2 = positivesOversamplingFactor;
  v2[1] = negativesOversamplingFactor;
  result.negativesOversamplingFactor = negativesOversamplingFactor;
  result.positivesOversamplingFactor = positivesOversamplingFactor;
  return result;
}

uint64_t static CLIPIndex.create(using:with:options:)(void *a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v8 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v127 = (&v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v126 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = &v117 - v13;
  v14 = a3[1];
  v118 = *a3;
  v119 = v14;
  if (qword_27DAAFDA8 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v15 = qword_27DAD0E90;
    *&v16 = CACurrentMediaTime();
    sub_22F1B560C("CreateCLIPIndex", 15, 2u, v16, 0, v15, v136);
    sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() filterEncodedCLIPFeatureVectorNotEmpty];
    v19 = [ObjCClassFromMetadata nodesMatchingFilter:v18 inGraph:a1];

    if ([v19 count] < 1)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      v33 = swift_allocObject();
      sub_22F740830();

      v34 = v118;
      v35 = v119;
      if (v118 >= 1 && v119 >= 1)
      {
        *(v33 + 16) = MEMORY[0x277D84F90];
        *(v33 + 24) = 1;
        *(v33 + 32) = v34;
        *(v33 + 40) = v35;
        type metadata accessor for CLIPIndex();
        v27 = swift_allocObject();
        v36 = MEMORY[0x277D84F98];
        *(v27 + 2) = MEMORY[0x277D84F98];
        *(v27 + 3) = v36;
        *(v27 + 4) = v33;
        *(v27 + 5) = 768;
        sub_22F1B2BBC(0);

        return v27;
      }

      goto LABEL_87;
    }

    v137 = MEMORY[0x277D84F98];
    v20 = swift_allocObject();
    *(v20 + 16) = &v137;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_22F3B6950;
    *(v21 + 24) = v20;
    aBlock[4] = sub_22F250854;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107E24;
    aBlock[3] = &block_descriptor_51;
    v22 = _Block_copy(aBlock);

    [v19 enumerateUsingBlock_];
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      sub_22F7420C0();
      __break(1u);
LABEL_90:
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v23 = v137;

    v24 = *(a2 + 32);
    v25 = __swift_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    v26 = *(v23 + 16);
    v129 = v23;
    if (v26)
    {
      v132 = v25;
      v133 = v24;
      v27 = sub_22F10B7A4(v26, 0);
      v28 = *(sub_22F73FE50() - 8);
      sub_22F11D0CC(aBlock, &v27[(*(v28 + 80) + 32) & ~*(v28 + 80)], v26, v23);
      v134 = v29;

      sub_22F0FF590();
      if (v134 != v26)
      {
        goto LABEL_86;
      }

      v23 = v129;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v37 = sub_22F7408A0();
    if (v4)
    {

      sub_22F1B2BBC(1);

      return v27;
    }

    a1 = v37;
    v117 = 0;

    a2 = *(v23 + 16);
    v124 = v19;
    v121 = a1;
    if (!a2)
    {
      break;
    }

    aBlock[0] = MEMORY[0x277D84F90];
    a1 = aBlock;
    sub_22F146454(0, a2, 0);
    v134 = aBlock[0];
    v38 = v23 + 64;
    v39 = -1 << *(v23 + 32);
    v4 = sub_22F741980();
    v40 = 0;
    v120 = v23 + 72;
    v122 = a2;
    v123 = v23 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v23 + 32))
    {
      if ((*(v38 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_74;
      }

      v132 = 1 << v4;
      v133 = v4 >> 6;
      v41 = *(v23 + 36);
      v130 = v40;
      v131 = v41;
      v42 = v128;
      v43 = *(v128 + 48);
      v44 = *(v23 + 56);
      v45 = (*(v23 + 48) + 16 * v4);
      v47 = *v45;
      v46 = v45[1];
      v48 = sub_22F73FE50();
      v49 = *(v48 - 8);
      v50 = v125;
      (*(v49 + 16))(&v125[v43], v44 + *(v49 + 72) * v4, v48);
      v51 = v126;
      *v126 = v47;
      *(v51 + 1) = v46;
      (*(v49 + 32))(&v51[*(v42 + 48)], &v50[v43], v48);
      v52 = v51;
      v53 = v127;
      sub_22F3B6970(v52, v127);
      v55 = *v53;
      v54 = v53[1];
      v56 = *(v42 + 48);
      v57 = *(v49 + 8);

      v57(v53 + v56, v48);
      v58 = v134;
      aBlock[0] = v134;
      a2 = *(v134 + 16);
      v59 = *(v134 + 24);
      if (a2 >= v59 >> 1)
      {
        sub_22F146454((v59 > 1), a2 + 1, 1);
        v58 = aBlock[0];
      }

      *(v58 + 16) = a2 + 1;
      v60 = v58 + 16 * a2;
      *(v60 + 32) = v55;
      *(v60 + 40) = v54;
      v23 = v129;
      a1 = (1 << *(v129 + 32));
      if (v4 >= a1)
      {
        goto LABEL_75;
      }

      v38 = v123;
      v61 = *(v123 + 8 * v133);
      if ((v61 & v132) == 0)
      {
        goto LABEL_76;
      }

      v134 = v58;
      if (v131 != *(v129 + 36))
      {
        goto LABEL_77;
      }

      v62 = v61 & (-2 << (v4 & 0x3F));
      if (v62)
      {
        a1 = (__clz(__rbit64(v62)) | v4 & 0x7FFFFFFFFFFFFFC0);
        v19 = v124;
      }

      else
      {
        v63 = v133 << 6;
        v64 = v133 + 1;
        v65 = (v120 + 8 * v133);
        v19 = v124;
        while (v64 < (a1 + 63) >> 6)
        {
          v67 = *v65++;
          v66 = v67;
          v63 += 64;
          ++v64;
          if (v67)
          {
            sub_22F107D18(v4, v131, 0);
            a1 = (__clz(__rbit64(v66)) + v63);
            goto LABEL_16;
          }
        }

        sub_22F107D18(v4, v131, 0);
      }

LABEL_16:
      v40 = v130 + 1;
      v4 = a1;
      a2 = v122;
      if (v130 + 1 == v122)
      {
        a1 = v121;
        v68 = v134;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
  }

  v68 = MEMORY[0x277D84F90];
LABEL_33:
  v130 = a1[2];
  if (v130)
  {
    v4 = 0;
    v69 = 0;
    v70 = *(v68 + 16);
    v127 = a1 + 4;
    v128 = v70;
    v71 = (v68 + 40);
    v72 = MEMORY[0x277D84F98];
    v73 = MEMORY[0x277D84F98];
    v134 = v68;
    while (1)
    {
      if (v69 >= a1[2])
      {
        goto LABEL_78;
      }

      if (v128 == v69)
      {

LABEL_68:
        v19 = v124;
        goto LABEL_69;
      }

      if (v69 >= *(v68 + 16))
      {
        goto LABEL_79;
      }

      v75 = v127[v69];
      a2 = *v71;
      v132 = *(v71 - 1);

      sub_22F107E14(v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v73;
      v133 = v75;
      v77 = v75;
      a1 = v73;
      v4 = sub_22F13A8F4(v77);
      v79 = v73[2];
      v80 = (v78 & 1) == 0;
      v81 = v79 + v80;
      if (__OFADD__(v79, v80))
      {
        goto LABEL_80;
      }

      v82 = v78;
      if (v73[3] >= v81)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v78)
          {
            goto LABEL_49;
          }
        }

        else
        {
          a1 = aBlock;
          sub_22F135E50();
          v73 = aBlock[0];
          if (v82)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_22F128768(v81, isUniquelyReferenced_nonNull_native);
        v73 = aBlock[0];
        a1 = aBlock[0];
        v83 = sub_22F13A8F4(v133);
        if ((v82 & 1) != (v84 & 1))
        {
          goto LABEL_90;
        }

        v4 = v83;
        if (v82)
        {
          goto LABEL_49;
        }
      }

      v73[(v4 >> 6) + 8] |= 1 << v4;
      *(v73[6] + 8 * v4) = v133;
      *(v73[7] + 8 * v4) = MEMORY[0x277D84F90];
      v85 = v73[2];
      v86 = __OFADD__(v85, 1);
      v87 = v85 + 1;
      if (v86)
      {
        goto LABEL_82;
      }

      v73[2] = v87;
LABEL_49:
      v88 = v73[7];
      v89 = *(v88 + 8 * v4);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *(v88 + 8 * v4) = v89;
      v131 = v71;
      if ((v90 & 1) == 0)
      {
        v89 = sub_22F13E1A8(0, *(v89 + 2) + 1, 1, v89);
        *(v88 + 8 * v4) = v89;
      }

      v92 = *(v89 + 2);
      v91 = *(v89 + 3);
      if (v92 >= v91 >> 1)
      {
        v89 = sub_22F13E1A8((v91 > 1), v92 + 1, 1, v89);
        *(v88 + 8 * v4) = v89;
      }

      v23 = v129;
      *(v89 + 2) = v92 + 1;
      v93 = &v89[16 * v92];
      v94 = v132;
      *(v93 + 4) = v132;
      *(v93 + 5) = a2;

      v4 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v72;
      v95 = v94;
      a1 = v72;
      v96 = sub_22F1229E8(v95, a2);
      v98 = v72[2];
      v99 = (v97 & 1) == 0;
      v86 = __OFADD__(v98, v99);
      v100 = v98 + v99;
      if (v86)
      {
        goto LABEL_81;
      }

      v101 = v97;
      if (v72[3] < v100)
      {
        sub_22F125704(v100, v4);
        a1 = aBlock[0];
        v96 = sub_22F1229E8(v132, a2);
        v103 = v131;
        if ((v101 & 1) != (v102 & 1))
        {
          goto LABEL_89;
        }

LABEL_58:
        if ((v101 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_35;
      }

      v103 = v131;
      if (v4)
      {
        goto LABEL_58;
      }

      a1 = aBlock;
      v108 = v96;
      sub_22F1341B0();
      v96 = v108;
      v103 = v131;
      if ((v101 & 1) == 0)
      {
LABEL_59:
        v72 = aBlock[0];
        *(aBlock[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
        v104 = (v72[6] + 16 * v96);
        v105 = v133;
        *v104 = v132;
        v104[1] = a2;
        *(v72[7] + 8 * v96) = v105;
        v106 = v72[2];
        v86 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v86)
        {
          goto LABEL_83;
        }

        v72[2] = v107;
        goto LABEL_36;
      }

LABEL_35:
      v74 = v96;

      v72 = aBlock[0];
      *(*(aBlock[0] + 56) + 8 * v74) = v133;
LABEL_36:
      ++v69;
      v71 = (v103 + 16);
      v4 = sub_22F384654;
      a1 = v121;
      v68 = v134;
      if (v130 == v69)
      {

        v4 = sub_22F384654;
        goto LABEL_68;
      }
    }
  }

  v4 = 0;
  v72 = MEMORY[0x277D84F98];
  v73 = MEMORY[0x277D84F98];
LABEL_69:

  v109 = sub_22F3B2818(v73);

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
  v111 = *(v110 + 48);
  v112 = *(v110 + 52);
  v113 = swift_allocObject();
  sub_22F740830();

  v114 = v118;
  v115 = v119;
  if (v118 < 1 || v119 < 1)
  {
    goto LABEL_88;
  }

  *(v113 + 16) = v109;
  *(v113 + 24) = 1;
  *(v113 + 32) = v114;
  *(v113 + 40) = v115;
  type metadata accessor for CLIPIndex();
  v27 = swift_allocObject();
  *(v27 + 2) = v23;
  *(v27 + 3) = v72;
  *(v27 + 4) = v113;
  *(v27 + 5) = 768;
  sub_22F1B2BBC(0);

  sub_22F107E14(v4);
  return v27;
}

uint64_t static CLIPIndexUtilities.loadCLIPprints(for:)(void *a1)
{
  v8 = MEMORY[0x277D84F98];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22F3B6C08;
  *(v3 + 24) = v2;
  aBlock[4] = sub_22F2D4D54;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_15;
  v4 = _Block_copy(aBlock);

  [a1 enumerateUsingBlock_];
  _Block_release(v4);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_22F3B3A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t))
{
  v9 = v5;
  v11 = *(v5 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v9;
  swift_retain_n();
  v13 = a5(a1, 0, a4, v12);

  return v13;
}

void sub_22F3B3AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v9 = sub_22F73FE50();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v23 = *(a5 + 16);
  if (*(v23 + 16))
  {
    v24 = sub_22F1229E8(a1, a2);
    if (v25)
    {
      v26 = v10[9];
      v27 = *(v23 + 56) + v26 * v24;
      v34 = v10[2];
      v35 = a4;
      v34(v19, v27, v9);
      v28 = v19;
      v29 = v10[4];
      v29(v22, v28, v9);
      if (*(v23 + 16) && (v30 = sub_22F1229E8(v36, v35), (v31 & 1) != 0))
      {
        v34(v13, *(v23 + 56) + v30 * v26, v9);
        v29(v16, v13, v9);
        sub_22F73FFF0();
        v32 = v10[1];
        v32(v16, v9);
        v32(v22, v9);
      }

      else
      {
        (v10[1])(v22, v9);
      }
    }
  }
}

uint64_t sub_22F3B3D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = *(v3 + 16);
  if (*(v11 + 16) && (v12 = sub_22F1229E8(a1, a2), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = sub_22F73FE50();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v10, v15 + *(v17 + 72) * v14, v16);
    (*(v17 + 56))(v10, 0, 1, v16);
    return (*(v17 + 32))(a3, v10, v16);
  }

  else
  {
    v19 = sub_22F73FE50();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v10, 1, 1, v19);
    sub_22F73FE30();
    result = (*(v20 + 48))(v10, 1, v19);
    if (result != 1)
    {
      return sub_22F120ADC(v10, &qword_27DAB0B20, &unk_22F788B60);
    }
  }

  return result;
}

void sub_22F3B3F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), uint64_t a6)
{
  v35 = a6;
  v36 = a3;
  v37 = a4;
  v10 = sub_22F73FE50();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v32 - v22;
  v24 = *(v6 + 16);
  if (*(v24 + 16))
  {
    v25 = sub_22F1229E8(a1, a2);
    if (v26)
    {
      v27 = *(v24 + 56);
      v32 = v11[9];
      v33 = v11[2];
      v34 = a5;
      v33(v20, v27 + v32 * v25, v10);
      v28 = v11[4];
      v28(v23, v20, v10);
      if (*(v24 + 16) && (v29 = sub_22F1229E8(v36, v37), (v30 & 1) != 0))
      {
        v33(v14, *(v24 + 56) + v29 * v32, v10);
        v28(v17, v14, v10);
        v34(v23, v17);
        v31 = v11[1];
        v31(v17, v10);
        v31(v23, v10);
      }

      else
      {
        (v11[1])(v23, v10);
      }
    }
  }
}

uint64_t sub_22F3B4194()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 24);

  for (i = 0; v4; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v4)) | (v9 << 6);
    v11 = (*(v1 + 48) + 16 * v10);
    v12 = *(*(v1 + 56) + 8 * v10);
    v4 &= v4 - 1;
    v14 = *v11;
    v15 = v11[1];
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](8250, 0xE200000000000000);
    v13 = sub_22F742010();
    MEMORY[0x231900B10](v13);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](v14, v15);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return 0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *CLIPIndex.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t CLIPIndex.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_22F3B43DC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 16);

  *(a2 + 8) = sub_22F3B6B94;
  *(a2 + 16) = v5;
  return result;
}

uint64_t CLIPIndexUtilities.CentroidCodebookOptions.distanceBlock.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CLIPIndexUtilities.CentroidCodebookOptions.distanceBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CLIPIndexUtilities.CentroidCodebookOptions.init(maxNumberOfClusters:distanceBlock:minDistance:samplingStrategy:maxNumberOfMomentsToSample:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v7 = *a4;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a7;
  *(a6 + 28) = v7;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static CLIPIndexUtilities.trainCentroidCodebook(using:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v92 = a3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v91 = *(v83 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v83);
  v95 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v94 = &v78 - v8;
  v93 = sub_22F73FE50();
  v96 = *(v93 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v93);
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F740870();
  v87 = *(v11 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[1];
  v90 = *a2;
  v89 = v15;
  v16 = *(a2 + 6);
  v17 = *(a2 + 28);
  v18 = a2[4];
  v19 = qword_27DAAFDA8;
  v88 = a2[2];

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_27DAD0E90;
  *&v21 = CACurrentMediaTime();
  sub_22F1B560C("TrainCLIPCentroidCodebook", 25, 2u, v21, 0, v20, v102);
  v22 = type metadata accessor for MomentSampler();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  sub_22F740830();
  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() filterEncodedCLIPFeatureVectorNotEmpty];
  v28 = [ObjCClassFromMetadata nodesMatchingFilter:v27 inGraph:a1];

  v86 = v28;
  if (v17)
  {
    if (v17 == 1)
    {
      v29 = sub_22F35A52C(v18, v28);
    }

    else
    {
      v30 = v18 / 2;
      v31 = sub_22F35A52C(v30, v28);
      v32 = [v28 collectionBySubtracting_];
      swift_beginAccess();
      v33 = sub_22F35AA00(v30, v32);
      swift_endAccess();
      v34 = [v31 collectionByFormingUnionWith_];

      v29 = v34;
    }
  }

  else
  {
    swift_beginAccess();
    v29 = sub_22F35AA00(v18, v28);
    swift_endAccess();
  }

  v35 = v93;
  v101 = MEMORY[0x277D84F98];
  v36 = swift_allocObject();
  v36[2] = &v101;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_22F3B6C08;
  *(v37 + 24) = v36;
  v99 = sub_22F2D4D54;
  v100 = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  v98 = &block_descriptor_35_1;
  v38 = _Block_copy(aBlock);

  [v29 enumerateUsingBlock_];
  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
    goto LABEL_26;
  }

  v39 = v101;

  v36 = *(v39 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v36)
  {
    v41 = sub_22F10B8C8(*(v39 + 16), 0);
    v84 = sub_22F11D370(aBlock, v41 + ((*(v91 + 80) + 32) & ~*(v91 + 80)), v36, v39);
    v81 = v98;
    v80 = v99;

    sub_22F0FF590();
    if (v84 == v36)
    {
      v35 = v93;
      v40 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_13:
  aBlock[0] = v41;
  v42 = v85;
  sub_22F3B2A6C(aBlock);
  v36 = v42;
  if (v42)
  {
LABEL_27:

    __break(1u);
    return result;
  }

  v84 = v29;
  v85 = v11;

  v43 = aBlock[0];
  v44 = aBlock[0][2];
  v45 = v92;
  if (v44)
  {
    v79 = 0;
    v80 = v14;
    v81 = v25;
    aBlock[0] = v40;
    sub_22F146E00(0, v44, 0);
    v46 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v78 = v43;
    v47 = v43 + v46;
    v93 = *(v91 + 72);
    v48 = aBlock[0];
    v49 = (v96 + 32);
    v50 = v83;
    v51 = v82;
    do
    {
      v52 = v94;
      sub_22F3B69FC(v47, v94);
      v53 = v52;
      v54 = v95;
      sub_22F3B6970(v53, v95);
      v55 = *(v54 + 8);

      v56 = *v49;
      (*v49)(v51, v54 + *(v50 + 48), v35);
      aBlock[0] = v48;
      v58 = v48[2];
      v57 = v48[3];
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        sub_22F146E00(v57 > 1, v58 + 1, 1);
        v59 = v58 + 1;
        v50 = v83;
        v48 = aBlock[0];
      }

      v48[2] = v59;
      v56(v48 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v58, v51, v35);
      v47 += v93;
      --v44;
    }

    while (v44);

    v45 = v92;
    v25 = v81;
    v14 = v80;
    v36 = v79;
  }

  else
  {
  }

  v60 = sub_22F740880();
  sub_22F740850();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  sub_22F740860();
  (*(v87 + 104))(v14, *MEMORY[0x277D3C710], v85);
  v63 = sub_22F740260();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_22F740240();
  sub_22F740250();
  if (v36)
  {

    swift_setDeallocating();
    v67 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
    v68 = sub_22F740840();
    (*(*(v68 - 8) + 8))(v25 + v67, v68);
    v69 = *(*v25 + 48);
    v70 = *(*v25 + 52);
    swift_deallocClassInstance();
    v71 = 1;
  }

  else
  {

    v72 = MEMORY[0x277D3C6F8];
    v45[3] = v63;
    v45[4] = v72;

    *v45 = v66;
    swift_setDeallocating();
    v73 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
    v74 = sub_22F740840();
    (*(*(v74 - 8) + 8))(v25 + v73, v74);
    v75 = *(*v25 + 48);
    v76 = *(*v25 + 52);
    swift_deallocClassInstance();
    v71 = 0;
  }

  sub_22F1B2BBC(v71);
}

void sub_22F3B4FA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  v3 = *(*(v2 - 8) + 64);
  *&v4 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v6 = &v25 - v5;
  v27 = [a1 clipFeatureVector];
  if (v27)
  {
    v7 = [a1 localIdentifier];
    if (!v7)
    {
      sub_22F740E20();
      v7 = sub_22F740DF0();
    }

    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    v8 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

    if (v8)
    {
      v9 = sub_22F740E20();
      v11 = v10;

      v12 = [v27 array];
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      v13 = sub_22F741180();

      if (v13 >> 62)
      {
        v14 = sub_22F741A00();
        if (v14)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_7:
          v25 = v11;
          v26 = v9;
          v28 = MEMORY[0x277D84F90];
          sub_22F1464F4(0, v14 & ~(v14 >> 63), 0);
          if (v14 < 0)
          {
            __break(1u);
            return;
          }

          v15 = 0;
          v16 = v28;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x2319016F0](v15, v13);
            }

            else
            {
              v17 = *(v13 + 8 * v15 + 32);
            }

            v18 = v17;
            [v17 floatValue];
            v20 = v19;

            v28 = v16;
            v22 = *(v16 + 16);
            v21 = *(v16 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_22F1464F4((v21 > 1), v22 + 1, 1);
              v16 = v28;
            }

            ++v15;
            *(v16 + 16) = v22 + 1;
            *(v16 + 4 * v22 + 32) = v20;
          }

          while (v14 != v15);

          v11 = v25;
          v9 = v26;
          goto LABEL_21;
        }
      }

LABEL_21:
      sub_22F73FE60();
      v24 = sub_22F73FE50();
      (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
      sub_22F121B14(v6, v9, v11);

      return;
    }

    v23 = v27;
  }
}

void sub_22F3B52FC(int64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F3B56B0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F3B5440(0, v2, 1, a1);
  }
}

void sub_22F3B5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - v11);
  MEMORY[0x28223BE20](v13);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    while (1)
    {
      sub_22F3B69FC(v22, v16);
      sub_22F3B69FC(v19, v12);
      if (*v16 == *v12 && v16[1] == v12[1])
      {
        sub_22F120ADC(v12, &qword_27DAB1060, &unk_22F771490);
        sub_22F120ADC(v16, &qword_27DAB1060, &unk_22F771490);
LABEL_5:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_22F742040();
      sub_22F120ADC(v12, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v16, &qword_27DAB1060, &unk_22F771490);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_22F3B6970(v22, v35);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F3B6970(v25, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F3B56B0(int64_t *a1, uint64_t a2, int64_t *a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v9 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v129 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v137 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v119 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v119 - v17);
  MEMORY[0x28223BE20](v19);
  v136 = (&v119 - v20);
  MEMORY[0x28223BE20](v21);
  v135 = (&v119 - v22);
  MEMORY[0x28223BE20](v23);
  v123 = (&v119 - v24);
  MEMORY[0x28223BE20](v25);
  v122 = (&v119 - v26);
  v27 = a3[1];
  v132 = v28;
  if (v27 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_110:
    v32 = *v124;
    if (!*v124)
    {
      goto LABEL_149;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v132;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_143:
      v30 = sub_22F3F5F98(v30);
    }

    v140 = v30;
    v114 = *(v30 + 16);
    if (v114 >= 2)
    {
      v115 = a3;
      while (*v115)
      {
        a3 = v30;
        v30 = v114 - 1;
        v116 = a3[2 * v114];
        v117 = a3[2 * v114 + 3];
        sub_22F3B6084(*v115 + v5[9] * v116, *v115 + v5[9] * a3[2 * v114 + 2], *v115 + v5[9] * v117, v32);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v117 < v116)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v114 - 2 >= a3[2])
        {
          goto LABEL_137;
        }

        v118 = &a3[2 * v114];
        *v118 = v116;
        v118[1] = v117;
        v140 = a3;
        sub_22F3F5F0C(v30);
        v30 = v140;
        v114 = *(v140 + 16);
        if (v114 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_147;
    }

LABEL_121:

    return;
  }

  v119 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v126 = a3;
  v139 = v15;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 >= v27)
    {
      goto LABEL_36;
    }

    v130 = v27;
    v32 = *a3;
    v33 = *(v132 + 72);
    v34 = (v29 + 1);
    v35 = v122;
    sub_22F3B69FC(v32 + v33 * (v29 + 1), v122);
    v125 = v31;
    v133 = v33;
    v36 = v32 + v33 * v31;
    v37 = v123;
    sub_22F3B69FC(v36, v123);
    v38 = *v35 == *v37 && v35[1] == v37[1];
    v120 = v30;
    v121 = v6;
    if (v38)
    {
      LODWORD(v131) = 0;
    }

    else
    {
      LODWORD(v131) = sub_22F742040();
    }

    sub_22F120ADC(v123, &qword_27DAB1060, &unk_22F771490);
    sub_22F120ADC(v122, &qword_27DAB1060, &unk_22F771490);
    v39 = v125 + 2;
    v40 = v133 * (v125 + 2);
    v41 = v32 + v40;
    v42 = v133 * v34;
    v6 = v32 + v133 * v34;
    v43 = v34;
    do
    {
      v30 = v39;
      v5 = v43;
      a3 = v42;
      v44 = v40;
      if (v39 >= v130)
      {
        break;
      }

      v134 = v39;
      v45 = v135;
      sub_22F3B69FC(v41, v135);
      v46 = v136;
      sub_22F3B69FC(v6, v136);
      v47 = *v45 == *v46 && v45[1] == v46[1];
      v32 = v47 ? 0 : sub_22F742040();
      sub_22F120ADC(v136, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v135, &qword_27DAB1060, &unk_22F771490);
      v30 = v134;
      v39 = v134 + 1;
      v41 += v133;
      v6 += v133;
      v43 = (v5 + 1);
      v42 = a3 + v133;
      v40 = v44 + v133;
      v15 = v139;
    }

    while (((v131 ^ v32) & 1) == 0);
    if ((v131 & 1) == 0)
    {
      goto LABEL_34;
    }

    if (v30 < v125)
    {
      goto LABEL_140;
    }

    if (v125 < v30)
    {
      v48 = v125 * v133;
      v49 = v125;
      do
      {
        if (v49 != v5)
        {
          v51 = *v126;
          if (!*v126)
          {
            goto LABEL_146;
          }

          v134 = v51 + v48;
          sub_22F3B6970(v51 + v48, v129);
          if (v48 < a3 || v134 >= v51 + v44)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v48 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22F3B6970(v129, a3 + v51);
        }

        v49 = (v49 + 1);
        a3 = (a3 - v133);
        v44 -= v133;
        v48 += v133;
        v50 = v49 < v5;
        v5 = (v5 - 1);
      }

      while (v50);
LABEL_34:
      v32 = v30;
      v30 = v120;
      v6 = v121;
      v31 = v125;
      a3 = v126;
      goto LABEL_36;
    }

    v32 = v30;
    v30 = v120;
    v6 = v121;
    a3 = v126;
    v31 = v125;
LABEL_36:
    v52 = a3[1];
    if (v32 < v52)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_139;
      }

      if (v32 - v31 < v119)
      {
        v53 = v31 + v119;
        if (__OFADD__(v31, v119))
        {
          goto LABEL_141;
        }

        if (v53 >= v52)
        {
          v53 = a3[1];
        }

        if (v53 < v31)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v32 != v53)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v32 < v31)
    {
      goto LABEL_138;
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v32;
    if ((v65 & 1) == 0)
    {
      v30 = sub_22F13D970(0, *(v30 + 16) + 1, 1, v30);
    }

    v67 = *(v30 + 16);
    v66 = *(v30 + 24);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      v30 = sub_22F13D970((v66 > 1), v67 + 1, 1, v30);
    }

    *(v30 + 16) = v68;
    v69 = v30 + 16 * v67;
    v70 = v134;
    *(v69 + 32) = v31;
    *(v69 + 40) = v70;
    v133 = *v124;
    if (!v133)
    {
      goto LABEL_148;
    }

    if (v67)
    {
      while (1)
      {
        v32 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v71 = *(v30 + 32);
          v72 = *(v30 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_79:
          if (v74)
          {
            goto LABEL_127;
          }

          v87 = (v30 + 16 * v68);
          v89 = *v87;
          v88 = v87[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_130;
          }

          v93 = (v30 + 32 + 16 * v32);
          v95 = *v93;
          v94 = v93[1];
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_134;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v32 = v68 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v97 = (v30 + 16 * v68);
        v99 = *v97;
        v98 = v97[1];
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_93:
        if (v92)
        {
          goto LABEL_129;
        }

        v100 = v30 + 16 * v32;
        v102 = *(v100 + 32);
        v101 = *(v100 + 40);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_132;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_100:
        v108 = v32 - 1;
        if (v32 - 1 >= v68)
        {
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
          goto LABEL_142;
        }

        v109 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v5 = a3;
        a3 = v30;
        v110 = v30 + 32;
        v30 = *(v30 + 32 + 16 * v108);
        v111 = *(v110 + 16 * v32 + 8);
        sub_22F3B6084(v109 + *(v132 + 72) * v30, v109 + *(v132 + 72) * *(v110 + 16 * v32), v109 + *(v132 + 72) * v111, v133);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v111 < v30)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v108 >= a3[2])
        {
          goto LABEL_124;
        }

        v112 = &a3[2 * v108];
        v112[4] = v30;
        v112[5] = v111;
        v140 = a3;
        sub_22F3F5F0C(v32);
        v30 = v140;
        v68 = *(v140 + 16);
        a3 = v5;
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = v30 + 32 + 16 * v68;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_125;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_126;
      }

      v82 = (v30 + 16 * v68);
      v84 = *v82;
      v83 = v82[1];
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_128;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_131;
      }

      if (v86 >= v78)
      {
        v104 = (v30 + 32 + 16 * v32);
        v106 = *v104;
        v105 = v104[1];
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          v32 = v68 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v27 = a3[1];
    v29 = v134;
    if (v134 >= v27)
    {
      goto LABEL_110;
    }
  }

  v120 = v30;
  v121 = v6;
  v54 = *a3;
  v55 = *(v132 + 72);
  v56 = *a3 + v55 * (v32 - 1);
  v57 = v31;
  v58 = -v55;
  v125 = v57;
  v5 = (v57 - v32);
  v127 = v55;
  v128 = v53;
  v59 = v54 + v32 * v55;
  while (2)
  {
    v133 = v56;
    v134 = v32;
    v130 = v59;
    v131 = v5;
    v60 = v59;
LABEL_48:
    sub_22F3B69FC(v60, v18);
    sub_22F3B69FC(v56, v15);
    if (*v18 == *v15 && v18[1] == v15[1])
    {
      sub_22F120ADC(v15, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v18, &qword_27DAB1060, &unk_22F771490);
LABEL_46:
      v32 = v134 + 1;
      v56 = v133 + v127;
      v5 = (v131 - 1);
      v59 = v130 + v127;
      if (v134 + 1 != v128)
      {
        continue;
      }

      v32 = v128;
      v30 = v120;
      v6 = v121;
      v31 = v125;
      a3 = v126;
      goto LABEL_59;
    }

    break;
  }

  v62 = sub_22F742040();
  sub_22F120ADC(v15, &qword_27DAB1060, &unk_22F771490);
  sub_22F120ADC(v18, &qword_27DAB1060, &unk_22F771490);
  if ((v62 & 1) == 0)
  {
    v15 = v139;
    goto LABEL_46;
  }

  if (v54)
  {
    v63 = v137;
    sub_22F3B6970(v60, v137);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F3B6970(v63, v56);
    v56 += v58;
    v60 += v58;
    v64 = __CFADD__(v5, 1);
    v5 = (v5 + 1);
    v15 = v139;
    if (v64)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

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
}

void sub_22F3B6084(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = (&v44 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v44 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v44 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v19 = v52 - a2;
  if (v52 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v20 = (a2 - a1) / v18;
  v55 = a1;
  v54 = a4;
  if (v20 >= v19 / v18)
  {
    v23 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v23;
    if (v23 >= 1)
    {
      v32 = -v18;
      v33 = v31;
      do
      {
        v45 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v51 = v35;
        v47 = v34;
        while (1)
        {
          v37 = v52;
          if (v34 <= a1)
          {
            v55 = v34;
            v31 = v45;
            goto LABEL_69;
          }

          v46 = v31;
          v38 = v32;
          v39 = v33 + v32;
          v40 = v48;
          sub_22F3B69FC(v39, v48);
          v41 = v50;
          sub_22F3B69FC(v35, v50);
          v42 = *v40 == *v41 && v40[1] == v41[1];
          v43 = v42 ? 0 : sub_22F742040();
          v52 = v37 + v38;
          sub_22F120ADC(v50, &qword_27DAB1060, &unk_22F771490);
          sub_22F120ADC(v48, &qword_27DAB1060, &unk_22F771490);
          if (v43)
          {
            break;
          }

          v31 = v39;
          if (v37 < v33 || v52 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v39;
            v35 = v51;
          }

          else
          {
            v35 = v51;
            if (v37 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v31 = v39;
            }
          }

          v33 = v31;
          v36 = v39 > a4;
          v32 = v38;
          v34 = v47;
          if (!v36)
          {
            v55 = v47;
            goto LABEL_69;
          }
        }

        if (v37 < v47 || v52 >= v47)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v38;
        }

        else
        {
          a2 = v51;
          v32 = v38;
          if (v37 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v46;
      }

      while (v33 > a4);
    }

    v55 = a2;
LABEL_69:
    v53 = v31;
  }

  else
  {
    v21 = a2;
    v22 = v20 * v18;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v53 = a4 + v22;
    if (v22 >= 1 && v21 < v52)
    {
      v26 = v21;
      while (1)
      {
        v50 = a1;
        v51 = v26;
        sub_22F3B69FC(v26, v16);
        sub_22F3B69FC(a4, v13);
        if (*v16 == *v13 && v16[1] == v13[1])
        {
          break;
        }

        v28 = sub_22F742040();
        sub_22F120ADC(v13, &qword_27DAB1060, &unk_22F771490);
        sub_22F120ADC(v16, &qword_27DAB1060, &unk_22F771490);
        if ((v28 & 1) == 0)
        {
          goto LABEL_31;
        }

        v29 = v50;
        v30 = v51 + v18;
        if (v50 < v51 || v50 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v50 != v51)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v30;
LABEL_39:
        a1 = v29 + v18;
        v55 = a1;
        if (a4 >= v24 || v26 >= v52)
        {
          goto LABEL_70;
        }
      }

      sub_22F120ADC(v13, &qword_27DAB1060, &unk_22F771490);
      sub_22F120ADC(v16, &qword_27DAB1060, &unk_22F771490);
LABEL_31:
      v29 = v50;
      if (v50 < a4 || v50 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v50 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v54 = a4 + v18;
      a4 += v18;
      v26 = v51;
      goto LABEL_39;
    }
  }

LABEL_70:
  sub_22F3B6844(&v55, &v54, &v53, &qword_27DAB1060, &unk_22F771490);
}

uint64_t sub_22F3B6720(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_22F3B6844(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3B6970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3B69FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

float sub_22F3B6B94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return *&v4;
}

void sub_22F3B6BCC(float *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3();
}

id AtFrequentLocationFeatureExtractor.__allocating_init()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_allocWithZone(v0) initWithError_];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id AtFrequentLocationFeatureExtractor.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  *(v4 + 32) = sub_22F740E20();
  *(v4 + 40) = v5;
  v6 = @"AtFrequentLocation";
  v7 = sub_22F741160();

  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v8 = [swift_getObjCClassFromMetadata() filter];
  v9 = [v8 relation];

  aBlock[4] = sub_22F3B70BC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2D83D0;
  aBlock[3] = &block_descriptor_52;
  v10 = _Block_copy(aBlock);

  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithName_featureNames_relation_labelForTargetBlock_, v6, v7, v9, v10);
  _Block_release(v10);

  return v11;
}

uint64_t sub_22F3B6EBC(void *a1, void *a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = *(a3 + 16);
    v9 = a1;
    if (!v8 && [v7 graph])
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        sub_22F120634(0, &unk_2810A8F20, off_27887AD98);
        v17 = [swift_getObjCClassFromMetadata() nodesInGraph_];
        v18 = [v17 momentNodes];
        swift_unknownObjectRelease();

        swift_beginAccess();
        v19 = *(a3 + 16);
        *(a3 + 16) = v18;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v10 = *(a3 + 16);
    if (v10)
    {
      v11 = v10;
      if ([v11 containsNode_])
      {
        v12 = sub_22F740E20();

        return v12;
      }
    }
  }

  else if (a2)
  {
    sub_22F3B7304();
    v14 = swift_allocError();
    *a2 = sub_22F73F360();
  }

  return 0;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AtFrequentLocationFeatureExtractor.__allocating_init(name:featureNames:relation:labelForTargetBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v11 = sub_22F740DF0();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(v7);
  v13 = sub_22F741160();

  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F2D83D0;
  v17[3] = &block_descriptor_3_1;
  v14 = _Block_copy(v17);
  v15 = [v12 initWithName:v11 featureNames:v13 relation:a4 labelForTargetBlock:v14];

  _Block_release(v14);

  return v15;
}

id AtFrequentLocationFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F3B7304()
{
  result = qword_27DAB3EE8;
  if (!qword_27DAB3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EE8);
  }

  return result;
}

unint64_t sub_22F3B736C()
{
  result = qword_27DAB3EF0;
  if (!qword_27DAB3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EF0);
  }

  return result;
}

uint64_t sub_22F3B73C8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22F3B73E8, v1, 0);
}

uint64_t sub_22F3B73E8()
{
  v60 = v0;
  v1 = swift_allocObject();
  v0[5] = v1;
  *(v1 + 16) = MEMORY[0x277D84F98];
  v59 = MEMORY[0x277D84F90];
  sub_22F741BD0();
  v2 = 0x20u;
  do
  {
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    sub_22F741BA0();
    v3 = v59[2];
    sub_22F741BE0();
    sub_22F741BF0();
    v4 = sub_22F741BB0();
    v2 += 4;
  }

  while (v2 != 112);
  v5 = v0[3];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 40);
    while (1)
    {
      v11 = *(v7 - 1);
      v10 = *v7;
      v12 = GEOLocationCoordinate2DMake(v4);
      v14 = v13;
      v15 = objc_allocWithZone(MEMORY[0x277D0ED60]);
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      v16 = sub_22F741160();
      v17 = [v15 initWithCoordinate:v16 radius:v12 categories:{v14, 100.0}];

      if (v17)
      {
        break;
      }

      v19 = *(v1 + 16);
      v4 = sub_22F1237E8(v11, v10);
      if ((v35 & 1) == 0)
      {
        goto LABEL_7;
      }

      v36 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v19;
      *(v1 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22F138DF8();
        v19 = v59;
      }

      sub_22F3BA6C4(v36, v19);
LABEL_6:
      *(v1 + 16) = v19;

LABEL_7:
      v7 += 2;
      if (!--v6)
      {

        v42 = *(v1 + 16);
        goto LABEL_25;
      }
    }

    v18 = v17;
    v19 = *(v1 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v19;
    *(v1 + 16) = 0x8000000000000000;
    v21 = sub_22F1237E8(v11, v10);
    v29 = v19[2];
    v30 = (v22 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v33 = v22;
    if (v19[3] >= v32)
    {
      if ((v20 & 1) == 0)
      {
        v41 = v21;
        sub_22F138DF8();
        v21 = v41;
        v19 = v59;
        if ((v33 & 1) == 0)
        {
LABEL_19:
          v19[(v21 >> 6) + 8] |= 1 << v21;
          v38 = (v19[6] + 16 * v21);
          *v38 = v11;
          v38[1] = v10;
          *(v19[7] + 8 * v21) = v18;

          v39 = v19[2];
          v31 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v31)
          {
            goto LABEL_39;
          }

          v19[2] = v40;
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else
    {
      sub_22F12DD90(v32, v20);
      v19 = v59;
      v21 = sub_22F1237E8(v11, v10);
      if ((v33 & 1) != (v34 & 1))
      {
        type metadata accessor for CLLocationCoordinate2D(0);

        return sub_22F7420C0();
      }
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    v8 = v19[7];
    v9 = *(v8 + 8 * v21);
    *(v8 + 8 * v21) = v18;

    goto LABEL_6;
  }

  v42 = MEMORY[0x277D84F98];
LABEL_25:
  v43 = v0[4];
  v44 = *(v43 + 112);
  v45 = *(v42 + 16);
  if (v45)
  {
    v58 = *(v43 + 112);
    v46 = sub_22F120B48(v45, 0);
    v47 = sub_22F120B44(&v59, v46 + 4, v45, v42);

    v21 = sub_22F0FF590();
    if (v47 != v45)
    {
LABEL_40:
      __break(1u);
      return MEMORY[0x2822008A0](v21, v22, v23, v24, v25, v26, v27, v28);
    }

    v44 = v58;
  }

  sub_22F120634(0, &qword_27DAB3F40, 0x277D0ED60);
  v48 = sub_22F741160();

  v49 = [v44 ticketForSpatialLookupParameters:v48 traits:0];
  v0[6] = v49;

  if (v49)
  {
    v50 = v0[4];
    v51 = sub_22F3BAC54();
    v52 = swift_task_alloc();
    v0[7] = v52;
    *(v52 + 16) = v49;
    *(v52 + 24) = v1;
    v53 = *(MEMORY[0x277D85A40] + 4);
    v54 = swift_task_alloc();
    v0[8] = v54;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F48, &qword_22F789EF0);
    *v54 = v0;
    v54[1] = sub_22F3B79D0;
    v26 = sub_22F3BB330;
    v21 = (v0 + 2);
    v25 = 0x800000022F79DAF0;
    v22 = v50;
    v23 = v51;
    v24 = 0xD000000000000018;
    v27 = v52;

    return MEMORY[0x2822008A0](v21, v22, v23, v24, v25, v26, v27, v28);
  }

  sub_22F3BAC00();
  swift_allocError();
  *v55 = 1;
  swift_willThrow();

  v56 = v0[1];

  return v56();
}

uint64_t sub_22F3B79D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_22F3B7B68;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 32);

    v5 = sub_22F3B7AF8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F3B7AF8()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22F3B7B68()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_unknownObjectRelease();

  v4 = v0[9];
  v5 = v0[1];

  return v5();
}

void sub_22F3B7BE0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = aBlock - v10;
  (*(v7 + 16))(aBlock - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v11, v6);
  *(v14 + v13) = a3;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_22F3BB3F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3B8218;
  aBlock[3] = &block_descriptor_18_0;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [a2 submitWithHandler:v15 networkActivity:0];
  _Block_release(v15);
}

void sub_22F3B7DD0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8);
    sub_22F7412E0();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
    swift_beginAccess();
    v7 = *(a3 + 16);
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_11:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(v7 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v7 + 56) + 8 * v15);
      sub_22F3B7F68(v19, a4, &v20, v17, v18);
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8);
        sub_22F7412F0();
        return;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_22F3B7F68(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [a2 mapItemsForParameters_];
  if (v11)
  {
    v12 = v11;
    v37 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F18, &qword_22F789EE8);
    v13 = sub_22F741180();

    if (v13 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v15 = 0;
      while ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x2319016F0](v15, v13);
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_23;
        }

LABEL_13:
        v20 = [v18 _muid];
        v21 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *a3;
        v38 = *a3;
        *a3 = 0x8000000000000000;
        v24 = sub_22F13A8F4(v20);
        v26 = v23[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_24;
        }

        v30 = v25;
        if (v23[3] < v29)
        {
          sub_22F12E05C(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_22F13A8F4(v20);
          if ((v30 & 1) != (v31 & 1))
          {
            sub_22F7420C0();
            __break(1u);
            return;
          }

LABEL_18:
          v32 = v38;
          if (v30)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        v36 = v24;
        sub_22F138F6C();
        v24 = v36;
        v32 = v38;
        if (v30)
        {
LABEL_5:
          v16 = (v32[7] + 16 * v24);
          *v16 = a4;
          v16[1] = a5;
          swift_unknownObjectRelease();
          goto LABEL_6;
        }

LABEL_19:
        v32[(v24 >> 6) + 8] |= 1 << v24;
        *(v32[6] + 8 * v24) = v20;
        v33 = (v32[7] + 16 * v24);
        *v33 = a4;
        v33[1] = a5;
        swift_unknownObjectRelease();
        v34 = v32[2];
        v28 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v28)
        {
          goto LABEL_25;
        }

        v32[2] = v35;
LABEL_6:
        v17 = *a3;
        *a3 = v32;

        ++v15;
        if (v19 == i)
        {
          goto LABEL_28;
        }
      }

      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v18 = *(v13 + 8 * v15 + 32);
      swift_unknownObjectRetain();
      v19 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_13;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v10 = v37;
  }

  objc_autoreleasePoolPop(v10);
}

void sub_22F3B8218(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_22F3B8284(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22F3B82A4, v1, 0);
}

id sub_22F3B82A4()
{
  result = [objc_opt_self() sharedService];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = v0[3];
  v4 = [result maxParametersCountForSpatialPlaceLookup];
  v0[5] = v4;

  v5 = *(v3 + 16);
  v0[6] = v5;
  if (!v4)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 1 && v5 != 0)
  {
    v4 = v0[3];
    v9 = MEMORY[0x277D84F98];
    v0[7] = MEMORY[0x277D84F98];
    v0[8] = v9;
    v10 = v0[5];
    v0[9] = v10;
    v11 = v5 > v10;
    if (v5 >= v10)
    {
      v5 = v10;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {

LABEL_16:
        v0[10] = v4;
        v12 = swift_task_alloc();
        v0[11] = v12;
        *v12 = v0;
        v12[1] = sub_22F3B843C;
        v13 = v0[4];

        return sub_22F3B8958(v4);
      }

LABEL_21:
      sub_22F10AF5C(v4, v4 + 32, 0, (2 * v5) | 1);
      v4 = v14;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v0[1];
  v8 = MEMORY[0x277D84F98];

  return v7(v8);
}

uint64_t sub_22F3B843C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v10 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_22F3B88E8;
  }

  else
  {
    v7 = v3[10];
    v8 = v3[4];

    v6 = sub_22F3B8564;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F3B8564()
{
  v1 = v0[12];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[12];

  v10 = 0;
  while (v4)
  {
    v13 = v10;
LABEL_11:
    v14 = __clz(__rbit64(v4)) | (v13 << 6);
    v15 = (*(v1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v1 + 56) + 8 * v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[2] = v6;
    v20 = sub_22F1237E8(v16, v17);
    v22 = v6[2];
    v23 = (v21 & 1) == 0;
    v33 = __OFADD__(v22, v23);
    v10 = v22 + v23;
    if (v33)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v24 = v21;
    if (v6[3] >= v10)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v20;
        sub_22F1390BC();
        v20 = v29;
      }
    }

    else
    {
      sub_22F12E2C0(v10, isUniquelyReferenced_nonNull_native);
      v25 = v0[2];
      v20 = sub_22F1237E8(v16, v17);
      if ((v24 & 1) != (v26 & 1))
      {
        type metadata accessor for CLLocationCoordinate2D(0);

        return sub_22F7420C0();
      }
    }

    v4 &= v4 - 1;
    v6 = v0[2];
    if (v24)
    {
      v11 = v6[7];
      v12 = *(v11 + 8 * v20);
      *(v11 + 8 * v20) = v18;
    }

    else
    {
      v6[(v20 >> 6) + 8] |= 1 << v20;
      v27 = (v6[6] + 16 * v20);
      *v27 = v16;
      v27[1] = v17;
      *(v6[7] + 8 * v20) = v18;
      v28 = v6[2];
      v33 = __OFADD__(v28, 1);
      v10 = v28 + 1;
      if (v33)
      {
        goto LABEL_41;
      }

      v6[2] = v10;
    }

    v10 = v13;
    v7 = v6;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v13 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v13);
    ++v10;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v1 = v0[12];
  v30 = v0[9];
  v31 = v0[6];

  if (v30 >= v31)
  {
    v40 = v0[1];

    return v40(v7);
  }

  v9 = v0[9];
  v0[7] = v7;
  v0[8] = v6;
  v32 = v0[5];
  v33 = __OFADD__(v9, v32);
  v10 = v9 + v32;
  v34 = (v10 >> 63) ^ 0x8000000000000000;
  if (!v33)
  {
    v34 = v10;
  }

  v0[9] = v34;
  if (v33)
  {
    goto LABEL_42;
  }

  v35 = v0[6];
  if (v35 < v10)
  {
    v10 = v0[6];
  }

  if (v10 < v9)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v9 < 0)
  {
    goto LABEL_44;
  }

  v1 = v0[3];
  if (v35 == v10 - v9)
  {
    v36 = v0[3];

    goto LABEL_30;
  }

LABEL_45:
  sub_22F10AF5C(v1, v1 + 32, v9, (2 * v10) | 1);
  v1 = v41;
LABEL_30:
  v0[10] = v1;
  v37 = swift_task_alloc();
  v0[11] = v37;
  *v37 = v0;
  v37[1] = sub_22F3B843C;
  v38 = v0[4];

  return sub_22F3B8958(v1);
}

uint64_t sub_22F3B88E8()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_22F3B8958(uint64_t a1)
{
  *(v2 + 24) = v1;
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22F3B89F0;

  return sub_22F3B73C8(a1);
}

uint64_t sub_22F3B89F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_22F3B8B38, v8, 0);
  }
}

uint64_t sub_22F3B8B38()
{
  v30 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = *(v0[3] + 112);
    v3 = sub_22F10B714(v2, 0);
    v4 = sub_22F11CFCC(&v29, v3 + 4, v2, v1);

    v5 = sub_22F0FF590();
    if (v4 != v2)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v5, v6, v7, v8, v9, v10, v11, v12);
    }

    sub_22F161FB4(v3);

    v13 = sub_22F741160();

    v14 = [v28 ticketForMUIDs:v13 traits:0];
    v0[6] = v14;

    if (v14)
    {
      v15 = v0[5];
      v16 = v0[3];
      v17 = sub_22F3BAC54();
      v18 = swift_task_alloc();
      v0[7] = v18;
      v18[2] = v14;
      v18[3] = v15;
      v18[4] = v16;
      v19 = *(MEMORY[0x277D85A40] + 4);
      v20 = swift_task_alloc();
      v0[8] = v20;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F08, &qword_22F789ED0);
      *v20 = v0;
      v20[1] = sub_22F3B8E14;
      v10 = sub_22F3BACA8;
      v5 = (v0 + 2);
      v9 = 0x800000022F79DAD0;
      v6 = v16;
      v7 = v17;
      v8 = 0xD000000000000018;
      v11 = v18;

      return MEMORY[0x2822008A0](v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v25 = v0[5];

    sub_22F3BAC00();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    v27 = v0[1];

    return v27();
  }

  else
  {
    v21 = v0[5];

    v22 = sub_22F150350(MEMORY[0x277D84F90]);
    v23 = v0[1];

    return v23(v22);
  }
}

uint64_t sub_22F3B8E14()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_22F3B8FB0;
  }

  else
  {
    v6 = v2[7];
    v7 = v2[5];
    v8 = v2[3];

    v5 = sub_22F3B8F48;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F3B8F48()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22F3B8FB0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_unknownObjectRelease();

  v4 = v0[9];
  v5 = v0[1];

  return v5();
}

void sub_22F3B9028(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  *(v16 + v15) = a3;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_22F3BACB4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3B95AC;
  aBlock[3] = &block_descriptor_53;
  v17 = _Block_copy(aBlock);

  [a2 submitWithHandler:v17 networkActivity:0];
  _Block_release(v17);
}

uint64_t sub_22F3B921C(unint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v4 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8);
    return sub_22F7412E0();
  }

  v6 = a1;
  if (!a1)
  {
    sub_22F3BAC00();
    swift_allocError();
    *v40 = 0;
    goto LABEL_3;
  }

  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_37:
    v9 = sub_22F741A00();
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8);
    return sub_22F7412F0();
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_38;
  }

LABEL_7:
  v10 = 0;
  v11 = v6 & 0xC000000000000001;
  v12 = MEMORY[0x277D84F98];
  v41 = a4;
  v42 = v9;
  v43 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v11)
    {
      v13 = MEMORY[0x2319016F0](v10, v6);
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_34;
      }

      v13 = *(v6 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [v13 _muid];
    if (*(a4 + 16))
    {
      v17 = sub_22F13A8F4(v16);
      if (v18)
      {
        break;
      }
    }

LABEL_8:
    objc_autoreleasePoolPop(v15);
    swift_unknownObjectRelease();
    ++v10;
    if (v14 == v9)
    {
      goto LABEL_38;
    }
  }

  v19 = (*(a4 + 56) + 16 * v17);
  v21 = *v19;
  v20 = v19[1];
  v22 = sub_22F3BAD90(v13);
  if (v12[2])
  {
    v23 = sub_22F1237E8(v21, v20);
    if (v24)
    {
      v45 = *(v12[7] + 8 * v23);

      sub_22F145B30(v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22F133168(v45, isUniquelyReferenced_nonNull_native, v21, v20);
      v11 = v43;
      goto LABEL_8;
    }
  }

  v44 = v22;
  v26 = v8;
  a4 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v28 = sub_22F1237E8(v21, v20);
  v29 = v12[2];
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    goto LABEL_35;
  }

  v6 = v27;
  if (v12[3] >= v31)
  {
    if ((v8 & 1) == 0)
    {
      sub_22F1390BC();
    }

    v8 = v26;
    goto LABEL_27;
  }

  sub_22F12E2C0(v31, v8);
  v32 = sub_22F1237E8(v21, v20);
  if ((v6 & 1) == (v33 & 1))
  {
    v28 = v32;
    v8 = v26;
LABEL_27:
    v9 = v42;
    if (v6)
    {
      v34 = v12[7];
      v35 = *(v34 + 8 * v28);
      *(v34 + 8 * v28) = v44;
    }

    else
    {
      v12[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v12[6] + 16 * v28);
      *v36 = v21;
      v36[1] = v20;
      *(v12[7] + 8 * v28) = v44;
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_36;
      }

      v12[2] = v39;
    }

    v6 = a4;
    a4 = v41;
    v11 = v43;
    goto LABEL_8;
  }

  type metadata accessor for CLLocationCoordinate2D(0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F3B95AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F18, &qword_22F789EE8);
    v4 = sub_22F741180();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_22F3B964C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F3B96A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22F742170();

      sub_22F740D60();
      v13 = sub_22F7421D0();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_22F3B9870(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22F742170();

      sub_22F740D60();
      v14 = sub_22F7421D0();

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

void sub_22F3B9A20(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for Song();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_22F741990() + 1) & ~v9;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13 * v10;
      sub_22F15CAA0(*(a2 + 48) + v13 * v10, v7);
      v15 = *(a2 + 40);
      sub_22F742170();
      v16 = *v7;
      v17 = v7[1];
      sub_22F740D60();
      v18 = sub_22F7421D0();
      sub_22F15CBD8(v7);
      v19 = v18 & v11;
      if (a1 >= v12)
      {
        if (v19 < v12)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v12)
      {
        goto LABEL_10;
      }

      if (a1 >= v19)
      {
LABEL_10:
        if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 4 * a1);
        v22 = (v20 + 4 * v10);
        if (a1 != v10 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          a1 = v10;
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

uint64_t sub_22F3B9C70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_22F742170();
      sub_22F741760();
      result = sub_22F7421D0();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22F3B9E10(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22F742170();

      sub_22F740D60();
      v13 = sub_22F7421D0();

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
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
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

unint64_t sub_22F3B9FC0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22F742160();
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
      v18 = *(*(_s29IntermediateTimeExtendedTokenVMa() - 8) + 72);
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

uint64_t sub_22F3BA184(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22F742170();

      sub_22F740D60();
      v13 = sub_22F7421D0();

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

void sub_22F3BA334(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22F741800();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_22F73F690() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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
}

unint64_t sub_22F3BA4FC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_22F742170();
      sub_22F741760();
      result = sub_22F7421D0();
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
      v13 = (v12 + 8 * v3);
      v14 = (v12 + 8 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_22F73F690() - 8) + 72);
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

uint64_t sub_22F3BA6C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22F742170();
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v11;
      }

      MEMORY[0x231901D70](*&v13);
      if (v12 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v12;
      }

      MEMORY[0x231901D70](*&v14);
      result = sub_22F7421D0();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v15)
      {
LABEL_16:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
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

uint64_t sub_22F3BA884(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F741990() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22F742160();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
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

unint64_t sub_22F3BAA0C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22F741990() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_22F742170();

      sub_22F740D60();
      v15 = sub_22F7421D0();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
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

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22F3BAC00()
{
  result = qword_27DAB3EF8;
  if (!qword_27DAB3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EF8);
  }

  return result;
}

unint64_t sub_22F3BAC54()
{
  result = qword_27DAB3F00;
  if (!qword_27DAB3F00)
  {
    type metadata accessor for GraphGeoServiceQueryPerformer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3F00);
  }

  return result;
}

uint64_t sub_22F3BACB4(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F10, &unk_22F789ED8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F3B921C(a1, a2, v2 + v6, v8);
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22F3BAD90(void *a1)
{
  result = [a1 _place];
  if (result)
  {
    v2 = result;
    v3 = [result business];

    if (v3)
    {
      sub_22F120634(0, &qword_27DAB3F20, 0x277D0EAC8);
      sub_22F741170();
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_9(uint64_t *a1, uint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 16) & ~v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v8 + 8))(v4 + v10, v7);
  a3(*(v4 + v11));
  a4(*(v4 + v12));

  return MEMORY[0x2821FE8E8](v4, v12 + 8, v9 | 7);
}

void sub_22F3BB3F8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3F50, &unk_22F789EF8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_22F3B7DD0(a1, v1 + v4, v6, v7);
}

unint64_t sub_22F3BB4D0()
{
  result = qword_27DAB3FB8;
  if (!qword_27DAB3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FB8);
  }

  return result;
}

id MomentIngestCLIPFeatureVectorExtractor.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MomentIngestCLIPFeatureVectorExtractor.init(with:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MomentIngestCLIPFeatureVectorExtractor();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_22F3BB638()
{
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR___PGMomentIngestCLIPFeatureVectorExtractor_ingestMomentContainer);
  [v3 scenesProcessedRatio];
  if (v4 < 0.9)
  {
    goto LABEL_2;
  }

  v5 = [v3 assetsInExtendedCuration];
  v6 = [v5 fetchedObjects];

  if (!v6)
  {
    sub_22F3BBC8C();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
    return;
  }

  v7 = sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v8 = sub_22F741180();

  if (v8 >> 62)
  {
    goto LABEL_38;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_39:

LABEL_2:
    [objc_allocWithZone(MEMORY[0x277D22C40]) init];
    return;
  }

LABEL_6:
  v55 = v7;
  v56 = v3;
  v58 = v2;
  v59[0] = MEMORY[0x277D84F90];
  sub_22F146E44(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = 0;
  v3 = v59[0];
  v2 = (v8 & 0xC000000000000001);
  v57 = v9;
  do
  {
    if (v2)
    {
      v11 = MEMORY[0x2319016F0](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 uuid];
    if (v13)
    {
      v14 = v13;
      v15 = sub_22F740E20();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0;
    }

    v59[0] = v3;
    v19 = v3[2];
    v18 = v3[3];
    if (v19 >= v18 >> 1)
    {
      sub_22F146E44((v18 > 1), v19 + 1, 1);
      v3 = v59[0];
    }

    ++v10;
    v3[2] = v19 + 1;
    v20 = &v3[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
  }

  while (v57 != v10);
  v21 = [v56 feeder];
  v22 = [v21 allItems];

  if (!v22)
  {
    goto LABEL_68;
  }

  v9 = sub_22F741180();

  v60 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_41:
    v7 = sub_22F741A00();
    if (!v7)
    {
LABEL_42:

      v40 = v60;
      LODWORD(v41) = v60 < 0 || (v60 & 0x4000000000000000) != 0;
      if (v41 == 1)
      {
        goto LABEL_66;
      }

      for (i = *(v60 + 16); ; i = sub_22F741A00())
      {
        if (i / v57 < 0.9)
        {

          [objc_allocWithZone(MEMORY[0x277D22C40]) init];
          return;
        }

        v57 = i;
        sub_22F120634(0, &qword_27DAB3FD0, 0x277D22C68);
        v43 = [swift_getObjCClassFromMetadata() zerosOfCount_];
        if (v41)
        {
          v44 = sub_22F741A00();
          if (!v44)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v44 = *(v40 + 16);
          if (!v44)
          {
LABEL_62:

            *&v52 = v57;
            [v43 divideByScalar_];
            return;
          }
        }

        v45 = 0;
        v41 = v40 & 0xC000000000000001;
        while (1)
        {
          if (v41)
          {
            v46 = MEMORY[0x2319016F0](v45, v40);
          }

          else
          {
            if (v45 >= *(v40 + 16))
            {
              goto LABEL_65;
            }

            v46 = *(v40 + 8 * v45 + 32);
          }

          v47 = v46;
          v48 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          v49 = v58;
          sub_22F2E5B50(v46);
          v58 = v49;
          if (v49)
          {

            return;
          }

          v51 = v50;
          [v43 addVector_];

          ++v45;
          if (v48 == v44)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        ;
      }
    }

    goto LABEL_20;
  }

  v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_42;
  }

LABEL_20:
  v8 = 0;
  v55 = v9 & 0xFFFFFFFFFFFFFF8;
  v56 = (v9 & 0xC000000000000001);
  v54 = v9;
  while (1)
  {
    if (v56)
    {
      v23 = MEMORY[0x2319016F0](v8, v9);
    }

    else
    {
      if (v8 >= *(v55 + 16))
      {
        goto LABEL_37;
      }

      v23 = *(v9 + 8 * v8 + 32);
    }

    v24 = v23;
    v25 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v9 = sub_22F741A00();
      if (!v9)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    v26 = [v23 uuid];
    if (v26)
    {
      v27 = v26;
      v28 = sub_22F740E20();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v2 = &v54;
    v59[0] = v28;
    v59[1] = v30;
    MEMORY[0x28223BE20](v26);
    v53[2] = v59;
    v31 = v58;
    v32 = sub_22F1C1298(sub_22F3BBFF4, v53, v3);
    v58 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_21;
    }

    v33 = [v24 sceneAnalysisProperties];
    if (!v33)
    {
      break;
    }

    v34 = v33;
    v35 = [v33 sceneAnalysisVersion];

    v36 = objc_opt_self();
    v37 = [v36 baseSceneAnalysisVersionWithSceneAnalysisVersion_];
    if (v37 == [v36 latestVersion])
    {
      sub_22F741BA0();
      v38 = *(v60 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      goto LABEL_22;
    }

LABEL_21:

LABEL_22:
    v9 = v54;
    ++v8;
    if (v25 == v7)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

unint64_t sub_22F3BBC8C()
{
  result = qword_27DAB3FC8;
  if (!qword_27DAB3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FC8);
  }

  return result;
}

id MomentIngestCLIPFeatureVectorExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MomentIngestCLIPFeatureVectorExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentIngestCLIPFeatureVectorExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_22F3BBF80(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_22F742040() & 1;
    }
  }

  return result;
}

uint64_t _s11PhotosGraph38MomentIngestCLIPFeatureVectorExtractorC6encodeySSSo07MAFloatF0CFZ_0(void *a1)
{
  if (![a1 count])
  {
    return 0;
  }

  v2 = [a1 wrapper];
  v3 = [v2 array];

  v4 = sub_22F741180();
  v5 = sub_22F15B898(v4 + 32, *(v4 + 16));
  v7 = v6;

  v8 = sub_22F73F500();
  sub_22F133BF0(v5, v7);
  return v8;
}

void sub_22F3BC0F0()
{
  if (!sub_22F740F10())
  {
    [objc_allocWithZone(MEMORY[0x277D22C40]) init];
    return;
  }

  v0 = sub_22F73F490();
  if (v1 >> 60 == 15)
  {
    sub_22F3BBC8C();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    return;
  }

  v3 = v0;
  v4 = v1;
  v5 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v1);
      v7 = BYTE6(v1) >> 2;
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (v5 != 2)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_19;
  }

  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = __OFSUB__(v8, v9);
  v6 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_12:
    LODWORD(v6) = HIDWORD(v0) - v0;
    if (__OFSUB__(HIDWORD(v0), v0))
    {
LABEL_29:
      __break(1u);
      return;
    }

    v6 = v6;
  }

  v11 = v6 + 3;
  if (v6 >= 0)
  {
    v11 = v6;
  }

  if (v6 < -3)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = v11 >> 2;
LABEL_19:
  v12 = MEMORY[0x277D84F90];
  if (v6 <= 3)
  {
    v7 = *(MEMORY[0x277D84F90] + 16);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = sub_22F741200();
    *(v13 + 16) = v7;
    bzero((v13 + 32), 4 * v7);
  }

  if (v7 >> 61)
  {
    goto LABEL_28;
  }

  sub_22F15C418();
  sub_22F73EFF0();
  v14 = *(v13 + 16);
  if (v14)
  {
    v22 = v12;
    sub_22F741BD0();
    v15 = 32;
    do
    {
      v16 = *(v13 + v15);
      v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v18) = v16;
      [v17 initWithFloat_];
      sub_22F741BA0();
      v19 = *(v22 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v15 += 4;
      --v14;
    }

    while (v14);
  }

  v20 = objc_allocWithZone(MEMORY[0x277D22C40]);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v21 = sub_22F741160();

  [v20 initWithArray_];

  sub_22F1746FC(v3, v4);
}

unint64_t sub_22F3BC44C()
{
  result = qword_27DAB3FD8;
  if (!qword_27DAB3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FD8);
  }

  return result;
}

id sub_22F3BC4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_22F146E64(0, v1, 0);
  v2 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22F741980();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v26 = v1;
  v27 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v28 = v8;
    v12 = (*(a1 + 48) + 16 * v7);
    v13 = v12[1];
    v29 = *v12;
    v14 = *(*(a1 + 56) + 8 * v7);
    v15 = *(v30 + 16);
    v16 = *(v30 + 24);

    result = v14;
    if (v15 >= v16 >> 1)
    {
      v25 = result;
      sub_22F146E64((v16 > 1), v15 + 1, 1);
      result = v25;
    }

    *(v30 + 16) = v15 + 1;
    v17 = (v30 + 24 * v15);
    v17[4] = result;
    v17[5] = v29;
    v17[6] = v13;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v11);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v27;
    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22F107D18(v7, v27, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v7, v27, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v10;
    if (v28 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t PersonalTraitMomentGraphDataSource.holidayPersonalTraits(assetUUIDs:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v80 = a1;
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_22F7405F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741690();
  if (v2)
  {
    return v8;
  }

  v77 = v5;
  v78 = v6;
  v76 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a2;
  v12 = *(v4 + 20);
  sub_22F7407E0();
  v13 = sub_22F740590();
  (*(v8 + 8))(v11, v7);
  sub_22F741690();
  v15 = sub_22F161C68(v13);

  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1230, &qword_22F770AE0);
    v16 = sub_22F741DF0();
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  aBlock[0] = v16;
  sub_22F3BDA48(v15, 1, aBlock);

  v17 = aBlock[0];
  v18 = objc_opt_self();

  v75 = v17;
  sub_22F1534D0(v19);
  v20 = sub_22F741410();

  v21 = *(v81 + *(v4 + 24));
  v22 = [v18 momentNodeAsCollectionByMomentUUIDForMomentUUIDs:v20 inGraph:?];

  sub_22F1ADB1C();
  v23 = sub_22F740CA0();

  v24 = sub_22F3BC4A0(v23);

  if (v24[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB08C0, &qword_22F770AD8);
    v25 = sub_22F741DF0();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  aBlock[0] = v25;
  sub_22F3BDCA8(v24, 1, aBlock);
  v80 = 0;

  v26 = aBlock[0];
  v27 = objc_allocWithZone(PGGraphMomentNodeCollection);

  v28 = [v27 initWithGraph_];
  v29 = v26 + 64;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v26 + 64);
  v33 = (v30 + 63) >> 6;
  v34 = v26;

  v35 = v28;
  v8 = 0;
  v36 = v35;
  isEscapingClosureAtFileLocation = v79;
  if (v32)
  {
    while (1)
    {
      v38 = v8;
LABEL_18:
      v39 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v40 = [v35 collectionByFormingUnionWith_];

      v35 = v40;
      if (!v32)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v38 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v38 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v38);
    ++v8;
    if (v32)
    {
      v8 = v38;
      goto LABEL_18;
    }
  }

  v41 = v34;

  v42 = v80;
  sub_22F741690();
  v80 = v42;
  if (v42)
  {

    return v8;
  }

  v83 = MEMORY[0x277D84F90];
  v43 = objc_opt_self();
  v44 = v35;
  v45 = [v43 celebratedHolidayOfMoment];
  v46 = [objc_msgSend(v44 graph)];
  swift_unknownObjectRelease();
  v47 = [v46 concreteGraph];

  if (!v47)
  {
    goto LABEL_31;
  }

  v48 = [v44 elementIdentifiers];
  v49 = [v47 adjacencyWithSources:v48 relation:v45];

  swift_unknownObjectRetain();
  v50 = [v49 transposed];
  swift_unknownObjectRelease();

  v51 = v80;
  sub_22F741690();
  v80 = v51;
  v8 = v81;
  v53 = v77;
  v52 = v78;
  if (v51)
  {

    swift_unknownObjectRelease();

    return v8;
  }

  v72 = v44;
  v54 = objc_allocWithZone(PGGraphHolidayNodeCollection);
  v55 = [v50 sources];
  v73 = v50;
  v56 = v55;
  v74 = [v54 initWithGraph:v47 elementIdentifiers:v55];

  v57 = v76;
  sub_22F3BDF10(v8, v76);
  v58 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v59 = v41;
  v60 = v57;
  v61 = (v52 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_22F3BDF74(v60, v64 + v58);
  v65 = (v64 + v61);
  v66 = v73;
  *v65 = v73;
  v65[1] = v47;
  *(v64 + v62) = v59;
  *(v64 + v63) = v75;
  *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v83;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_22F3BDFD8;
  *(v67 + 24) = v64;
  aBlock[4] = sub_22F15A678;
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2136B4;
  aBlock[3] = &block_descriptor_54;
  v68 = _Block_copy(aBlock);
  v69 = v66;
  swift_unknownObjectRetain();

  v70 = v74;
  [v74 enumerateHolidayNamesUsingBlock_];

  _Block_release(v68);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_30:
    __break(1u);

    __break(1u);
LABEL_31:
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  v71 = v80;
  sub_22F7416A0();
  if (v71)
  {
    swift_unknownObjectRelease();

    v8 = v83;
  }

  else
  {

    swift_unknownObjectRelease();
    v8 = v83;
  }

  return v8;
}

void sub_22F3BD01C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t *a10)
{
  v77 = a9;
  v78 = a8;
  v16 = sub_22F73FFB0();
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22F73FFA0();
  v70 = *(v20 - 8);
  v71 = v20;
  v21 = *(v70 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22F73FFC0();
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  MEMORY[0x28223BE20](v24);
  v74 = v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  if (sub_22F740F10() < 1)
  {
    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v60 = sub_22F740B90();
    __swift_project_value_buffer(v60, qword_2810B5038);
    v80 = sub_22F740B70();
    v61 = sub_22F7415E0();
    if (os_log_type_enabled(v80, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v62 = 136315138;
      v64 = sub_22F741750();
      v66 = sub_22F145F20(v64, v65, aBlock);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_22F0FC000, v80, v61, "Holiday node with identifier %s unexpectedly has no name value", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x2319033A0](v63, -1, -1);
      MEMORY[0x2319033A0](v62, -1, -1);
      goto LABEL_17;
    }
  }

  else
  {
    v69 = a10;
    v28 = *(a5 + *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) + 24));
    v29 = objc_allocWithZone(MEMORY[0x277D22BB0]);
    v30 = v28;
    v31 = [v29 initWithElementIdentifier_];
    v32 = [objc_allocWithZone(PGGraphHolidayNodeCollection) initWithGraph:v30 elementIdentifiers:v31];

    v79 = v32;
    v33 = [v32 elementIdentifiers];
    v34 = [a6 targetsForSources_];

    v80 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a7 elementIdentifiers:v34];
    v35 = v27;
    if ([v80 count]>= 1)
    {
      v36 = objc_opt_self();
      v37 = sub_22F740DF0();
      v38 = [v36 localizedNameForName_];

      if (v38)
      {
        v68[1] = sub_22F740E20();
        v68[0] = v39;

        v82 = MEMORY[0x277D84F90];
        v40 = swift_allocObject();
        v41 = v77;
        v42 = v78;
        v40[2] = v78;
        v40[3] = v41;
        v40[4] = &v82;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_22F3BE0DC;
        *(v43 + 24) = v40;
        aBlock[4] = sub_22F20AE34;
        aBlock[5] = v43;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22F107F34;
        aBlock[3] = &block_descriptor_12_4;
        v44 = _Block_copy(aBlock);

        [v80 enumerateIdentifiersAsCollectionsWithBlock:v44];
        _Block_release(v44);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v46 = v82;
          (*(v70 + 104))(v23, *MEMORY[0x277D3C018], v71);
          *v19 = v35;
          v19[1] = a3;
          (*(v72 + 104))(v19, *MEMORY[0x277D3C028], v73);
          v47 = *(v46 + 16);

          v42 = v74;
          sub_22F73FF80();
          v44 = v69;
          a3 = *v69;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v44 = a3;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_6:
            v49 = v79;
            v51 = v75;
            v50 = v76;
            v53 = a3[2];
            v52 = a3[3];
            if (v53 >= v52 >> 1)
            {
              *v44 = sub_22F1402C0(v52 > 1, v53 + 1, 1, a3);
            }

            v54 = *v44;
            *(v54 + 16) = v53 + 1;
            (*(v51 + 32))(v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v53, v42, v50);

            return;
          }
        }

        a3 = sub_22F1402C0(0, a3[2] + 1, 1, a3);
        *v44 = a3;
        goto LABEL_6;
      }
    }

    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v55 = sub_22F740B90();
    __swift_project_value_buffer(v55, qword_2810B5038);

    v56 = sub_22F740B70();
    v57 = sub_22F7415E0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_22F145F20(v27, a3, aBlock);
      _os_log_impl(&dword_22F0FC000, v56, v57, "Holiday unexpectedly has no localizedName for holiday %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x2319033A0](v59, -1, -1);
      MEMORY[0x2319033A0](v58, -1, -1);

LABEL_17:
      return;
    }
  }

  v67 = v80;
}

void sub_22F3BD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a4 + 16))
  {
    goto LABEL_6;
  }

  v7 = sub_22F1236C4(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (*(a5 + 16) && (v9 = (*(a4 + 56) + 16 * v7), v10 = *v9, v11 = v9[1], , v12 = sub_22F1229E8(v10, v11), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(a5 + 56) + 8 * v12);

    sub_22F144A14(v16);
  }

  else
  {
LABEL_6:
    if (qword_2810AC5A0 != -1)
    {
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B5038);
    oslog = sub_22F740B70();
    v18 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = sub_22F741750();
      v23 = sub_22F145F20(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22F0FC000, oslog, v18, "Unexpectedly found unrecognized moment node with identifier %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2319033A0](v20, -1, -1);
      MEMORY[0x2319033A0](v19, -1, -1);
    }
  }
}

unint64_t sub_22F3BDA48(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  v6 = (result + 48);
  v37 = a3;
  while (1)
  {
    v11 = *(v6 - 2);
    v10 = *(v6 - 1);
    v12 = *v6;
    v13 = *v4;

    result = sub_22F1229E8(v11, v10);
    v15 = v13[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      sub_22F127C90(v18, a2 & 1);
      v20 = *v4;
      result = sub_22F1229E8(v11, v10);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      v22 = *v4;
      if (v19)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v30 = v4;
    v31 = result;
    sub_22F135844();
    result = v31;
    v22 = *v30;
    if (v19)
    {
LABEL_12:
      v35 = result;
      v23 = *(v22[7] + 8 * result);

      v25 = sub_22F1515F8(v24);

      v27 = sub_22F151690(v26, v25);

      v28 = *(v27 + 16);
      if (v28)
      {
        v7 = sub_22F10B348(*(v27 + 16), 0);
        v29 = sub_22F11A438(&v36, v7 + 4, v28, v27);
        sub_22F1534EC();
        if (v29 != v28)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v7 = MEMORY[0x277D84F90];
      }

      v8 = v22[7];
      v9 = *(v8 + 8 * v35);
      *(v8 + 8 * v35) = v7;

      goto LABEL_5;
    }

LABEL_16:
    v22[(result >> 6) + 8] |= 1 << result;
    v32 = (v22[6] + 16 * result);
    *v32 = v11;
    v32[1] = v10;
    *(v22[7] + 8 * result) = v12;
    v33 = v22[2];
    v17 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v17)
    {
      goto LABEL_20;
    }

    v22[2] = v34;
LABEL_5:
    v6 += 3;
    a2 = 1;
    --v3;
    v4 = v37;
    if (!v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F3BDCA8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 40);
  v8 = *(result + 48);
  v9 = *a3;
  v10 = *(result + 32);

  result = sub_22F1236C4(v10);
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

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_22F12E58C(v15, v5 & 1);
    v17 = *a3;
    result = sub_22F1236C4(v10);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_22F1ADB1C();
    result = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = v10;
    v24 = (v19[7] + 16 * result);
    *v24 = v7;
    v24[1] = v8;
    v25 = v19[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v26;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  sub_22F139220();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  v21 = (v19[7] + 16 * v20);
  v22 = v21[1];
  *v21 = v7;
  v21[1] = v8;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v30 = *a3;
      v8 = *(v5 - 2);

      result = sub_22F1236C4(v8);
      v32 = v30[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v10 = v31;
      if (v30[3] < v34)
      {
        sub_22F12E58C(v34, 1);
        v35 = *a3;
        result = sub_22F1236C4(v8);
        if ((v10 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v10)
      {
        v27 = result;

        v28 = (v37[7] + 16 * v27);
        v29 = v28[1];
        *v28 = v7;
        v28[1] = v6;
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        *(v37[6] + 8 * result) = v8;
        v38 = (v37[7] + 16 * result);
        *v38 = v7;
        v38[1] = v6;
        v39 = v37[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v37[2] = v40;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_22F3BDF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3BDF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitMomentGraphDataSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22F3BDFD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_22F3BD01C(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MaestroSongs.init(from:schemaVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 != 0x2D32312D30323032 || a3 != 0xEA00000000003132) && (sub_22F742040() & 1) == 0 && (a2 != 0x2D31302D31323032 || a3 != 0xEA00000000003331) && (sub_22F742040() & 1) == 0 && (a2 != 0x2D32302D31323032 || a3 != 0xEA00000000003831) && (sub_22F742040() & 1) == 0 && (a2 != 0x2D33302D31323032 || a3 != 0xEA00000000003632) && (sub_22F742040() & 1) == 0)
  {
    sub_22F3BE3A0();
    swift_allocError();
    *v16 = a2;
    *(v16 + 8) = a3;
    *(v16 + 16) = 0;
    swift_willThrow();
    return (*(v9 + 8))(a1, v8);
  }

  (*(v9 + 16))(v12, a1, v8);
  type metadata accessor for MaestroSongsOnDisk();
  swift_allocObject();
  v13 = sub_22F3BE924(v12, a2, a3);
  if (v4)
  {
    return (*(v9 + 8))(a1, v8);
  }

  v15 = v13;
  (*(v9 + 8))(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3FF0, &qword_22F78A0F0);
  result = swift_allocObject();
  *(result + 16) = v15;
  *v18 = result;
  return result;
}

unint64_t sub_22F3BE3A0()
{
  result = qword_27DAB3FE8;
  if (!qword_27DAB3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3FE8);
  }

  return result;
}

uint64_t sub_22F3BE43C()
{
  v0 = sub_22F3D9AEC(&unk_2843DE7A0);
  result = swift_arrayDestroy();
  qword_27DAB3FE0 = v0;
  return result;
}

uint64_t static MaestroSongs.supportedSchemaVersions.getter()
{
  if (qword_27DAAFE18 != -1)
  {
    swift_once();
  }
}

uint64_t MaestroSongs.init(songs:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MaestroSongsInMemory();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3FF8, &qword_22F78A0F8);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_22F3BE554@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_22F741C40();

  *a1 = v4;
  return result;
}

size_t sub_22F3BE59C()
{
  v1 = *v0;
  v2 = sub_22F3C319C();

  return v2;
}

uint64_t sub_22F3BE5DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v8 >= *(v9 + 16))
      {
        *(v3 + 24) = 0;
        v5 = v7 - 1;
        goto LABEL_13;
      }

      if (v8 < 0)
      {
        break;
      }

      v10 = *(type metadata accessor for Song() - 8);
      v11 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v12 = *(v10 + 72);
      *(v3 + 24) = v8 + 1;
      result = sub_22F15CAA0(v11 + v12 * v8, v6);
      if (v5 == v7)
      {
        goto LABEL_13;
      }

      v6 += v12;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22F3BE6E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !a3)
  {
LABEL_10:
    *a1 = v3;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v18 = a1;
    sub_22F3BECB8(v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
LABEL_8:
      sub_22F120ADC(v10, &qword_27DAB1250, &qword_22F781A10);
    }

    else
    {
      v16 = 0;
      while (1)
      {
        sub_22F15CB04(v10, v15);
        sub_22F15CB04(v15, a2);
        if (a3 - 1 == v16)
        {
          break;
        }

        a2 += *(v12 + 72);
        sub_22F3BECB8(v10);
        ++v16;
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          goto LABEL_8;
        }
      }
    }

    a1 = v18;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_22F3BE8D8()
{
  v0 = sub_22F3D9AEC(&unk_2843D9A58);
  result = swift_arrayDestroy();
  qword_2810AB1C8 = v0;
  return result;
}

uint64_t sub_22F3BE924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v4[2] = 0;
  if (qword_2810AB1C0 != -1)
  {
    swift_once();
  }

  if ((sub_22F15E910(a2, a3, qword_2810AB1C8) & 1) == 0)
  {
    sub_22F3BE3A0();
    swift_allocError();
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 16) = 0;
    swift_willThrow();
    v14 = sub_22F73F470();
    (*(*(v14 - 8) + 8))(a1, v14);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v4[5] = a2;
  v4[6] = a3;
  swift_beginAccess();
  v4[2] = 0;
  v4[3] = 0;

  sub_22F73F450();
  v9 = sub_22F740EC0();

  v10 = fopen((v9 + 32), "r");

  if (v10)
  {
    v12 = sub_22F73F470();
    (*(*(v12 - 8) + 8))(a1, v12);

    v4[4] = v10;
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F3BEB40()
{
  result = qword_27DAB4000;
  if (!qword_27DAB4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB4008, &qword_22F78A100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4000);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_22F3BEC5C()
{
  fclose(*(v0 + 32));
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    free(v1);
  }

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_22F3BECB8@<X0>(uint64_t a1@<X8>)
{
  v28[7] = *MEMORY[0x277D85DE8];
  v3 = sub_22F740E80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  swift_beginAccess();
  swift_beginAccess();
  v9 = getline((v1 + 16), (v1 + 24), v8);
  swift_endAccess();
  swift_endAccess();
  if (v9 < 1)
  {
    fseek(*(v1 + 32), 0, 0);
LABEL_15:
    v26 = 1;
    goto LABEL_16;
  }

  if (!*(v1 + 16) || (sub_22F740F70(), sub_22F740E70(), v10 = sub_22F740E30(), v12 = v11, , (*(v4 + 8))(v7, v3), v12 >> 60 == 15))
  {
LABEL_10:
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v19 = sub_22F740B90();
    __swift_project_value_buffer(v19, qword_2810B4D90);
    v20 = sub_22F740B70();
    v21 = sub_22F7415E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22F0FC000, v20, v21, "[MemoriesMusic] (MaestroSongs) Failed to parse song from Maestro song.", v22, 2u);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

    goto LABEL_15;
  }

  v13 = objc_opt_self();
  v14 = sub_22F73F4F0();
  v28[0] = 0;
  v15 = [v13 JSONObjectWithData:v14 options:4 error:v28];

  if (!v15)
  {
    v17 = v28[0];
    v18 = sub_22F73F370();

    swift_willThrow();
    sub_22F1746FC(v10, v12);

    goto LABEL_10;
  }

  v16 = v28[0];
  sub_22F741920();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22F1746FC(v10, v12);
    goto LABEL_10;
  }

  sub_22F3BF210(v28[4], *(v1 + 40), *(v1 + 48), a1);
  sub_22F1746FC(v10, v12);

  v26 = 0;
LABEL_16:
  v23 = type metadata accessor for Song();
  result = (*(*(v23 - 8) + 56))(a1, v26, 1, v23);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F3BF210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 0x2D32312D30323032 && a3 == 0xEA00000000003132)
  {
    return sub_22F3C0D94(a1, a4);
  }

  v7 = a1;
  v8 = a4;
  v9 = sub_22F742040();
  a4 = v8;
  v10 = v9;
  a1 = v7;
  if ((v10 & 1) != 0 || a2 == 0x2D31302D31323032 && a3 == 0xEA00000000003331)
  {
    return sub_22F3C0D94(a1, a4);
  }

  v11 = sub_22F742040();
  a4 = v8;
  v12 = v11;
  a1 = v7;
  if (v12)
  {
    return sub_22F3C0D94(a1, a4);
  }

  if (a2 == 0x2D32302D31323032 && a3 == 0xEA00000000003831)
  {
    return sub_22F3BF748(a1, a4);
  }

  v14 = sub_22F742040();
  a4 = v8;
  v15 = v14;
  a1 = v7;
  if (v15)
  {
    return sub_22F3BF748(a1, a4);
  }

  if (a2 == 0x2D33302D31323032 && a3 == 0xEA00000000003632)
  {
    return sub_22F3C02B0(a1, a4);
  }

  v16 = sub_22F742040();
  a4 = v8;
  v17 = v16;
  a1 = v7;
  if (v17)
  {
    return sub_22F3C02B0(a1, a4);
  }

  sub_22F3BE3A0();
  swift_allocError();
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = 0;
  swift_willThrow();
}

size_t sub_22F3BF3DC()
{
  v1 = *v0;
  v2 = sub_22F3C34E0();

  return v2;
}

void sub_22F3BF45C(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3 >= *(v4 + 16))
  {
    *(v1 + 24) = 0;
    v7 = type metadata accessor for Song();
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
  }

  else if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for Song();
    v6 = *(v5 - 8);
    sub_22F15CAA0(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a1);
    (*(v6 + 56))(a1, 0, 1, v5);
    *(v1 + 24) = v3 + 1;
  }
}

uint64_t sub_22F3BF59C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22F3BF5F0()
{
  sub_22F3C3800(*v0);
  v2 = v1;

  return v2;
}

uint64_t sub_22F3BF700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F3BF748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v91 - v9;
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v11 = sub_22F1229E8(0x44496D616461, 0xE600000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v11, v111);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v13 = v116;
  if (!*(a1 + 16) || (v14 = v115, v15 = sub_22F1229E8(0x656C746974, 0xE500000000000000), (v16 & 1) == 0) || (sub_22F13A100(*(a1 + 56) + 32 * v15, v111), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

LABEL_22:
    *&v111[0] = 0;
    *(&v111[0] + 1) = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000045, 0x800000022F79DCA0);
    v25 = sub_22F740CB0();
    MEMORY[0x231900B10](v25);

    v26 = v111[0];
    sub_22F3BE3A0();
    swift_allocError();
    *v27 = v26;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v109 = v115;
  v110 = v116;
  v17 = sub_22F1229E8(0x747369747261, 0xE600000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v17, v111);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v108 = v116;
  if (!*(a1 + 16) || (v107 = v115, v19 = sub_22F1229E8(0x6D75626C61, 0xE500000000000000), (v20 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v19, v111);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_20:

    goto LABEL_21;
  }

  v104 = v116;
  v105 = v115;
  if (!*(a1 + 16))
  {
    v103 = 0;
LABEL_34:
    v106 = 2;
LABEL_35:
    v102 = 1;
    v35 = 0.0;
    goto LABEL_36;
  }

  v21 = sub_22F1229E8(0x6D614E65726E6567, 0xEA00000000007365);
  if (v22)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v21, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v23 = swift_dynamicCast();
    v24 = v115;
    if (!v23)
    {
      v24 = 0;
    }

    v103 = v24;
  }

  else
  {
    v103 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v29 = sub_22F1229E8(0x63696C7078457369, 0xEA00000000007469);
  v106 = 2;
  if (v30)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v29, v111);
    v31 = swift_dynamicCast();
    v32 = v115;
    if (!v31)
    {
      v32 = 2;
    }

    v106 = v32;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

  v33 = sub_22F1229E8(0xD000000000000010, 0x800000022F78FFF0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v33, v111);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v102 = 0;
  v35 = (*&v115 * 0.001);
LABEL_36:
  v36 = sub_22F73F7C0();
  v37 = *(v36 - 8);
  v100 = *(v37 + 56);
  v101 = v36;
  v99 = v37 + 56;
  v100(v10, 1, 1);
  if (*(a1 + 16))
  {
    v38 = sub_22F1229E8(0x636F4C6F69647561, 0xEB00000000656C61);
    if (v39)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v38, v111);
      if (swift_dynamicCast())
      {
        sub_22F73F6E0();
        sub_22F120ADC(v10, &qword_27DAB0C90, &unk_22F785B70);
        (v100)(v7, 0, 1, v101);
        sub_22F1207AC(v7, v10, &qword_27DAB0C90, &unk_22F785B70);
      }
    }
  }

  if (!*(a1 + 16))
  {
    v100 = 0;
    v101 = 0;
LABEL_60:
    v98 = 0;
    v99 = 0;
    goto LABEL_61;
  }

  v40 = sub_22F1229E8(0x556B726F77747261, 0xEA00000000004C52);
  if (v41)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v40, v111);
    v42 = swift_dynamicCast();
    if (v42)
    {
      v43 = v115;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      v44 = v116;
    }

    else
    {
      v44 = 0;
    }

    v100 = v44;
    v101 = v43;
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_60;
  }

  v45 = sub_22F1229E8(0xD000000000000010, 0x800000022F79D360);
  if (v46)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v45, v111);
    v47 = swift_dynamicCast();
    if (v47)
    {
      v48 = v115;
    }

    else
    {
      v48 = 0;
    }

    if (v47)
    {
      v49 = v116;
    }

    else
    {
      v49 = 0;
    }

    v98 = v49;
    v99 = v48;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  if (*(a1 + 16))
  {
    v72 = sub_22F1229E8(0x616E416F69647561, 0xED0000736973796CLL);
    if (v73)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v72, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4018, &qword_22F78A418);
      if (swift_dynamicCast())
      {
        v74 = v115;
        if (*(v115 + 16))
        {
          v75 = sub_22F1229E8(0x796772656E65, 0xE600000000000000);
          if (v76)
          {
            v77 = *(*(v74 + 56) + 8 * v75);
            if (*(v77 + 16))
            {
              v78 = *(*(v74 + 56) + 8 * v75);

              v79 = sub_22F1229E8(1852399981, 0xE400000000000000);
              if (v80)
              {
                sub_22F13A100(*(v77 + 56) + 32 * v79, v111);

                v81 = swift_dynamicCast();
                v82 = v115;
                if (!v81)
                {
                  v82 = 0;
                }

                v97 = v82;
                v83 = v81 ^ 1;
                goto LABEL_81;
              }
            }
          }
        }

        v97 = 0;
        v83 = 1;
LABEL_81:
        v96 = v83;
        if (*(v74 + 16) && (v84 = sub_22F1229E8(0x65636E656C6176, 0xE700000000000000), (v85 & 1) != 0) && (v86 = *(*(v74 + 56) + 8 * v84), , , *(v86 + 16)) && (v87 = sub_22F1229E8(1852399981, 0xE400000000000000), (v88 & 1) != 0))
        {
          sub_22F13A100(*(v86 + 56) + 32 * v87, v111);

          v89 = swift_dynamicCast();
          v90 = v115;
          if (!v89)
          {
            v90 = 0;
          }

          v95 = v90;
          v50 = v89 ^ 1;
          v51 = &v117;
        }

        else
        {

          v95 = 0;
          v50 = 1;
          v51 = &v117;
        }

        goto LABEL_62;
      }
    }
  }

LABEL_61:
  v95 = 0;
  v97 = 0;
  v50 = 1;
  v94 = 1;
  v51 = &v118;
LABEL_62:
  *(v51 - 64) = v50;
  if (*(a1 + 16) && (v52 = sub_22F1229E8(0x6E414C4D78656C66, 0xEE00736973796C61), (v53 & 1) != 0) && (sub_22F13A100(*(a1 + 56) + 32 * v52, v111), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) != 0))
  {
    sub_22F3C1858(v115, v111);

    v91 = v111[1];
    v92 = v111[0];
    v93 = v112;
    v54 = v113 | (v114 << 32);
  }

  else
  {
    v93 = 0;
    v54 = 0;
    v92 = xmmword_22F781B40;
    v91 = 0u;
  }

  v55 = type metadata accessor for Song();
  v56 = v55[16];
  v57 = sub_22F73F690();
  (*(*(v57 - 8) + 56))(a2 + v56, 1, 1, v57);
  *a2 = v14;
  *(a2 + 8) = v13;
  v58 = v110;
  *(a2 + 16) = v109;
  *(a2 + 24) = v58;
  v59 = v108;
  *(a2 + 32) = v107;
  *(a2 + 40) = v59;
  v60 = v104;
  *(a2 + 48) = v105;
  *(a2 + 56) = v60;
  *(a2 + 64) = v103;
  *(a2 + 72) = v106;
  *(a2 + 80) = v35;
  *(a2 + 88) = v102;
  *(a2 + 92) = 0;
  *(a2 + 96) = 1;
  v61 = v100;
  *(a2 + 104) = v101;
  *(a2 + 112) = v61;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v62 = v98;
  *(a2 + 136) = v99;
  *(a2 + 144) = v62;
  result = sub_22F1207AC(v10, a2 + v55[15], &qword_27DAB0C90, &unk_22F785B70);
  v63 = a2 + v55[26];
  v64 = v91;
  *v63 = v92;
  *(v63 + 16) = v64;
  *(v63 + 32) = v93;
  *(v63 + 44) = BYTE4(v54);
  *(v63 + 40) = v54;
  *(a2 + v55[17]) = 0;
  v65 = a2 + v55[18];
  *v65 = v97;
  *(v65 + 4) = v96;
  v66 = a2 + v55[19];
  *v66 = v95;
  *(v66 + 4) = v94;
  v67 = a2 + v55[20];
  *v67 = 0;
  *(v67 + 4) = 1;
  v68 = a2 + v55[21];
  *v68 = 0;
  *(v68 + 4) = 1;
  v69 = a2 + v55[22];
  *v69 = 0;
  *(v69 + 4) = 1;
  v70 = a2 + v55[23];
  *v70 = 0;
  *(v70 + 4) = 1;
  *(a2 + v55[24]) = 2;
  v71 = (a2 + v55[25]);
  *v71 = 0;
  v71[1] = 0;
  return result;
}

uint64_t sub_22F3C02B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v91 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v91 - v16;
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v18 = sub_22F1229E8(0x44496D616461, 0xE600000000000000);
  if ((v19 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v18, &v108);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!*(a1 + 16) || (v105 = v106, v110 = v107, v20 = sub_22F1229E8(0x656C746974, 0xE500000000000000), (v21 & 1) == 0) || (sub_22F13A100(*(a1 + 56) + 32 * v20, &v108), (swift_dynamicCast() & 1) == 0))
  {
LABEL_22:

LABEL_23:
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000045, 0x800000022F79DCA0);
    v30 = sub_22F740CB0();
    MEMORY[0x231900B10](v30);

    v31 = v108;
    v32 = v109;
    sub_22F3BE3A0();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 1;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v103 = v106;
  v104 = v107;
  v22 = sub_22F1229E8(0x747369747261, 0xE600000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v22, &v108);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v102 = v107;
  if (!*(a1 + 16) || (v101 = v106, v24 = sub_22F1229E8(0x6D75626C61, 0xE500000000000000), (v25 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v24, &v108);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_21:

    goto LABEL_22;
  }

  v97 = v107;
  v98 = v106;
  if (!*(a1 + 16))
  {
    v96 = 0;
LABEL_30:
    v38 = 2;
LABEL_31:
    v99 = v38;
    goto LABEL_32;
  }

  v26 = sub_22F1229E8(0x6D614E65726E6567, 0xEA00000000007365);
  if (v27)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v26, &v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v28 = swift_dynamicCast();
    v29 = v106;
    if (!v28)
    {
      v29 = 0;
    }

    v96 = v29;
  }

  else
  {
    v96 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_30;
  }

  v35 = sub_22F1229E8(0x63696C7078457369, 0xEA00000000007469);
  v99 = 2;
  if (v36)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v35, &v108);
    v37 = swift_dynamicCast();
    v38 = v106;
    if (!v37)
    {
      v38 = 2;
    }

    goto LABEL_31;
  }

LABEL_32:
  v39 = sub_22F73F7C0();
  v40 = *(v39 - 1);
  v41 = *(v40 + 56);
  v100 = v39;
  v95 = v41;
  v94 = (v40 + 56);
  (v41)(v17, 1, 1);
  if (*(a1 + 16))
  {
    v42 = sub_22F1229E8(0x636F4C6F69647561, 0xEB00000000656C61);
    if (v43)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v42, &v108);
      if (swift_dynamicCast())
      {
        sub_22F73F6E0();
        sub_22F120ADC(v17, &qword_27DAB0C90, &unk_22F785B70);
        v95(v14, 0, 1, v100);
        sub_22F1207AC(v14, v17, &qword_27DAB0C90, &unk_22F785B70);
      }
    }
  }

  if (!*(a1 + 16))
  {
    v95 = 0;
LABEL_48:
    v94 = 0;
LABEL_49:
    v52 = 0;
    goto LABEL_50;
  }

  v44 = sub_22F1229E8(0x6C6173756F7261, 0xE700000000000000);
  if (v45)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v44, &v108);
    sub_22F170D8C();
    v46 = swift_dynamicCast();
    v47 = v106;
    if (!v46)
    {
      v47 = 0;
    }

    v95 = v47;
  }

  else
  {
    v95 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_48;
  }

  v48 = sub_22F1229E8(0x65636E656C6176, 0xE700000000000000);
  if (v49)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v48, &v108);
    sub_22F170D8C();
    v50 = swift_dynamicCast();
    v51 = v106;
    if (!v50)
    {
      v51 = 0;
    }

    v94 = v51;
  }

  else
  {
    v94 = 0;
  }

  if (!*(a1 + 16))
  {
    v100 = 0;
LABEL_63:
    v56 = 0;
    goto LABEL_64;
  }

  v57 = sub_22F1229E8(0xD000000000000016, 0x800000022F79DCF0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_49;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v57, &v108);
  sub_22F170D8C();
  if (swift_dynamicCast())
  {
    v52 = v106;
  }

  else
  {
    v52 = 0;
  }

LABEL_50:
  v53 = *(a1 + 16);
  v100 = v52;
  if (!v53)
  {
    v56 = 0;
    goto LABEL_72;
  }

  v54 = sub_22F1229E8(0xD000000000000019, 0x800000022F79DD10);
  if ((v55 & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v54, &v108);
  sub_22F170D8C();
  if (swift_dynamicCast())
  {
    v56 = v106;
  }

  else
  {
    v56 = 0;
  }

LABEL_64:
  if (*(a1 + 16))
  {
    v59 = sub_22F1229E8(0x50746E65746E6F63, 0xEF72656469766F72);
    if (v60)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v59, &v108);
      v61 = swift_dynamicCast();
      v62 = v106;
      if (!v61)
      {
        v62 = 0;
      }

      v93 = v62;
      if (v61)
      {
        v63 = v107;
      }

      else
      {
        v63 = 0;
      }

      v92 = v63;
      goto LABEL_73;
    }
  }

LABEL_72:
  v93 = 0;
  v92 = 0;
LABEL_73:
  sub_22F203FB4(v17, v11);
  v64 = sub_22F73F690();
  (*(*(v64 - 8) + 56))(v7, 1, 1, v64);
  v65 = 0;
  v66 = 0;
  v67 = v95;
  v68 = v94;
  if (v95)
  {
    [v95 floatValue];
    v66 = v69;
  }

  if (v68)
  {
    [v68 floatValue];
    v65 = v70;
  }

  if (v100)
  {
    [v100 floatValue];
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  if (v56)
  {
    [v56 floatValue];
    v74 = v73;

    v75 = v100;
    sub_22F120ADC(v17, &qword_27DAB0C90, &unk_22F785B70);
  }

  else
  {
    sub_22F120ADC(v17, &qword_27DAB0C90, &unk_22F785B70);
    v75 = v100;

    v74 = 0;
  }

  LODWORD(v100) = v56 == 0;
  v76 = v110;
  *a2 = v105;
  *(a2 + 8) = v76;
  v77 = v75 == 0;
  v78 = v104;
  *(a2 + 16) = v103;
  *(a2 + 24) = v78;
  v79 = v102;
  *(a2 + 32) = v101;
  *(a2 + 40) = v79;
  v80 = v97;
  *(a2 + 48) = v98;
  *(a2 + 56) = v80;
  *(a2 + 64) = v96;
  *(a2 + 72) = v99;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 92) = 0;
  *(a2 + 96) = 1;
  v81 = type metadata accessor for Song();
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  sub_22F1207AC(v11, a2 + v81[15], &qword_27DAB0C90, &unk_22F785B70);
  v82 = a2 + v81[26];
  *v82 = 1;
  *(v82 + 8) = 0u;
  *(v82 + 24) = 0u;
  *(v82 + 37) = 0;
  result = sub_22F1207AC(v7, a2 + v81[16], &qword_27DAB0920, &qword_22F770B20);
  *(a2 + v81[17]) = 0;
  v83 = a2 + v81[18];
  *v83 = v66;
  *(v83 + 4) = v67 == 0;
  v84 = a2 + v81[19];
  *v84 = v65;
  *(v84 + 4) = v68 == 0;
  v85 = a2 + v81[20];
  *v85 = v72;
  *(v85 + 4) = v77;
  v86 = a2 + v81[21];
  *v86 = v74;
  *(v86 + 4) = v100;
  v87 = a2 + v81[22];
  *v87 = 0;
  *(v87 + 4) = 1;
  v88 = a2 + v81[23];
  *v88 = 0;
  *(v88 + 4) = 1;
  *(a2 + v81[24]) = 0;
  v89 = (a2 + v81[25]);
  v90 = v92;
  *v89 = v93;
  v89[1] = v90;
  return result;
}

uint64_t sub_22F3C0D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v85 - v9;
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v11 = sub_22F1229E8(0x44496D616461, 0xE600000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v11, v103);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v13 = v108;
  if (!*(a1 + 16) || (v14 = v107, v15 = sub_22F1229E8(0x656C746974, 0xE500000000000000), (v16 & 1) == 0) || (sub_22F13A100(*(a1 + 56) + 32 * v15, v103), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

LABEL_22:
    *&v103[0] = 0;
    *(&v103[0] + 1) = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000045, 0x800000022F79DCA0);
    v25 = sub_22F740CB0();
    MEMORY[0x231900B10](v25);

    v26 = v103[0];
    sub_22F3BE3A0();
    swift_allocError();
    *v27 = v26;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v101 = v107;
  v102 = v108;
  v17 = sub_22F1229E8(0x747369747261, 0xE600000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v17, v103);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v100 = v108;
  if (!*(a1 + 16) || (v99 = v107, v19 = sub_22F1229E8(0x6D75626C61, 0xE500000000000000), (v20 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v19, v103);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_20:

    goto LABEL_21;
  }

  v96 = v108;
  v97 = v107;
  if (!*(a1 + 16))
  {
    v95 = 0;
LABEL_34:
    v98 = 2;
LABEL_35:
    v94 = 1;
    v35 = 0.0;
    goto LABEL_36;
  }

  v21 = sub_22F1229E8(0x6D614E65726E6567, 0xEA00000000007365);
  if (v22)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v21, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v23 = swift_dynamicCast();
    v24 = v107;
    if (!v23)
    {
      v24 = 0;
    }

    v95 = v24;
  }

  else
  {
    v95 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v29 = sub_22F1229E8(0x63696C7078457369, 0xEA00000000007469);
  v98 = 2;
  if (v30)
  {
    sub_22F13A100(*(a1 + 56) + 32 * v29, v103);
    v31 = swift_dynamicCast();
    v32 = v107;
    if (!v31)
    {
      v32 = 2;
    }

    v98 = v32;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

  v33 = sub_22F1229E8(0xD000000000000010, 0x800000022F78FFF0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v33, v103);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v94 = 0;
  v35 = (*&v107 * 0.001);
LABEL_36:
  v36 = sub_22F73F7C0();
  v37 = *(v36 - 8);
  v92 = *(v37 + 56);
  v93 = v36;
  v91 = v37 + 56;
  v92(v10, 1, 1);
  if (*(a1 + 16))
  {
    v38 = sub_22F1229E8(0x636F4C6F69647561, 0xEB00000000656C61);
    if (v39)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v38, v103);
      if (swift_dynamicCast())
      {
        sub_22F73F6E0();
        sub_22F120ADC(v10, &qword_27DAB0C90, &unk_22F785B70);
        (v92)(v7, 0, 1, v93);
        sub_22F1207AC(v7, v10, &qword_27DAB0C90, &unk_22F785B70);
      }
    }
  }

  if (*(a1 + 16))
  {
    v40 = sub_22F1229E8(0x556B726F77747261, 0xEA00000000004C52);
    if (v41)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v40, v103);
      v42 = swift_dynamicCast();
      if (v42)
      {
        v43 = v107;
      }

      else
      {
        v43 = 0;
      }

      if (v42)
      {
        v44 = v108;
      }

      else
      {
        v44 = 0;
      }

      v92 = v44;
      v93 = v43;
    }

    else
    {
      v92 = 0;
      v93 = 0;
    }

    if (*(a1 + 16))
    {
      v45 = sub_22F1229E8(0x616E416F69647561, 0xED0000736973796CLL);
      if (v46)
      {
        sub_22F13A100(*(a1 + 56) + 32 * v45, v103);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4018, &qword_22F78A418);
        if (swift_dynamicCast())
        {
          v47 = v107;
          if (*(v107 + 16))
          {
            v48 = sub_22F1229E8(0x796772656E65, 0xE600000000000000);
            if (v49)
            {
              v50 = *(*(v47 + 56) + 8 * v48);
              if (*(v50 + 16))
              {
                v51 = *(*(v47 + 56) + 8 * v48);

                v52 = sub_22F1229E8(1852399981, 0xE400000000000000);
                if (v53)
                {
                  sub_22F13A100(*(v50 + 56) + 32 * v52, v103);

                  v54 = swift_dynamicCast();
                  v55 = v107;
                  if (!v54)
                  {
                    v55 = 0;
                  }

                  LODWORD(v91) = v55;
                  v56 = v54 ^ 1;
LABEL_67:
                  v90 = v56;
                  if (*(v47 + 16) && (v60 = sub_22F1229E8(0x65636E656C6176, 0xE700000000000000), (v61 & 1) != 0) && (v62 = *(*(v47 + 56) + 8 * v60), , , *(v62 + 16)) && (v63 = sub_22F1229E8(1852399981, 0xE400000000000000), (v64 & 1) != 0))
                  {
                    sub_22F13A100(*(v62 + 56) + 32 * v63, v103);

                    v65 = swift_dynamicCast();
                    v66 = v107;
                    if (!v65)
                    {
                      v66 = 0;
                    }

                    v89 = v66;
                    v67 = v65 ^ 1;
                  }

                  else
                  {

                    v89 = 0;
                    v67 = 1;
                  }

                  v88 = v67;
                  if (!*(a1 + 16))
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_62;
                }
              }
            }
          }

          LODWORD(v91) = 0;
          v56 = 1;
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    v92 = 0;
    v93 = 0;
  }

  v89 = 0;
  LODWORD(v91) = 0;
  v88 = 1;
  v90 = 1;
  if (!*(a1 + 16))
  {
LABEL_76:
    v87 = 0;
    v59 = 0;
    v86 = xmmword_22F781B40;
    v85 = 0u;
    goto LABEL_77;
  }

LABEL_62:
  v57 = sub_22F1229E8(0x6E414C4D78656C66, 0xEE00736973796C61);
  if ((v58 & 1) == 0)
  {
    goto LABEL_76;
  }

  sub_22F13A100(*(a1 + 56) + 32 * v57, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_76;
  }

  sub_22F3C1858(v107, v103);

  v85 = v103[1];
  v86 = v103[0];
  v87 = v104;
  v59 = v105 | (v106 << 32);
LABEL_77:
  v68 = type metadata accessor for Song();
  v69 = v68[16];
  v70 = sub_22F73F690();
  (*(*(v70 - 8) + 56))(a2 + v69, 1, 1, v70);
  *a2 = v14;
  *(a2 + 8) = v13;
  v71 = v102;
  *(a2 + 16) = v101;
  *(a2 + 24) = v71;
  v72 = v100;
  *(a2 + 32) = v99;
  *(a2 + 40) = v72;
  v73 = v96;
  *(a2 + 48) = v97;
  *(a2 + 56) = v73;
  *(a2 + 64) = v95;
  *(a2 + 72) = v98;
  *(a2 + 80) = v35;
  *(a2 + 88) = v94;
  *(a2 + 92) = 0;
  *(a2 + 96) = 1;
  v74 = v92;
  *(a2 + 104) = v93;
  *(a2 + 112) = v74;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  result = sub_22F1207AC(v10, a2 + v68[15], &qword_27DAB0C90, &unk_22F785B70);
  v75 = a2 + v68[26];
  v76 = v85;
  *v75 = v86;
  *(v75 + 16) = v76;
  *(v75 + 32) = v87;
  *(v75 + 44) = BYTE4(v59);
  *(v75 + 40) = v59;
  *(a2 + v68[17]) = 0;
  v77 = a2 + v68[18];
  v78 = v90;
  *v77 = v91;
  *(v77 + 4) = v78;
  v79 = a2 + v68[19];
  *v79 = v89;
  *(v79 + 4) = v88;
  v80 = a2 + v68[20];
  *v80 = 0;
  *(v80 + 4) = 1;
  v81 = a2 + v68[21];
  *v81 = 0;
  *(v81 + 4) = 1;
  v82 = a2 + v68[22];
  *v82 = 0;
  *(v82 + 4) = 1;
  v83 = a2 + v68[23];
  *v83 = 0;
  *(v83 + 4) = 1;
  *(a2 + v68[24]) = 2;
  v84 = (a2 + v68[25]);
  *v84 = 0;
  v84[1] = 0;
  return result;
}

char *sub_22F3C1858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v100 = a2;
  v3 = 0;
  if (*(a1 + 16) && (v4 = sub_22F1229E8(0x6E696F5074697865, 0xEA00000000007374), (v5 & 1) != 0) && (sub_22F13A100(*(v2 + 56) + 32 * v4, &v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v104;
    v7 = v104[2];

    if (v7)
    {
      v8 = 0;
      v9 = v104 + 4;
      v10 = MEMORY[0x277D84F90];
      v101 = v104;
      while (v8 < *(v6 + 16))
      {
        v104 = v9[v8];
        sub_22F3C2518(&v104, &v105);
        v11 = v105;
        v12 = v106;
        v13 = v107;
        if (v105)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_22F13D850(0, *(v10 + 16) + 1, 1, v10);
          }

          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            v10 = sub_22F13D850((v14 > 1), v15 + 1, 1, v10);
          }

          *(v10 + 16) = v15 + 1;
          v16 = (v10 + 24 * v15);
          v16[4] = v11;
          v16[5] = v12;
          v16[6] = v13;
          v6 = v101;
        }

        else
        {
          sub_22F3C315C(0);
        }

        ++v8;
        v2 = a1;
        if (v7 == v8)
        {
          goto LABEL_90;
        }
      }

      __break(1u);
      goto LABEL_98;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_90:
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  v102 = v10;
  if (*(v2 + 16) && (v17 = sub_22F1229E8(0x696F507972746E65, 0xEB0000000073746ELL), (v18 & 1) != 0) && (sub_22F13A100(*(v2 + 56) + 32 * v17, &v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30), (swift_dynamicCast() & 1) != 0))
  {
    v101 = v6;
    v19 = v104;
    v20 = v104[2];
    if (v20)
    {
      v21 = 0;
      v22 = v104 + 4;
      v23 = MEMORY[0x277D84F90];
      while (v21 < *(v19 + 16))
      {
        v104 = v22[v21];
        sub_22F3C2B18(&v104, &v105);
        v24 = v105;
        v25 = v106;
        v26 = v107;
        if (v105)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_22F13D730(0, *(v23 + 2) + 1, 1, v23);
          }

          v10 = *(v23 + 2);
          v27 = *(v23 + 3);
          v28 = v23;
          if (v10 >= v27 >> 1)
          {
            v28 = sub_22F13D730((v27 > 1), v10 + 1, 1, v23);
          }

          *(v28 + 2) = v10 + 1;
          v23 = v28;
          v29 = &v28[24 * v10];
          *(v29 + 4) = v24;
          *(v29 + 10) = v25;
          *(v29 + 6) = v26;
        }

        else
        {
          sub_22F3C315C(0);
        }

        if (v20 == ++v21)
        {
          goto LABEL_92;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
LABEL_79:
      v78 = sub_22F740B90();
      __swift_project_value_buffer(v78, qword_2810B4DC0);

      v79 = sub_22F740B70();
      v80 = sub_22F7415E0();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v105 = v82;
        *v81 = 136315138;
        v83 = sub_22F740CB0();
        v85 = sub_22F145F20(v83, v84, &v105);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_22F0FC000, v79, v80, "Could not parse visualTempo attributes from FlexML analysis dictionary: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x2319033A0](v82, -1, -1);
        MEMORY[0x2319033A0](v81, -1, -1);
      }

      result = 0;
      v86 = 0;
      v87 = v101;
      if (v102)
      {
        goto LABEL_82;
      }

      goto LABEL_118;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_92:

    v2 = a1;
  }

  else
  {

    v23 = 0;
  }

  v101 = v23;
  if (!*(v2 + 16))
  {
    goto LABEL_52;
  }

  v30 = sub_22F1229E8(0x6576456F65646976, 0xEB0000000073746ELL);
  if ((v31 & 1) == 0)
  {
    goto LABEL_52;
  }

  sub_22F13A100(*(v2 + 56) + 32 * v30, &v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4020, &unk_22F78A420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_52;
  }

  v32 = v104;
  if (!v104[2])
  {
    goto LABEL_51;
  }

  v33 = sub_22F1229E8(0x65726F6373, 0xE500000000000000);
  if ((v34 & 1) == 0)
  {
    goto LABEL_51;
  }

  v35 = *(*(v32 + 56) + 8 * v33);

  v37 = sub_22F3C3070(v36);

  if (!v37)
  {
    goto LABEL_51;
  }

  if (!*(v32 + 16) || (v38 = sub_22F1229E8(0x65536E49656D6974, 0xED000073646E6F63), (v39 & 1) == 0))
  {

    goto LABEL_51;
  }

  v40 = *(*(v32 + 56) + 8 * v38);

  v41 = sub_22F3C3070(v40);

  if (!v41)
  {
LABEL_51:

LABEL_52:
    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v51 = sub_22F740B90();
    __swift_project_value_buffer(v51, qword_2810B4DC0);

    v52 = sub_22F740B70();
    v53 = sub_22F7415E0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v105 = v55;
      *v54 = 136315138;
      v56 = sub_22F740CB0();
      v58 = sub_22F145F20(v56, v57, &v105);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_22F0FC000, v52, v53, "Could not parse videoEvents attributes from FlexML analysis dictionary: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x2319033A0](v55, -1, -1);
      MEMORY[0x2319033A0](v54, -1, -1);
    }

    v3 = 0;
    v10 = 0;
    goto LABEL_57;
  }

  if (v37 >> 62)
  {
    v42 = sub_22F741A00();
    if (v42)
    {
      goto LABEL_42;
    }

LABEL_101:

    v3 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  v42 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_101;
  }

LABEL_42:
  v105 = MEMORY[0x277D84F90];
  result = sub_22F1464F4(0, v42 & ~(v42 >> 63), 0);
  if (v42 < 0)
  {
    __break(1u);
    goto LABEL_124;
  }

  v44 = 0;
  v3 = v105;
  do
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x2319016F0](v44, v37);
    }

    else
    {
      v45 = *(v37 + 8 * v44 + 32);
    }

    v46 = v45;
    [v45 floatValue];
    v48 = v47;

    v105 = v3;
    v50 = *(v3 + 16);
    v49 = *(v3 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_22F1464F4((v49 > 1), v50 + 1, 1);
      v3 = v105;
    }

    ++v44;
    *(v3 + 16) = v50 + 1;
    *(v3 + 4 * v50 + 32) = v48;
    v2 = a1;
  }

  while (v42 != v44);

LABEL_102:
  if (v41 >> 62)
  {
    v90 = sub_22F741A00();
    if (v90)
    {
LABEL_104:
      v105 = MEMORY[0x277D84F90];
      result = sub_22F1464F4(0, v90 & ~(v90 >> 63), 0);
      if ((v90 & 0x8000000000000000) == 0)
      {
        v91 = 0;
        v10 = v105;
        do
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x2319016F0](v91, v41);
          }

          else
          {
            v92 = *(v41 + 8 * v91 + 32);
          }

          v93 = v92;
          [v92 floatValue];
          v95 = v94;

          v105 = v10;
          v97 = *(v10 + 16);
          v96 = *(v10 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_22F1464F4((v96 > 1), v97 + 1, 1);
            v10 = v105;
          }

          ++v91;
          *(v10 + 16) = v97 + 1;
          *(v10 + 4 * v97 + 32) = v95;
          v2 = a1;
        }

        while (v90 != v91);

        goto LABEL_57;
      }

LABEL_124:
      __break(1u);
      goto LABEL_125;
    }
  }

  else
  {
    v90 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v90)
    {
      goto LABEL_104;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_57:
  if (!*(v2 + 16) || (v59 = sub_22F1229E8(0x65546C6175736976, 0xEB000000006F706DLL), (v60 & 1) == 0) || (sub_22F13A100(*(v2 + 56) + 32 * v59, &v105), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_78:
    if (qword_2810A9478 == -1)
    {
      goto LABEL_79;
    }

    goto LABEL_99;
  }

  v61 = v104;
  if (!v104[2])
  {
    goto LABEL_77;
  }

  v62 = sub_22F1229E8(0x65756C6176, 0xE500000000000000);
  if ((v63 & 1) == 0)
  {
    goto LABEL_77;
  }

  sub_22F13A100(*(v61 + 56) + 32 * v62, &v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_77;
  }

  v64 = v104;
  if (!*(v61 + 16) || (v65 = sub_22F1229E8(0xD000000000000011, 0x800000022F790090), (v66 & 1) == 0))
  {

    goto LABEL_77;
  }

  sub_22F13A100(*(v61 + 56) + 32 * v65, &v105);

  sub_22F170D8C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_77:

    goto LABEL_78;
  }

  v67 = v104;
  if (!(v64 >> 62))
  {
    v68 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68)
    {
      goto LABEL_68;
    }

LABEL_116:

    v89 = MEMORY[0x277D84F90];
    goto LABEL_117;
  }

  v68 = sub_22F741A00();
  if (!v68)
  {
    goto LABEL_116;
  }

LABEL_68:
  v105 = MEMORY[0x277D84F90];
  result = sub_22F1464F4(0, v68 & ~(v68 >> 63), 0);
  if ((v68 & 0x8000000000000000) == 0)
  {
    v69 = 0;
    v70 = v105;
    do
    {
      v71 = v70;
      if ((v64 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x2319016F0](v69, v64);
      }

      else
      {
        v72 = *(v64 + 8 * v69 + 32);
      }

      v73 = v72;
      [v72 floatValue];
      v75 = v74;

      v70 = v71;
      v105 = v71;
      v76 = *(v71 + 16);
      v77 = *(v70 + 24);
      if (v76 >= v77 >> 1)
      {
        sub_22F1464F4((v77 > 1), v76 + 1, 1);
        v70 = v105;
      }

      ++v69;
      *(v70 + 16) = v76 + 1;
      *(v70 + 4 * v76 + 32) = v75;
    }

    while (v68 != v69);
    v89 = v70;

LABEL_117:
    [v67 floatValue];
    v99 = v98;

    v86 = v99;
    result = v89;
    v87 = v101;
    if (v102)
    {
LABEL_82:
      if (!v87)
      {

        sub_22F18B0F4(v3);

LABEL_120:
        v3 = 0;
        goto LABEL_121;
      }

      if (!v3)
      {

        v87 = 0;
LABEL_121:
        v10 = 0;
        result = 0;
        v86 = 0;
        v88 = 1;
        goto LABEL_122;
      }

      if (result)
      {
        v88 = v102;
LABEL_122:
        *v100 = v88;
        *(v100 + 8) = v87;
        *(v100 + 16) = v3;
        *(v100 + 24) = v10;
        *(v100 + 32) = result;
        *(v100 + 44) = 0;
        *(v100 + 40) = v86;
        return result;
      }

      sub_22F18B0F4(v3);

LABEL_119:

      v87 = 0;
      goto LABEL_120;
    }

LABEL_118:

    sub_22F18B0F4(v3);
    goto LABEL_119;
  }

LABEL_125:
  __break(1u);
  return result;
}

void sub_22F3C2518(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_29;
  }

  v4 = sub_22F1229E8(0x756C61566E696167, 0xE900000000000065);
  if ((v5 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_22F13A100(*(v3 + 56) + 32 * v4, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_28;
  }

  v6 = sub_22F1229E8(0x6C426F5465646166, 0xEB000000006B6361);
  if ((v7 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_22F13A100(*(v3 + 56) + 32 * v6, v51);
  sub_22F170D8C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*(v3 + 16) || (v8 = sub_22F1229E8(0x65536E49656D6974, 0xED000073646E6F63), (v9 & 1) == 0) || (sub_22F13A100(*(v3 + 56) + 32 * v8, v51), (swift_dynamicCast() & 1) == 0))
  {
LABEL_27:

LABEL_28:

    goto LABEL_29;
  }

  if (*(v3 + 16))
  {
    v10 = sub_22F1229E8(0xD000000000000011, 0x800000022F7900B0);
    if (v11)
    {
      sub_22F13A100(*(v3 + 56) + 32 * v10, v51);
      if (swift_dynamicCast())
      {
        if (v50 >> 62)
        {
          v12 = sub_22F741A00();
        }

        else
        {
          v12 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = MEMORY[0x277D84F90];
        if (v12)
        {
          v51[0] = MEMORY[0x277D84F90];
          sub_22F1464F4(0, v12 & ~(v12 >> 63), 0);
          if (v12 < 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
            return;
          }

          v14 = 0;
          v15 = v51[0];
          do
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x2319016F0](v14);
            }

            else
            {
              v16 = *(v50 + 8 * v14 + 32);
            }

            v17 = v16;
            [v16 floatValue];
            v19 = v18;

            v51[0] = v15;
            v21 = *(v15 + 16);
            v20 = *(v15 + 24);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              v48 = v14;
              sub_22F1464F4((v20 > 1), v21 + 1, 1);
              v22 = v21 + 1;
              v15 = v51[0];
            }

            ++v14;
            *(v15 + 16) = v22;
            *(v15 + 4 * v21 + 32) = v19;
          }

          while (v12 != v14);

          v13 = MEMORY[0x277D84F90];
        }

        else
        {

          v15 = MEMORY[0x277D84F90];
        }

        [v50 floatValue];
        v32 = v31;
        [v50 floatValue];
        v34 = v33;
        if (v50 >> 62)
        {
          v35 = v50;
          v36 = sub_22F741A00();
          if (v36)
          {
LABEL_37:
            v49 = v50;
            v51[0] = v13;
            sub_22F1464F4(0, v36 & ~(v36 >> 63), 0);
            if ((v36 & 0x8000000000000000) == 0)
            {
              v37 = 0;
              v13 = v51[0];
              v38 = v35;
              v39 = v35 & 0xC000000000000001;
              v40 = v36;
              do
              {
                if (v39)
                {
                  v41 = MEMORY[0x2319016F0](v37, v38);
                }

                else
                {
                  v41 = *(v38 + 8 * v37 + 32);
                }

                v42 = v41;
                [v41 floatValue];
                v44 = v43;

                v51[0] = v13;
                v46 = *(v13 + 16);
                v45 = *(v13 + 24);
                v47 = v46 + 1;
                if (v46 >= v45 >> 1)
                {
                  sub_22F1464F4((v45 > 1), v46 + 1, 1);
                  v47 = v46 + 1;
                  v13 = v51[0];
                }

                ++v37;
                *(v13 + 16) = v47;
                *(v13 + 4 * v46 + 32) = v44;
                v38 = v50;
              }

              while (v40 != v37);

              goto LABEL_49;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v35 = v50;
          v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_37;
          }
        }

LABEL_49:
        *a2 = v15;
        a2[1] = v32 | (v34 << 32);
        a2[2] = v13;
        return;
      }

      goto LABEL_27;
    }
  }

LABEL_29:
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4DC0);

  v24 = sub_22F740B70();
  v25 = sub_22F7415E0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51[0] = v27;
    *v26 = 136315138;
    v28 = sub_22F740CB0();
    v30 = sub_22F145F20(v28, v29, v51);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22F0FC000, v24, v25, "Could not parse expected attributes from FlexML exit points dictionary: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x2319033A0](v27, -1, -1);
    MEMORY[0x2319033A0](v26, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_22F3C2B18(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_22F1229E8(0x756C61566E696167, 0xE900000000000065);
    if (v5)
    {
      sub_22F13A100(*(v3 + 56) + 32 * v4, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
      if (swift_dynamicCast())
      {
        v6 = v51;
        if (*(v3 + 16))
        {
          v7 = sub_22F1229E8(0x65536E49656D6974, 0xED000073646E6F63);
          if (v8)
          {
            sub_22F13A100(*(v3 + 56) + 32 * v7, v50);
            sub_22F170D8C();
            if (swift_dynamicCast())
            {
              v9 = v51;
              if (*(v3 + 16))
              {
                v10 = sub_22F1229E8(0xD000000000000011, 0x800000022F7900B0);
                if (v11)
                {
                  sub_22F13A100(*(v3 + 56) + 32 * v10, v50);
                  if (swift_dynamicCast())
                  {
                    v12 = v51;
                    if (v6 >> 62)
                    {
                      v13 = sub_22F741A00();
                    }

                    else
                    {
                      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v14 = MEMORY[0x277D84F90];
                    v49 = v12;
                    if (v13)
                    {
                      v15 = v9;
                      v50[0] = MEMORY[0x277D84F90];
                      sub_22F1464F4(0, v13 & ~(v13 >> 63), 0);
                      if (v13 < 0)
                      {
                        __break(1u);
LABEL_46:
                        __break(1u);
                        return;
                      }

                      v16 = 0;
                      v17 = v50[0];
                      do
                      {
                        if ((v6 & 0xC000000000000001) != 0)
                        {
                          v18 = MEMORY[0x2319016F0](v16, v6);
                        }

                        else
                        {
                          v18 = v6[v16 + 4];
                        }

                        v19 = v18;
                        [v18 floatValue];
                        v21 = v20;

                        v50[0] = v17;
                        v23 = *(v17 + 16);
                        v22 = *(v17 + 24);
                        v24 = v23 + 1;
                        if (v23 >= v22 >> 1)
                        {
                          v47 = v16;
                          sub_22F1464F4((v22 > 1), v23 + 1, 1);
                          v24 = v23 + 1;
                          v17 = v50[0];
                        }

                        ++v16;
                        *(v17 + 16) = v24;
                        *(v17 + 4 * v23 + 32) = v21;
                      }

                      while (v13 != v16);

                      v9 = v15;
                      v12 = v49;
                      v14 = MEMORY[0x277D84F90];
                    }

                    else
                    {

                      v17 = MEMORY[0x277D84F90];
                    }

                    [v9 floatValue];
                    v34 = v33;
                    if (v12 >> 62)
                    {
                      v35 = sub_22F741A00();
                      if (v35)
                      {
LABEL_32:
                        v48 = v9;
                        v50[0] = v14;
                        sub_22F1464F4(0, v35 & ~(v35 >> 63), 0);
                        if ((v35 & 0x8000000000000000) == 0)
                        {
                          v36 = 0;
                          v37 = v50[0];
                          v38 = v12;
                          v39 = v12 & 0xC000000000000001;
                          do
                          {
                            if (v39)
                            {
                              v40 = MEMORY[0x2319016F0](v36, v38);
                            }

                            else
                            {
                              v40 = *(v38 + 8 * v36 + 32);
                            }

                            v41 = v40;
                            [v40 floatValue];
                            v43 = v42;

                            v50[0] = v37;
                            v45 = *(v37 + 16);
                            v44 = *(v37 + 24);
                            v46 = v45 + 1;
                            if (v45 >= v44 >> 1)
                            {
                              sub_22F1464F4((v44 > 1), v45 + 1, 1);
                              v46 = v45 + 1;
                              v37 = v50[0];
                            }

                            ++v36;
                            *(v37 + 16) = v46;
                            *(v37 + 4 * v45 + 32) = v43;
                            v38 = v49;
                          }

                          while (v35 != v36);

                          goto LABEL_44;
                        }

                        goto LABEL_46;
                      }
                    }

                    else
                    {
                      v35 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v35)
                      {
                        goto LABEL_32;
                      }
                    }

                    v37 = MEMORY[0x277D84F90];
LABEL_44:
                    *a2 = v17;
                    a2[1] = v34;
                    a2[2] = v37;
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v25 = sub_22F740B90();
  __swift_project_value_buffer(v25, qword_2810B4DC0);

  v26 = sub_22F740B70();
  v27 = sub_22F7415E0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50[0] = v29;
    *v28 = 136315138;
    v30 = sub_22F740CB0();
    v32 = sub_22F145F20(v30, v31, v50);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22F0FC000, v26, v27, "Could not parse expected attributes from FlexML entry points dictionary: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2319033A0](v29, -1, -1);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}