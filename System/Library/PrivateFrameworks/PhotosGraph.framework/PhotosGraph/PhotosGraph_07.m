BOOL sub_22F16E4B0()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v17 + 16))
        {
          v4 = sub_22F1229E8(0x7374736567677573, 0xEF676E6972616853);
          if (v5)
          {
            sub_22F13A100(*(*&v17 + 56) + 32 * v4, v18);
            if (swift_dynamicCast())
            {

              return *&v17 == 1;
            }
          }
        }

        if (*(*&v17 + 16) && (v7 = sub_22F1229E8(0x7374736567677573, 0xEF676E6972616853), (v8 & 1) != 0))
        {
          sub_22F13A100(*(*&v17 + 56) + 32 * v7, v18);

          if (swift_dynamicCast())
          {
            return v17 == 1.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_27DAD0E10);

  v10 = sub_22F740B70();
  v11 = sub_22F7415E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v14 = sub_22F742010();
    v16 = sub_22F145F20(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find suggestsSharing for event at %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  return 0;
}

BOOL sub_22F16E7C4()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    goto LABEL_16;
  }

  v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(*&v19 + 16))
  {
    goto LABEL_15;
  }

  v4 = sub_22F1229E8(0x4C746E6572727563, 0xEF6E6F697461636FLL);
  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22F13A100(*(*&v19 + 56) + 32 * v4, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(*&v19 + 16))
  {
    v6 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
    if (v7)
    {
      sub_22F13A100(*(*&v19 + 56) + 32 * v6, v20);
      if (swift_dynamicCast())
      {

        return *&v19 == 1;
      }
    }
  }

  if (!*(*&v19 + 16) || (v9 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770), (v10 & 1) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_22F13A100(*(*&v19 + 56) + 32 * v9, v20);

  if (swift_dynamicCast())
  {
    return v19 == 1.0;
  }

LABEL_16:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v11 = sub_22F740B90();
  __swift_project_value_buffer(v11, qword_27DAD0E10);

  v12 = sub_22F740B70();
  v13 = sub_22F7415E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260]);
    v16 = sub_22F742010();
    v18 = sub_22F145F20(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22F0FC000, v12, v13, "[SharedLibrarySimulationEvent] Could not find currentLocationIsValid for event at %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319033A0](v15, -1, -1);
    MEMORY[0x2319033A0](v14, -1, -1);
  }

  return 0;
}

char *sub_22F16EB3C()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v25 + 16))
  {
    goto LABEL_32;
  }

  v4 = sub_22F1229E8(0xD00000000000001CLL, 0x800000022F78F7B0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_22F13A100(*(v25 + 56) + 32 * v4, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(v25 + 16);
  if (!v6)
  {
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v24 = MEMORY[0x277D84F90];
  v7 = 32;
  do
  {
    v8 = *(v25 + v7);
    v9 = *(v8 + 16);

    v10 = 0.0;
    if (v9)
    {
      v11 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v12)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v11, v26);
        if (swift_dynamicCast())
        {
          v10 = v25;
        }
      }
    }

    if (*(v8 + 16))
    {
      v13 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v14)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v13, v26);
        if (swift_dynamicCast())
        {
          v10 = *&v25;
        }
      }
    }

    if (*(v8 + 16) && (v15 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F790), (v16 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v15, v26), (swift_dynamicCast() & 1) != 0) && *(v8 + 16) && (v17 = sub_22F1229E8(0x737569646172, 0xE600000000000000), (v18 & 1) != 0))
    {
      sub_22F13A100(*(v8 + 56) + 32 * v17, v26);

      if ((swift_dynamicCast() & 1) != 0 && v10 == 1.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22F13E3E8(0, *(v24 + 2) + 1, 1, v24);
        }

        v19 = v24;
        v21 = *(v24 + 2);
        v20 = *(v24 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_22F13E3E8((v20 > 1), v21 + 1, 1, v24);
        }

        *(v19 + 2) = v21 + 1;
        v24 = v19;
        v22 = &v19[16 * v21];
        *(v22 + 4) = v25;
        *(v22 + 5) = v25;
      }
    }

    else
    {
    }

    v7 += 8;
    --v6;
  }

  while (v6);

  return v24;
}

char *sub_22F16EEC4()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v25 + 16))
  {
    goto LABEL_32;
  }

  v4 = sub_22F1229E8(0xD000000000000018, 0x800000022F78F750);
  if ((v5 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_22F13A100(*(v25 + 56) + 32 * v4, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(v25 + 16);
  if (!v6)
  {
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v24 = MEMORY[0x277D84F90];
  v7 = 32;
  do
  {
    v8 = *(v25 + v7);
    v9 = *(v8 + 16);

    v10 = 0.0;
    if (v9)
    {
      v11 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v12)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v11, v26);
        if (swift_dynamicCast())
        {
          v10 = v25;
        }
      }
    }

    if (*(v8 + 16))
    {
      v13 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v14)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v13, v26);
        if (swift_dynamicCast())
        {
          v10 = *&v25;
        }
      }
    }

    if (*(v8 + 16) && (v15 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F790), (v16 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v15, v26), (swift_dynamicCast() & 1) != 0) && *(v8 + 16) && (v17 = sub_22F1229E8(0x737569646172, 0xE600000000000000), (v18 & 1) != 0))
    {
      sub_22F13A100(*(v8 + 56) + 32 * v17, v26);

      if ((swift_dynamicCast() & 1) != 0 && v10 == 1.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22F13E3E8(0, *(v24 + 2) + 1, 1, v24);
        }

        v19 = v24;
        v21 = *(v24 + 2);
        v20 = *(v24 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_22F13E3E8((v20 > 1), v21 + 1, 1, v24);
        }

        *(v19 + 2) = v21 + 1;
        v24 = v19;
        v22 = &v19[16 * v21];
        *(v22 + 4) = v25;
        *(v22 + 5) = v25;
      }
    }

    else
    {
    }

    v7 += 8;
    --v6;
  }

  while (v6);

  return v24;
}

uint64_t sub_22F16F24C()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_mdataFilePath;
  v3 = sub_22F73F470();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_name + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PGSharedLibrarySimulationEvent()
{
  result = qword_27DAB1610;
  if (!qword_27DAB1610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F16F380()
{
  result = sub_22F73F470();
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

uint64_t sub_22F16F480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static RecentlyUsedRanker.score(song:recentlyUsedSongs:currentDate:)(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (!*(v12 + 16))
  {
    return swift_endAccess();
  }

  v13 = sub_22F1229E8(v10, v9);
  if ((v14 & 1) == 0)
  {
    return swift_endAccess();
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  result = swift_endAccess();
  v17 = *(v15 + 16);
  if (v17)
  {
    (*(v5 + 16))(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v17 - 1), v4, 1.0);
    sub_22F73F590();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22F16F69C(uint64_t isUniquelyReferenced_nonNull_native, uint64_t *a2, uint64_t a3)
{
  v70 = a3;
  v59 = type metadata accessor for Song();
  v65 = *(v59 - 8);
  v6 = *(v65 + 64);
  v7 = MEMORY[0x28223BE20](v59);
  v81 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v58 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v71 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v58 - v15);
  v64 = sub_22F73F690();
  v17 = *(v64 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v64);
  v61 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (&v58 - v21);
  if (qword_2810A9B08 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v23 = qword_2810B4E08;
  *&v24 = CACurrentMediaTime();
  sub_22F1B560C("Recently Used Ranker", 20, 2u, v24, 0, v23, v80);
  v69 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs);
  v63 = v22;
  sub_22F73F680();
  v25 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
  v26 = ~v25;
  v27 = *(isUniquelyReferenced_nonNull_native + 56);
  v28 = -v25;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v74 = isUniquelyReferenced_nonNull_native;
  v75 = isUniquelyReferenced_nonNull_native + 56;
  v76 = v26;
  v77 = 0;
  v78 = v29 & v27;
  v79 = 0;
  v68 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  v60 = v17 + 16;
  v62 = (v17 + 8);

  v22 = MEMORY[0x277D84F98];
  v67 = isUniquelyReferenced_nonNull_native;
  v66 = v17;
  while (1)
  {
    v30 = v71;
    sub_22F3D4140(v71);
    sub_22F16FDD4(v30, v16);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
    if ((*(*(v31 - 8) + 48))(v16, 1, v31) == 1)
    {
      sub_22F0FF590();
      sub_22F1B2BBC(0);
      sub_22F7416A0();
      (*v62)(v63, v64);

      if (v3)
      {
      }

      goto LABEL_29;
    }

    v72 = *v16;
    sub_22F15CB04(v16 + *(v31 + 48), v10);
    sub_22F15CAA0(v10, v81);
    v32 = *v10;
    v33 = v10[1];
    v34 = v69;
    v35 = v68;
    swift_beginAccess();
    v36 = *(v34 + v35);
    if (*(v36 + 16) && (v37 = sub_22F1229E8(v32, v33), (v38 & 1) != 0))
    {
      v39 = *(*(v36 + 56) + 8 * v37);
      swift_endAccess();
      v40 = *(v39 + 16);
      v41 = 1.0;
      if (v40)
      {
        v42 = v61;
        v43 = v64;
        (*(v17 + 16))(v61, v39 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v40 - 1), v64);
        sub_22F73F590();
        v45 = fabs(v44);
        (*(v17 + 8))(v42, v43);
        if (v45 < 5184000.0)
        {
          v41 = v45 / 5184000.0;
        }
      }
    }

    else
    {
      swift_endAccess();
      v41 = 1.0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v22;
    a2 = v22;
    v17 = sub_22F122A14(v81);
    v47 = v22[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_2;
    }

    v50 = v46;
    if (v22[3] < v49)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v73;
      if (v46)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_22F134678();
      isUniquelyReferenced_nonNull_native = v73;
      if (v50)
      {
LABEL_20:
        *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v17) = v41;
        sub_22F15CBD8(v81);
        goto LABEL_24;
      }
    }

LABEL_22:
    *(isUniquelyReferenced_nonNull_native + 8 * (v17 >> 6) + 64) |= 1 << v17;
    a2 = v81;
    sub_22F15CAA0(v81, *(isUniquelyReferenced_nonNull_native + 48) + *(v65 + 72) * v17);
    *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v17) = v41;
    sub_22F15CBD8(a2);
    v53 = *(isUniquelyReferenced_nonNull_native + 16);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_31;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v55;
LABEL_24:
    v56 = *(v67 + 16);
    sub_22F741680();
    v17 = v66;
    if (v3)
    {

      sub_22F0FF590();
      (*v62)(v63, v64);
      sub_22F15CBD8(v10);
LABEL_29:

      return v22;
    }

    sub_22F15CBD8(v10);
    v22 = isUniquelyReferenced_nonNull_native;
  }

  sub_22F125F5C(v49, isUniquelyReferenced_nonNull_native);
  v51 = sub_22F122A14(v81);
  if ((v50 & 1) == (v52 & 1))
  {
    v17 = v51;
    isUniquelyReferenced_nonNull_native = v73;
    if (v50)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F16FDD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F16FE58()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22F16FE88(unint64_t a1, uint64_t a2)
{

  v46 = a2;
  v47 = sub_22F1515F8(a2);

  v55 = MEMORY[0x277D84F90];
  v45 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_45:
    v4 = sub_22F741A00();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v51 = a1 & 0xFFFFFFFFFFFFFF8;
      v52 = a1 & 0xC000000000000001;
      v49 = a1;
      v50 = a1 + 32;
      v48 = v4;
      while (1)
      {
        if (v52)
        {
          v7 = MEMORY[0x2319016F0](v5, a1);
          v8 = __OFADD__(v5, 1);
          v9 = v5 + 1;
          if (v8)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            v33 = v55;
            goto LABEL_47;
          }
        }

        else
        {
          if (v5 >= *(v51 + 16))
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v6 = *(v50 + 8 * v5);
          v7 = swift_unknownObjectRetain();
          v8 = __OFADD__(v5, 1);
          v9 = v5 + 1;
          if (v8)
          {
            goto LABEL_37;
          }
        }

        v53 = v9;
        v10 = [v7 weightedKeywords];
        sub_22F170D8C();
        v11 = sub_22F740CA0();

        v12 = 1 << *(v11 + 32);
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v14 = v13 & *(v11 + 64);
        v15 = (v12 + 63) >> 6;

        v16 = 0;
        v17 = MEMORY[0x277D84F90];
        while (v14)
        {
LABEL_19:
          v19 = (*(v11 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
          v21 = *v19;
          v20 = v19[1];
          v54[0] = v21;
          v54[1] = v20;
          sub_22F160DE4();
          v22 = sub_22F7418B0();
          v23 = *(v22 + 16);
          a1 = *(v17 + 2);
          v24 = a1 + v23;
          if (__OFADD__(a1, v23))
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v25 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v24 > *(v17 + 3) >> 1)
          {
            if (a1 <= v24)
            {
              v27 = a1 + v23;
            }

            else
            {
              v27 = a1;
            }

            v17 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v27, 1, v17);
          }

          v14 &= v14 - 1;
          if (*(v25 + 16))
          {
            if ((*(v17 + 3) >> 1) - *(v17 + 2) < v23)
            {
              goto LABEL_42;
            }

            swift_arrayInitWithCopy();

            if (v23)
            {
              v28 = *(v17 + 2);
              v8 = __OFADD__(v28, v23);
              v29 = v28 + v23;
              if (v8)
              {
                goto LABEL_43;
              }

              *(v17 + 2) = v29;
            }
          }

          else
          {

            if (v23)
            {
              goto LABEL_41;
            }
          }
        }

        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v18 >= v15)
          {
            break;
          }

          v14 = *(v11 + 64 + 8 * v18);
          ++v16;
          if (v14)
          {
            v16 = v18;
            goto LABEL_19;
          }
        }

        if (*(v17 + 2))
        {
          v30 = sub_22F1515F8(v17);

          v31 = *(sub_22F1ABBB4(v47, v30) + 16);

          a1 = v49;
          v5 = v53;
          if (v31)
          {
            sub_22F741BA0();
            v32 = *(v55 + 16);
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
          a1 = v49;
          v5 = v53;
        }

        if (v5 == v48)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_47:

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v34 = sub_22F740B90();
  __swift_project_value_buffer(v34, qword_2810B4D90);

  v35 = sub_22F740B70();
  v36 = sub_22F7415C0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54[0] = v38;
    *v37 = 134218498;
    if (v45)
    {
      v39 = sub_22F741A00();
    }

    else
    {
      v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v39;

    *(v37 + 12) = 2048;
    if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
    {
      v40 = sub_22F741A00();
    }

    else
    {
      v40 = *(v33 + 16);
    }

    *(v37 + 14) = v40;

    *(v37 + 22) = 2080;
    v41 = MEMORY[0x231900D40](v46, MEMORY[0x277D837D0]);
    v43 = sub_22F145F20(v41, v42, v54);

    *(v37 + 24) = v43;
    _os_log_impl(&dword_22F0FC000, v35, v36, "[FlexSongsFilter keep] Songs before: %ld, Songs after: %ld withAnyMatchingKeywords: %s", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2319033A0](v38, -1, -1);
    MEMORY[0x2319033A0](v37, -1, -1);
  }

  else
  {
  }

  return v33;
}

uint64_t sub_22F1703D8(unint64_t a1, uint64_t a2)
{

  v47 = a2;
  v48 = sub_22F1515F8(a2);

  v56 = MEMORY[0x277D84F90];
  v46 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_46:
    v4 = sub_22F741A00();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v52 = a1 & 0xFFFFFFFFFFFFFF8;
      v53 = a1 & 0xC000000000000001;
      v50 = a1;
      v51 = a1 + 32;
      v49 = v4;
      while (1)
      {
        if (v53)
        {
          v8 = MEMORY[0x2319016F0](v5, a1);
          v9 = __OFADD__(v5, 1);
          v10 = v5 + 1;
          if (v9)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            v34 = v56;
            goto LABEL_48;
          }
        }

        else
        {
          if (v5 >= *(v52 + 16))
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v7 = *(v51 + 8 * v5);
          v8 = swift_unknownObjectRetain();
          v9 = __OFADD__(v5, 1);
          v10 = v5 + 1;
          if (v9)
          {
            goto LABEL_38;
          }
        }

        v54 = v10;
        v11 = [v8 weightedKeywords];
        sub_22F170D8C();
        v12 = sub_22F740CA0();

        v13 = 1 << *(v12 + 32);
        if (v13 < 64)
        {
          v14 = ~(-1 << v13);
        }

        else
        {
          v14 = -1;
        }

        v15 = v14 & *(v12 + 64);
        v16 = (v13 + 63) >> 6;

        v17 = 0;
        v18 = MEMORY[0x277D84F90];
        while (v15)
        {
LABEL_19:
          v20 = (*(v12 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v15)))));
          v22 = *v20;
          v21 = v20[1];
          v55[0] = v22;
          v55[1] = v21;
          sub_22F160DE4();
          v23 = sub_22F7418B0();
          v24 = *(v23 + 16);
          a1 = *(v18 + 2);
          v25 = a1 + v24;
          if (__OFADD__(a1, v24))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v26 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v25 > *(v18 + 3) >> 1)
          {
            if (a1 <= v25)
            {
              v28 = a1 + v24;
            }

            else
            {
              v28 = a1;
            }

            v18 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v28, 1, v18);
          }

          v15 &= v15 - 1;
          if (*(v26 + 16))
          {
            if ((*(v18 + 3) >> 1) - *(v18 + 2) < v24)
            {
              goto LABEL_43;
            }

            swift_arrayInitWithCopy();

            if (v24)
            {
              v29 = *(v18 + 2);
              v9 = __OFADD__(v29, v24);
              v30 = v29 + v24;
              if (v9)
              {
                goto LABEL_44;
              }

              *(v18 + 2) = v30;
            }
          }

          else
          {

            if (v24)
            {
              goto LABEL_42;
            }
          }
        }

        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v19 >= v16)
          {
            break;
          }

          v15 = *(v12 + 64 + 8 * v19);
          ++v17;
          if (v15)
          {
            v17 = v19;
            goto LABEL_19;
          }
        }

        if (*(v18 + 2))
        {
          v31 = sub_22F1515F8(v18);

          v32 = sub_22F360C78(v48, v31);

          a1 = v50;
          v5 = v54;
          if (v32)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            sub_22F741BA0();
            v33 = *(v56 + 16);
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
          }

          v6 = v49;
        }

        else
        {

          swift_unknownObjectRelease();
          v6 = v49;
          a1 = v50;
          v5 = v54;
        }

        if (v5 == v6)
        {
          goto LABEL_39;
        }
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_48:

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
    v39 = swift_slowAlloc();
    v55[0] = v39;
    *v38 = 134218498;
    if (v46)
    {
      v40 = sub_22F741A00();
    }

    else
    {
      v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v38 + 4) = v40;

    *(v38 + 12) = 2048;
    if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
    {
      v41 = sub_22F741A00();
    }

    else
    {
      v41 = *(v34 + 16);
    }

    *(v38 + 14) = v41;

    *(v38 + 22) = 2080;
    v42 = MEMORY[0x231900D40](v47, MEMORY[0x277D837D0]);
    v44 = sub_22F145F20(v42, v43, v55);

    *(v38 + 24) = v44;
    _os_log_impl(&dword_22F0FC000, v36, v37, "[FlexSongsFilter drop] Songs before: %ld, Songs after: %ld withOnlyMatchingKeywords: %s", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x2319033A0](v39, -1, -1);
    MEMORY[0x2319033A0](v38, -1, -1);
  }

  else
  {
  }

  return v34;
}

uint64_t sub_22F170930(unint64_t a1)
{
  v2 = sub_22F7406F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  v7 = qword_2810B4DD8;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("FlexCelebrationEventsFilter", 27, 2u, v8, 0, v7, v16);
  sub_22F7406E0();
  v9 = sub_22F7406C0();
  v10 = sub_22F7406D0();
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v9 = *(v10 + 16);
  if (!v9)
  {

    v11 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v11 = sub_22F10B348(*(v10 + 16), 0);
  v12 = sub_22F11A438(&v15, v11 + 4, v9, v10);
  sub_22F1534EC();
  if (v12 == v9)
  {
LABEL_9:
    v13 = sub_22F16FE88(a1, v11);

    goto LABEL_10;
  }

  __break(1u);
LABEL_7:

  v13 = sub_22F1703D8(a1, v9);

LABEL_10:
  (*(v3 + 8))(v6, v2);
  sub_22F1B2BBC(0);

  return v13;
}

char *sub_22F170B4C(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___PGFlexMusicCurationParameters_features);
  if (v2)
  {
    v22 = a1;
    v3 = *(v2 + OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v6)
    {
LABEL_11:
      v12 = (*(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
      v23 = *v12;
      v24 = v12[1];

      sub_22F7401A0();
      sub_22F160DE4();
      v13 = sub_22F7418B0();

      v14 = *(v13 + 16);
      v15 = *(v10 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_26;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v16 > *(v10 + 3) >> 1)
      {
        if (v15 <= v16)
        {
          v17 = v15 + v14;
        }

        else
        {
          v17 = v15;
        }

        result = sub_22F13E1A8(result, v17, 1, v10);
        v10 = result;
      }

      v6 &= v6 - 1;
      if (*(v13 + 16))
      {
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v14)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = *(v10 + 2);
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_29;
          }

          *(v10 + 2) = v20;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_27;
        }
      }
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        a1 = v22;
        goto LABEL_24;
      }

      v6 = *(v3 + 64 + 8 * v11);
      ++v9;
      if (v6)
      {
        v9 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_24:
    v21 = sub_22F170930(a1);

    return v21;
  }

  return result;
}

unint64_t sub_22F170D8C()
{
  result = qword_2810A8ED0;
  if (!qword_2810A8ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8ED0);
  }

  return result;
}

uint64_t static EventElector.memoryUniqueIdentifiersToElect(graph:electionMode:)(void *a1, uint64_t a2, uint64_t a3)
{

  result = sub_22F171514(a2, a3);
  if (!v3)
  {
    v8 = result;
    v9 = sub_22F17173C(a1, result);
    v10 = sub_22F171DF4(a1, v8);
    return sub_22F144608(v10, v9);
  }

  return result;
}

void sub_22F170F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, void *a8)
{
  v28 = a2;
  v14 = objc_allocWithZone(PGGraphMemoryNodeCollection);
  v15 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v16 = [v14 initWithGraph:a6 elementIdentifiers:v15];

  v17 = [v16 elementIdentifiers];
  v18 = [a5 targetsForSources_];

  v31 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a6 elementIdentifiers:v18];
  v19 = [v31 anyNode];
  if (v19)
  {
    v30 = v19;
    if (a7 == 1)
    {
    }

    else
    {
      v21 = sub_22F742040();

      if ((v21 & 1) == 0)
      {
        if (a7)
        {
          v26 = sub_22F742040();

          if ((v26 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        if ([v30 isPartOfTrip] & 1) != 0 || (objc_msgSend(v30, sel_happensAtFrequentLocation))
        {
          goto LABEL_28;
        }
      }
    }

    [a8 neighborScoreWithMomentNode_];
    v23 = [objc_opt_self() breakoutOfRoutineTypeWithNeighborScore_];
    if (a7)
    {
      v24 = sub_22F742040();

      if (v24)
      {
        goto LABEL_16;
      }

      if (a7 == 2)
      {
        v25 = sub_22F742040();

        if ((v25 & 1) != 0 && v23 == 2)
        {
          goto LABEL_17;
        }

LABEL_20:
        v27 = sub_22F742040();

        if (v27)
        {
          goto LABEL_21;
        }

LABEL_28:

        v20 = v30;
        goto LABEL_29;
      }
    }

LABEL_16:
    if (v23 == 2)
    {
      goto LABEL_17;
    }

    if (a7 == 1)
    {

LABEL_21:
      if (v23 != 1 || ([v30 isPartOfTrip] & 1) != 0 || (objc_msgSend(v30, sel_happensAtFrequentLocation) & 1) != 0)
      {
        goto LABEL_28;
      }

LABEL_17:
      swift_beginAccess();

      sub_22F10BBDC(&v32, v29, a3);
      swift_endAccess();

      return;
    }

    goto LABEL_20;
  }

  v20 = v31;
LABEL_29:
}

uint64_t sub_22F1713B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_22F740E20();
  v10 = v9;

  v7(a2, v8, v10, a4);
}

id EventElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventElector.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventElector();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EventElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventElector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F171514(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2 == 0xE000000000000000 || (sub_22F742040() & 1) != 0)
  {
    goto LABEL_17;
  }

  v4 = *MEMORY[0x277D3B1F0];
  if (sub_22F740E20() == a1 && v5 == a2)
  {
    goto LABEL_16;
  }

  v7 = sub_22F742040();

  if (v7)
  {
    goto LABEL_17;
  }

  v8 = *MEMORY[0x277D3B1F8];
  if (sub_22F740E20() == a1 && v9 == a2)
  {
    goto LABEL_16;
  }

  v11 = sub_22F742040();

  if (v11)
  {
    goto LABEL_17;
  }

  v12 = *MEMORY[0x277D3B1E8];
  if (sub_22F740E20() == a1 && v13 == a2)
  {
LABEL_16:
  }

  else
  {
    v16 = sub_22F742040();

    if ((v16 & 1) == 0)
    {
      sub_22F741B00();

      MEMORY[0x231900B10](a1, a2);

      MEMORY[0x231900B10](0xD000000000000016, 0x800000022F78F9D0);
      sub_22F172030();
      swift_allocError();
      *v17 = 0xD000000000000011;
      v17[1] = 0x800000022F78F9B0;
      return swift_willThrow();
    }
  }

LABEL_17:
  v14 = sub_22F741E30();

  if (v14 == 2)
  {
    return 2;
  }

  else
  {
    return v14 == 1;
  }
}

uint64_t sub_22F17173C(uint64_t a1, unsigned __int8 a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = [objc_opt_self() memoryNodesOfCategory:1 inGraph:a1];
  if (a2 > 1u)
  {

    goto LABEL_6;
  }

  v6 = sub_22F742040();

  if (v6)
  {
LABEL_6:
    v21 = [v5 uniqueMemoryIdentifiers];
    v22 = sub_22F741420();

    return v22;
  }

  v24 = [objc_allocWithZone(PGNeighborScoreComputer) init];
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 momentOfMemory];
  v10 = [objc_msgSend(v8 graph)];
  swift_unknownObjectRelease();
  v11 = [v10 concreteGraph];

  if (v11)
  {
    v12 = [v8 elementIdentifiers];
    v13 = [v11 adjacencyWithSources:v12 relation:v9];

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    *(v14 + 32) = a2;
    v15 = v24;
    *(v14 + 40) = v24;
    *(v14 + 48) = v4;
    aBlock[4] = sub_22F171FE8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F1713B0;
    aBlock[3] = &block_descriptor_1;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    swift_unknownObjectRetain();
    v18 = v15;

    [v8 enumerateMemoryUniqueIdentifierUsingBlock_];
    _Block_release(v16);

    swift_unknownObjectRelease();
    swift_beginAccess();
    v19 = *(v4 + 16);

    return v19;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F171B10(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F772AE0;
  *(v2 + 32) = sub_22F740E20();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_22F740E20();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_22F740E20();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_22F740E20();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_22F740E20();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_22F740E20();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_22F740E20();
  *(v2 + 136) = v9;
  *(v2 + 144) = sub_22F740E20();
  *(v2 + 152) = v10;
  *(v2 + 160) = sub_22F740E20();
  *(v2 + 168) = v11;
  *(v2 + 176) = sub_22F740E20();
  *(v2 + 184) = v12;
  *(v2 + 192) = sub_22F740E20();
  *(v2 + 200) = v13;
  *(v2 + 208) = sub_22F740E20();
  *(v2 + 216) = v14;
  if (a1 == 1)
  {

LABEL_4:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F770E00;
    *(inited + 32) = sub_22F740E20();
    *(inited + 40) = v17;
    *(inited + 48) = sub_22F740E20();
    *(inited + 56) = v18;
    *(inited + 64) = sub_22F740E20();
    *(inited + 72) = v19;
    *(inited + 80) = sub_22F740E20();
    *(inited + 88) = v20;
    *(inited + 96) = sub_22F740E20();
    *(inited + 104) = v21;
    *(inited + 112) = sub_22F740E20();
    *(inited + 120) = v22;
    *(inited + 128) = sub_22F740E20();
    *(inited + 136) = v23;
    *(inited + 144) = sub_22F740E20();
    *(inited + 152) = v24;
    *(inited + 160) = sub_22F740E20();
    *(inited + 168) = v25;
    *(inited + 176) = sub_22F740E20();
    *(inited + 184) = v26;
    sub_22F144A14(inited);
    return v2;
  }

  v15 = sub_22F742040();

  if (v15)
  {
    goto LABEL_4;
  }

  return v2;
}

uint64_t sub_22F171DF4(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {

    goto LABEL_5;
  }

  v4 = sub_22F742040();

  if (v4)
  {
LABEL_5:
    v7 = [a1 meaningNodes];
    goto LABEL_6;
  }

  sub_22F171B10(a2);
  v5 = objc_opt_self();
  v6 = sub_22F741160();

  v7 = [v5 meaningNodesWithMeaningLabels:v6 inGraph:a1];

LABEL_6:
  v8 = [v7 featureNodeCollection];
  v9 = [v8 memoryNodes];
  v10 = [v9 subsetWithMemoryCategory_];

  v11 = [v10 uniqueMemoryIdentifiers];
  v12 = sub_22F741420();

  return v12;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F172030()
{
  result = qword_27DAB1638;
  if (!qword_27DAB1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1638);
  }

  return result;
}

uint64_t sub_22F172094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73F690();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_22F173D18();
        v21 = sub_22F740DB0();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

unint64_t sub_22F172314(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

uint64_t sub_22F172438@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22F73F690();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v41 - v16;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  if (v20)
  {
    v41 = a2;
    v21 = 0;
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = (v18 + 63) >> 6;
LABEL_9:
    v27 = v14[9];
    v28 = *(a1 + 48) + v27 * v22;
    v29 = v14[2];
    v42 = v14;
    v43 = v29;
    v44 = v14 + 2;
    v45 = v27;
    (v29)(v12, v28, v4, v15);
    v31 = v42 + 4;
    v30 = v42[4];
    v30(v48, v12, v4);
    v47 = a1;

    if (v23)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v33 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v33 >= v24)
      {

        v39 = v41;
        v30(v41, v48, v4);
        return (v42[7])(v39, 0, 1, v4);
      }

      v23 = *(v17 + 8 * v33);
      ++v21;
      if (v23)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v35 = v46;
          v43(v46, *(v47 + 48) + (v34 | (v33 << 6)) * v45, v4);
          v30(v9, v35, v4);
          sub_22F173D18();
          v36 = v48;
          v37 = sub_22F740DB0();
          v38 = *(v31 - 3);
          if (v37)
          {
            v38(v36, v4);
            result = (v30)(v36, v9, v4);
            v21 = v33;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v38)(v9, v4);
            v21 = v33;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v33 = v21;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v25 = 0;
    v24 = (v18 + 63) >> 6;
    while (v24 - 1 != v20)
    {
      v21 = v20 + 1;
      v26 = *(a1 + 64 + 8 * v20);
      v25 -= 64;
      ++v20;
      if (v26)
      {
        v41 = a2;
        v23 = (v26 - 1) & v26;
        v22 = __clz(__rbit64(v26)) - v25;
        goto LABEL_9;
      }
    }

    v40 = v14[7];

    return v40(a2, 1, 1, v4, v15);
  }

  return result;
}

id MusicCurationFeatures.__allocating_init(memoryCategory:memorySubcategory:curatorEvents:eventCollectionDuration:eventRatioByLanguageCode:mostFrequentMeaningLabel:performerIdentifiers:inferredUserLanguageCodes:maestroSongScoresBySongID:scoreByAssetCollectionMaestroKeyword:consistentHash:location:shouldAvoidColorGrading:keywordsDataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v24 = objc_allocWithZone(v17);
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_memoryCategory] = a1;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory] = a2;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_curatorEvents] = a3;
  v25 = &v24[OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration];
  *v25 = a4;
  v25[8] = a5 & 1;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode] = a6;
  v26 = &v24[OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel];
  *v26 = a7;
  v26[1] = a8;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers] = a9;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes] = a10;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID] = a11;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword] = a12;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_consistentHash] = a13;
  v27 = &v24[OBJC_IVAR___PGMusicCurationFeatures_location];
  *v27 = a14;
  v27[1] = a15;
  v24[OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading] = a16;
  *&v24[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame] = a17;
  v31.receiver = v24;
  v31.super_class = v17;
  return objc_msgSendSuper2(&v31, sel_init);
}

id MusicCurationFeatures.init(memoryCategory:memorySubcategory:curatorEvents:eventCollectionDuration:eventRatioByLanguageCode:mostFrequentMeaningLabel:performerIdentifiers:inferredUserLanguageCodes:maestroSongScoresBySongID:scoreByAssetCollectionMaestroKeyword:consistentHash:location:shouldAvoidColorGrading:keywordsDataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  ObjectType = swift_getObjectType();
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_memoryCategory] = a1;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory] = a2;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_curatorEvents] = a3;
  v25 = &v17[OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration];
  *v25 = a4;
  v25[8] = a5 & 1;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode] = a6;
  v26 = &v17[OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel];
  *v26 = a7;
  v26[1] = a8;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers] = a9;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes] = a10;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID] = a11;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword] = a12;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_consistentHash] = a13;
  v27 = &v17[OBJC_IVAR___PGMusicCurationFeatures_location];
  *v27 = a14;
  v27[1] = a15;
  v17[OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading] = a16;
  *&v17[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame] = a17;
  v31.receiver = v17;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t MusicCurationFeatures.description.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID);
  v3 = *(v2 + 16);

  sub_22F173568(v4);

  sub_22F172314(v5);

  if (v3)
  {
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    for (i = 0.0; v10; i = i + *(*(v2 + 56) + ((v13 << 8) | (4 * v14))))
    {
      v13 = v7;
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v2 + 64 + 8 * v13);
      ++v7;
      if (v10)
      {
        v7 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000010, 0x800000022F78F9F0);
    v15 = [objc_opt_self() stringForCategory_];
    v16 = sub_22F740E20();
    v18 = v17;

    MEMORY[0x231900B10](v16, v18);

    MEMORY[0x231900B10](0xD000000000000010, 0x800000022F78FA10);
    v43 = *(*(v1 + OBJC_IVAR___PGMusicCurationFeatures_curatorEvents) + 16);
    v19 = sub_22F742010();
    MEMORY[0x231900B10](v19);

    MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F78FA30);
    v20 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration);
    *(v1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration + 8);
    sub_22F7413B0();
    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78FA50);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode))
    {
      v21 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode);
    }

    else
    {
      sub_22F14EB58(MEMORY[0x277D84F90]);
    }

    v22 = sub_22F740CB0();
    v24 = v23;

    MEMORY[0x231900B10](v22, v24);

    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78FA70);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel + 8))
    {
      v25 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel);
      v26 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel + 8);
    }

    else
    {
      v26 = 0xE300000000000000;
      v25 = 7104878;
    }

    MEMORY[0x231900B10](v25, v26);

    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F78FA90);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers))
    {
      v27 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers);
    }

    v28 = sub_22F741430();
    v30 = v29;

    MEMORY[0x231900B10](v28, v30);

    MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F78FAB0);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes))
    {
      v31 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
    sub_22F173C28();
    sub_22F160DE4();
    v32 = sub_22F7410E0();
    v34 = v33;

    MEMORY[0x231900B10](v32, v34);

    MEMORY[0x231900B10](0xD000000000000027, 0x800000022F78FAD0);
    v35 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword);
    v36 = sub_22F740CB0();
    MEMORY[0x231900B10](v36);

    MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F78FB00);
    v37 = sub_22F742010();
    MEMORY[0x231900B10](v37);

    MEMORY[0x231900B10](0xD000000000000020, 0x800000022F78FB20);
    sub_22F7413E0();
    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F78FB50);
    sub_22F7413E0();
    MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F78FB70);
    sub_22F7413E0();
    MEMORY[0x231900B10](0xD000000000000011, 0x800000022F78FB90);
    v44 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_consistentHash);
    v38 = sub_22F742010();
    MEMORY[0x231900B10](v38);

    MEMORY[0x231900B10](0x6F697461636F6C0ALL, 0xEB00000000203A6ELL);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_location + 8))
    {
      v39 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_location);
      v40 = *(v1 + OBJC_IVAR___PGMusicCurationFeatures_location + 8);
    }

    else
    {
      v40 = 0xEB000000006E6F69;
      v39 = 0x7461636F6C206F6ELL;
    }

    MEMORY[0x231900B10](v39, v40);

    MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F78FBB0);
    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading))
    {
      v41 = 1702195828;
    }

    else
    {
      v41 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading))
    {
      v42 = 0xE400000000000000;
    }

    else
    {
      v42 = 0xE500000000000000;
    }

    MEMORY[0x231900B10](v41, v42);

    return 0;
  }

  return result;
}

uint64_t sub_22F1732E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73F690();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_22F173D18();
        v21 = sub_22F740DB0();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

unint64_t sub_22F173568(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

uint64_t sub_22F17368C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22F73F690();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v41 - v16;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  if (v20)
  {
    v41 = a2;
    v21 = 0;
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = (v18 + 63) >> 6;
LABEL_9:
    v27 = v14[9];
    v28 = *(a1 + 48) + v27 * v22;
    v29 = v14[2];
    v42 = v14;
    v43 = v29;
    v44 = v14 + 2;
    v45 = v27;
    (v29)(v12, v28, v4, v15);
    v31 = v42 + 4;
    v30 = v42[4];
    v30(v48, v12, v4);
    v47 = a1;

    if (v23)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v33 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v33 >= v24)
      {

        v39 = v41;
        v30(v41, v48, v4);
        return (v42[7])(v39, 0, 1, v4);
      }

      v23 = *(v17 + 8 * v33);
      ++v21;
      if (v23)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v35 = v46;
          v43(v46, *(v47 + 48) + (v34 | (v33 << 6)) * v45, v4);
          v30(v9, v35, v4);
          sub_22F173D18();
          v36 = v48;
          v37 = sub_22F740DB0();
          v38 = *(v31 - 3);
          if (v37)
          {
            v38(v36, v4);
            result = (v30)(v36, v9, v4);
            v21 = v33;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v38)(v9, v4);
            v21 = v33;
            if (!v23)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v33 = v21;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v25 = 0;
    v24 = (v18 + 63) >> 6;
    while (v24 - 1 != v20)
    {
      v21 = v20 + 1;
      v26 = *(a1 + 64 + 8 * v20);
      v25 -= 64;
      ++v20;
      if (v26)
      {
        v41 = a2;
        v23 = (v26 - 1) & v26;
        v22 = __clz(__rbit64(v26)) - v25;
        goto LABEL_9;
      }
    }

    v40 = v14[7];

    return v40(a2, 1, 1, v4, v15);
  }

  return result;
}

id MusicCurationFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurationFeatures.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F173C28()
{
  result = qword_2810A9250;
  if (!qword_2810A9250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1608, &unk_22F772BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9250);
  }

  return result;
}

unint64_t sub_22F173D18()
{
  result = qword_2810AC708;
  if (!qword_2810AC708)
  {
    sub_22F73F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AC708);
  }

  return result;
}

uint64_t sub_22F173D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_22F146700(0, v1, 0);
  v2 = v33;
  v4 = -1 << *(v3 + 32);
  v31 = v3 + 56;
  result = sub_22F741980();
  v6 = result;
  v7 = 0;
  v28 = v3 + 64;
  v29 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v31 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    v30 = v7;
    v12 = *(v3 + 36);
    v13 = v3;
    v14 = (*(v3 + 48) + 16 * v6);
    v16 = *v14;
    v15 = v14[1];
    swift_bridgeObjectRetain_n();
    v17._countAndFlagsBits = v16;
    v17._object = v15;
    MomentGraphFeature.init(featureName:)(v17);
    if (v18)
    {

      return v2;
    }

    v20 = *(v33 + 16);
    v19 = *(v33 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_22F146700((v19 > 1), v20 + 1, 1);
    }

    *(v33 + 16) = v20 + 1;
    *(v33 + v20 + 32) = v32;
    v8 = 1 << *(v13 + 32);
    if (v6 >= v8)
    {
      goto LABEL_25;
    }

    v21 = *(v31 + 8 * v11);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    v3 = v13;
    if (v12 != *(v13 + 36))
    {
      goto LABEL_27;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v8 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v29;
      v10 = v30;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v9 = v29;
      v25 = (v28 + 8 * v11);
      while (v24 < (v8 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_22F107D18(v6, v12, 0);
          v8 = __clz(__rbit64(v26)) + v23;
          goto LABEL_20;
        }
      }

      result = sub_22F107D18(v6, v12, 0);
LABEL_20:
      v10 = v30;
    }

    v7 = v10 + 1;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *EventLabelingFeaturesFileCache.init(graphServiceURL:featureExtractorsForCaching:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v55 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_22F73F390();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22F73F470();
  v59 = *(v53 - 8);
  v9 = *(v59 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = sub_22F740E80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v51 = a2[1];
  v52 = v19;
  v20 = a2[2];
  v49 = a2[3];
  v50 = v20;
  sub_22F740E70();
  v21 = sub_22F740E30();
  v23 = v22;
  (*(v15 + 8))(v18, v14);
  if (v23 >> 60 == 15 || (v24 = sub_22F15AA30(v21, v23), sub_22F1746FC(v21, v23), (v24 & 0x100) != 0))
  {

    sub_22F1746A8();
    swift_allocError();
    swift_willThrow();
    (*(v59 + 8))(v55, v53);
    goto LABEL_9;
  }

  *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_delimiterByte) = v24;
  v57 = 0xD000000000000022;
  v58 = 0x800000022F78FDD0;
  v25 = v46;
  (*(v46 + 104))(v8, *MEMORY[0x277CC91D8], v5);
  sub_22F160DE4();
  sub_22F73F460();
  (*(v25 + 8))(v8, v5);
  v26 = OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFileURL;
  v27 = v59;
  v28 = v53;
  (*(v59 + 32))(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFileURL, v13, v53);
  v45 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v46 = *(v27 + 16);
  (v46)(v13, v3 + v26, v28);
  sub_22F73F440();
  v29 = *(v27 + 8);
  v59 = v27 + 8;
  v29(v13, v28);
  v30 = v26;
  v31 = v45;
  v32 = sub_22F740DF0();

  LOBYTE(v25) = [v31 fileExistsAtPath_];

  if ((v25 & 1) == 0)
  {
    (v46)(v13, v3 + v30, v28);
    sub_22F73F440();
    v29(v13, v28);
    v33 = sub_22F740DF0();

    [v31 createFileAtPath:v33 contents:0 attributes:0];
  }

  sub_22F174710();
  v34 = v47;
  (v46)(v47, v3 + v30, v28);
  v35 = v48;
  v36 = sub_22F1759E8(v34, &selRef_fileHandleForWritingToURL_error_);
  if (v35)
  {
    v29(v55, v28);

    v29(v3 + v30, v28);
LABEL_9:
    v38 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v39 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return v3;
  }

  *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFile) = v36;
  v37 = v36;
  sub_22F741590();

  v41 = (v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching);
  v42 = v51;
  *v41 = v52;
  v41[1] = v42;
  v43 = v49;
  v41[2] = v50;
  v41[3] = v43;
  v56.receiver = v3;
  v56.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v56, sel_init);
  v29(v55, v28);
  return v3;
}

unint64_t sub_22F1746A8()
{
  result = qword_27DAB16B0;
  if (!qword_27DAB16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB16B0);
  }

  return result;
}

uint64_t sub_22F1746FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22F133BF0(a1, a2);
  }

  return a1;
}

unint64_t sub_22F174710()
{
  result = qword_27DAB16C8;
  if (!qword_27DAB16C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB16C8);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLabelingFeaturesFileCache.write(eventFeatures:)(PhotosGraph::CachedEventFeatures eventFeatures)
{
  v3 = v1;
  countAndFlagsBits = eventFeatures.identifier._countAndFlagsBits;
  v27 = *MEMORY[0x277D85DE8];
  v5 = sub_22F73EF70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *countAndFlagsBits;
  v11 = sub_22F73EFB0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_22F73EFA0();
  v14 = *MEMORY[0x277CC8750];
  v15 = *(v6 + 104);
  v24 = *(countAndFlagsBits + 8);
  v15(v9, v14, v5);
  sub_22F73EF80();
  v25 = v10;
  v26 = v24;
  sub_22F1762E8();
  v16 = sub_22F73EF90();
  if (!v2)
  {
    v18 = *(v1 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFile);
    v19 = v16;
    v25 = v16;
    *&v26 = v17;
    v20 = v17;
    sub_22F15C418();
    sub_22F741580();
    v22 = *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_delimiterByte);
    v23 = sub_22F73F4F0();
    [v18 writeData_];

    sub_22F133BF0(v19, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLabelingFeaturesFileCache.clearCache()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22F73F440();
  v1 = sub_22F740DF0();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_22F73F3F0();
    v8[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v8];

    if (v4)
    {
      v5 = v8[0];
    }

    else
    {
      v6 = v8[0];
      sub_22F73F370();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLabelingFeaturesFileCache.synchronize()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFile);
  v5[0] = 0;
  if ([v1 synchronizeAndReturnError_])
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t EventLabelingFeaturesFileCache.isCacheEmpty(graphServiceURL:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_22F73F440();
  v1 = sub_22F740DF0();

  v2 = [v0 fileExistsAtPath_];

  return v2 ^ 1;
}

uint64_t EventLabelingFeaturesFileCache.readFeatures()()
{
  v1 = v0;
  v2 = sub_22F73F470();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = sub_22F73EED0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73EF30();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_22F73EF20();
  (*(v11 + 104))(v14, *MEMORY[0x277CC86B0], v10);
  sub_22F73EEF0();
  v18 = *(v3 + 16);
  v18(v9, &v0[OBJC_IVAR___PGEventLabelingFeaturesFileCache_cacheFileURL], v2);
  sub_22F174710();
  v18(v6, v9, v2);
  v19 = v39;
  v20 = sub_22F1759E8(v6, &selRef_fileHandleForReadingFromURL_error_);
  if (v19)
  {

    (*(v3 + 8))(v9, v2);
    return v1;
  }

  v21 = v20;
  (*(v3 + 8))(v9, v2);
  v42 = v21;
  v43 = xmmword_22F772BF0;
  v22 = v1[OBJC_IVAR___PGEventLabelingFeaturesFileCache_delimiterByte];
  result = sub_22F1754E4(v22);
  v24 = result;
  v26 = v25;
  v1 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v26 >> 60 == 15)
    {
      v38 = v43;

      sub_22F133BF0(v38, *(&v38 + 1));

      return v1;
    }

    v27 = v26 >> 62;
    if ((v26 >> 62) <= 1)
    {
      break;
    }

    if (v27 != 2)
    {
      goto LABEL_21;
    }

    v30 = *(v24 + 16);
    v29 = *(v24 + 24);
    v31 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_15:
    if (v28 < 1)
    {
LABEL_21:

      sub_22F1746FC(v24, v26);
      v37 = v43;

      sub_22F133BF0(v37, *(&v37 + 1));
      return v1;
    }

    sub_22F17633C();
    sub_22F73EF10();
    v32 = v40;
    v39 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_22F13E4EC(0, *(v1 + 2) + 1, 1, v1);
    }

    v34 = *(v1 + 2);
    v33 = *(v1 + 3);
    if (v34 >= v33 >> 1)
    {
      v1 = sub_22F13E4EC((v33 > 1), v34 + 1, 1, v1);
    }

    sub_22F1746FC(v24, v26);
    *(v1 + 2) = v34 + 1;
    v35 = &v1[24 * v34];
    *(v35 + 4) = v32;
    *(v35 + 40) = v39;
    result = sub_22F1754E4(v22);
    v24 = result;
    v26 = v36;
  }

  if (!v27)
  {
    v28 = BYTE6(v26);
    goto LABEL_15;
  }

  LODWORD(v28) = HIDWORD(v24) - v24;
  if (!__OFSUB__(HIDWORD(v24), v24))
  {
    v28 = v28;
    goto LABEL_15;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F1754E4(unsigned __int8 a1)
{
  v3 = v1;
  v5 = sub_22F2123AC(a1, v1[1], v1[2]);
  if ((v6 & 1) == 0)
  {
    v10 = v5;
    v11 = v1[1];
    v12 = v1[2] >> 62;
    if (v12 > 1)
    {
      result = 0;
      if (v12 == 2)
      {
        result = *(v11 + 16);
      }
    }

    else if (v12)
    {
      result = v11;
    }

    else
    {
      result = 0;
    }

    if (v10 < result)
    {
      __break(1u);
    }

    else
    {
      v13 = sub_22F73F4C0();
      result = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        v14 = v1[1];
        v15 = v1[2];
        v16 = v15 >> 62;
        if ((v15 >> 62) > 1)
        {
          if (v16 == 2)
          {
            v17 = *(v14 + 24);
          }

          else
          {
            v17 = 0;
          }
        }

        else if (v16)
        {
          v17 = v14 >> 32;
        }

        else
        {
          v17 = BYTE6(v15);
        }

        if (v17 >= result)
        {
          v27 = v13;
          v28 = sub_22F73F4C0();
          v30 = v29;
          sub_22F133BF0(v1[1], v1[2]);
          result = v27;
          v1[1] = v28;
          v1[2] = v30;
          return result;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v7 = *v1;
  result = sub_22F741570();
  if (!v2)
  {
    v18 = result;
    for (i = v9; ; i = v26)
    {
      if (i >> 60 == 15)
      {
        return 0;
      }

      v20 = i >> 62;
      if ((i >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_35;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        v24 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v24)
        {
          goto LABEL_56;
        }
      }

      else if (v20)
      {
        LODWORD(v21) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_55;
        }

        v21 = v21;
      }

      else
      {
        v21 = BYTE6(i);
      }

      if (v21 <= 0)
      {
LABEL_35:
        sub_22F1746FC(v18, i);
        return 0;
      }

      result = sub_22F2123AC(a1, v18, i);
      if ((v25 & 1) == 0)
      {
        break;
      }

      sub_22F73F530();
      sub_22F1746FC(v18, i);
      result = sub_22F741570();
      v18 = result;
    }

    v31 = v3[2];
    v51 = v3[1];
    v47 = v31;
    if (v20)
    {
      v32 = result;
      if (v20 == 2)
      {
        v33 = *(v18 + 16);
      }

      else
      {
        v33 = v18;
      }

      sub_22F15C3C4(v18, i);
      result = v32;
    }

    else
    {
      v33 = 0;
    }

    if (result >= v33)
    {
      v46 = result;
      v34 = sub_22F73F4C0();
      v36 = v35;
      sub_22F1746FC(v18, i);
      v37 = v51;
      v49 = v51;
      v50 = v47;
      v48[3] = MEMORY[0x277CC9318];
      v48[4] = MEMORY[0x277CC9300];
      v48[0] = v34;
      v48[1] = v36;
      v38 = __swift_project_boxed_opaque_existential_1(v48, MEMORY[0x277CC9318]);
      v44 = v38[1];
      v45 = *v38;
      sub_22F15C3C4(v37, v47);
      sub_22F15C3C4(v34, v36);
      sub_22F175B40(v45, v44);
      sub_22F133BF0(v34, v36);
      __swift_destroy_boxed_opaque_existential_0(v48);
      result = v46 + 1;
      if (!__OFADD__(v46, 1))
      {
        if (v20 == 2)
        {
          v39 = *(v18 + 24);
        }

        else if (v20 == 1)
        {
          v39 = v18 >> 32;
        }

        else
        {
          v39 = BYTE6(i);
        }

        if (v39 >= result)
        {
          v40 = v49;
          v41 = sub_22F73F4C0();
          v43 = v42;
          sub_22F1746FC(v18, i);
          sub_22F133BF0(v3[1], v3[2]);
          result = v40;
          v3[1] = v41;
          v3[2] = v43;
          return result;
        }

        goto LABEL_59;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  return result;
}

id EventLabelingFeaturesFileCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventLabelingFeaturesFileCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F1759E8(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22F73F3F0();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_22F73F470();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_22F73F370();

    swift_willThrow();
    v11 = sub_22F73F470();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22F175B40(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_22F73F4B0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22F175C78(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F175C78(uint64_t a1, uint64_t a2)
{
  result = sub_22F73F170();
  if (!result || (result = sub_22F73F190(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22F73F180();
      return sub_22F73F4B0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22F175D0C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void *sub_22F175D2C(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = sub_22F73F470();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (v11)
  {
    v2 = objc_allocWithZone(PGEventLabelerE5Model);
    v12 = sub_22F212148();
    if (!v3)
    {
      v37 = v12;
      *&v38 = 0;
      v13 = [v12 inputNamesWithError_];
      v2 = v38;
      if (v13)
      {
        v14 = v13;
        v15 = sub_22F741420();
        v16 = v2;

        v17 = sub_22F173D70(v15);

        *&v36 = a2;
        v33 = v7;
        v34 = a1;
        v18 = *(v17 + 16);
        *&v35 = v17;
        if (v18)
        {
          v19 = (v17 + 32);
          v20 = MEMORY[0x277D84F90];
          do
          {
            v24 = *v19++;
            v23 = v24;
            if (v24 >= 0xC)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v38 = v20;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_22F146700(0, *(v20 + 16) + 1, 1);
                v20 = v38;
              }

              v22 = *(v20 + 16);
              v21 = *(v20 + 24);
              if (v22 >= v21 >> 1)
              {
                sub_22F146700((v21 > 1), v22 + 1, 1);
                v20 = v38;
              }

              *(v20 + 16) = v22 + 1;
              *(v20 + v22 + 32) = v23;
            }

            --v18;
          }

          while (v18);
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v27 = objc_allocWithZone(PGGraphMomentNodeCollection);
        v28 = v36;
        v29 = [v27 initWithGraph_];
        static MomentGraphFeature.extractors(for:with:in:)(v20, v29, v28, &v38);

        v35 = v39;
        v36 = v38;
        (*(v33 + 16))(v10, v34, v6);
        v38 = v36;
        v39 = v35;
        v32 = objc_allocWithZone(type metadata accessor for EventLabelingFeaturesFileCache());
        v2 = EventLabelingFeaturesFileCache.init(graphServiceURL:featureExtractorsForCaching:)(v10, &v38);
      }

      else
      {
        v26 = v38;
        sub_22F73F370();

        swift_willThrow();
      }
    }
  }

  else
  {
    sub_22F176594();
    swift_allocError();
    swift_willThrow();
  }

  v30 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22F176098(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_22F7416B0();
  v35 = v7;
  v8 = *(v2 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching);
  v9 = *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching + 8);
  v10 = *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching + 16);
  v11 = *(v3 + OBJC_IVAR___PGEventLabelingFeaturesFileCache_featureExtractorsForCaching + 24);
  type metadata accessor for MomentGraphCluster();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  *(inited + 56) = v11;

  v13 = v6;

  v14 = a1;
  v15 = a2;
  v16 = sub_22F3F67A4();
  if (v32)
  {
    goto LABEL_2;
  }

  v17._rawValue = v16;
  v18 = *(inited + 16);
  v19 = [v18 UUID];
  if (!v19)
  {

    sub_22F176540();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0x8000000000000000;
    swift_willThrow();
LABEL_2:

LABEL_3:
    return;
  }

  v33 = v13;
  v20 = v19;
  v21 = sub_22F740E20();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  v36 = CachedEventFeatures.init(identifier:featureVectorByName:)(v24, v17);
  v36.identifier._countAndFlagsBits = &v34;
  EventLabelingFeaturesFileCache.write(eventFeatures:)(v36);
  if (v25)
  {

    goto LABEL_3;
  }

  v27 = v35;
  sub_22F7416A0();

  swift_setDeallocating();
  v28 = *(inited + 32);
  v29 = *(inited + 40);
  v31 = *(inited + 48);
  v30 = *(inited + 56);
}

unint64_t sub_22F1762E8()
{
  result = qword_27DAB16E0;
  if (!qword_27DAB16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB16E0);
  }

  return result;
}

unint64_t sub_22F17633C()
{
  result = qword_27DAB16E8;
  if (!qword_27DAB16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB16E8);
  }

  return result;
}

uint64_t type metadata accessor for EventLabelingFeaturesFileCache()
{
  result = qword_27DAB16F0;
  if (!qword_27DAB16F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1763E4()
{
  result = sub_22F73F470();
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

unint64_t sub_22F1764EC()
{
  result = qword_27DAB1700;
  if (!qword_27DAB1700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1700);
  }

  return result;
}

unint64_t sub_22F176540()
{
  result = qword_27DAB1708;
  if (!qword_27DAB1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1708);
  }

  return result;
}

unint64_t sub_22F176594()
{
  result = qword_27DAB1710;
  if (!qword_27DAB1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1710);
  }

  return result;
}

id _s11PhotosGraph16FlexMusicCuratorCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F17682C()
{
  result = qword_27DAB1720;
  if (!qword_27DAB1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1720);
  }

  return result;
}

unint64_t sub_22F176898()
{
  result = qword_27DAB1728;
  if (!qword_27DAB1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1728);
  }

  return result;
}

unint64_t sub_22F1768FC()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_22F176934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000022F78FFB0 == a2 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F78FFD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F742040();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22F176A18(uint64_t a1)
{
  v2 = sub_22F176D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F176A54(uint64_t a1)
{
  v2 = sub_22F176D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorBlocklistConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1730, &qword_22F772E20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F176D20();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v16 = 0;
  sub_22F176D74(&qword_2810A92D8, &qword_27DAB0E90, &qword_22F7714A0);
  sub_22F741F10();
  v15 = a2;
  v11 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  v16 = 1;
  sub_22F176D74(&qword_2810A9248, &qword_27DAB1608, &unk_22F772BB0);
  sub_22F741EA0();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F176D20()
{
  result = qword_2810A9CF8;
  if (!qword_2810A9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CF8);
  }

  return result;
}

uint64_t sub_22F176D74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void static MusicCuratorBlocklistConfiguration.defaultConfiguration()(void *a1@<X8>)
{
  v36 = a1;
  v1 = sub_22F73F470();
  v38 = *(v1 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = sub_22F73EF30();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_22F73EF20();
  v41 = [objc_allocWithZone(PGRemoteConfiguration) initWithTrialNamespace:4 onDiskResourceFile:0];
  type metadata accessor for MusicCurator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_22F740DF0();
  v17 = sub_22F740DF0();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_22F73F430();

    (*(v38 + 32))(v10, v7, v1);
    v19 = sub_22F740DF0();
    v20 = sub_22F73F3F0();
    v21 = [v41 fileValueForKey:v19 withFallbackValue:v20];

    sub_22F73F430();
    v22 = v37;
    v23 = sub_22F73F480();
    if (v22)
    {

      v25 = *(v38 + 8);
      v25(v4, v1);
      v25(v10, v1);
    }

    else
    {
      v26 = v23;
      v27 = v24;
      v28 = v4;
      v37 = v10;
      v29 = v38;
      v30 = v1;
      v31 = v41;
      sub_22F17723C();
      sub_22F73EF10();
      sub_22F133BF0(v26, v27);

      v32 = *(v29 + 8);
      v32(v28, v30);
      v32(v37, v30);
      v33 = v40;
      v34 = v36;
      *v36 = v39;
      v34[1] = v33;
    }
  }

  else
  {
    sub_22F1771E8();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F1771E8()
{
  result = qword_27DAB1738;
  if (!qword_27DAB1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1738);
  }

  return result;
}

unint64_t sub_22F17723C()
{
  result = qword_2810A9CE0;
  if (!qword_2810A9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCuratorBlocklistConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicCuratorBlocklistConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22F177404()
{
  result = qword_27DAB1740;
  if (!qword_27DAB1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1740);
  }

  return result;
}

unint64_t sub_22F17745C()
{
  result = qword_27DAB1748;
  if (!qword_27DAB1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1748);
  }

  return result;
}

unint64_t sub_22F1774B4()
{
  result = qword_2810A9CE8;
  if (!qword_2810A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CE8);
  }

  return result;
}

unint64_t sub_22F17750C()
{
  result = qword_2810A9CF0;
  if (!qword_2810A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9CF0);
  }

  return result;
}

uint64_t static MusicKitCatalogSong.Attributes.Artwork.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F1775AC()
{
  v1 = 0x746867696568;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_22F1775F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F190184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F177620(uint64_t a1)
{
  v2 = sub_22F177854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17765C(uint64_t a1)
{
  v2 = sub_22F177854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.Artwork.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1750, &qword_22F773070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177854();
  sub_22F742210();
  v17 = 0;
  sub_22F741FC0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_22F741FC0();
  v15 = 2;
  sub_22F741F80();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22F177854()
{
  result = qword_2810AACF8;
  if (!qword_2810AACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACF8);
  }

  return result;
}

uint64_t MusicKitCatalogSong.Attributes.Artwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1758, &qword_22F773078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177854();
  sub_22F742200();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_22F741EF0();
    v20 = 1;
    v18 = sub_22F741EF0();
    v19 = 2;
    v13 = sub_22F741EB0();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    v16 = v18;
    *a2 = v11;
    a2[1] = v16;
    a2[2] = v13;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F177A80(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F177B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_22F177B98(uint64_t a1)
{
  v2 = sub_22F177D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F177BD4(uint64_t a1)
{
  v2 = sub_22F177D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.Preview.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1760, &qword_22F773080);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177D4C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22F177D4C()
{
  result = qword_2810AACD8;
  if (!qword_2810AACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACD8);
  }

  return result;
}

uint64_t sub_22F177DFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1760, &qword_22F773080);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F177D4C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static MusicKitCatalogSong.Attributes.PlayParams.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22F742040();
    }
  }

  return result;
}

uint64_t sub_22F177FDC()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_22F178004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F1780D8(uint64_t a1)
{
  v2 = sub_22F1782E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F178114(uint64_t a1)
{
  v2 = sub_22F1782E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.PlayParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1770, &qword_22F773090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1782E4();
  sub_22F742210();
  v16 = 0;
  v12 = v14[3];
  sub_22F741F80();
  if (!v12)
  {
    v15 = 1;
    sub_22F741F80();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22F1782E4()
{
  result = qword_2810AAD38;
  if (!qword_2810AAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD38);
  }

  return result;
}

uint64_t MusicKitCatalogSong.Attributes.PlayParams.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1778, &qword_22F773098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1782E4();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_22F741EB0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_22F741EB0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F178538(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22F742040();
    }
  }

  return result;
}

uint64_t sub_22F178610()
{
  v1 = 6775156;
  if (*v0 != 1)
  {
    v1 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_22F178664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F190294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F17868C(uint64_t a1)
{
  v2 = sub_22F1861E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1786C8(uint64_t a1)
{
  v2 = sub_22F1861E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.Unitag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1780, &qword_22F7730A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v10 = *(v1 + 1);
  v15[3] = *(v1 + 2);
  v15[4] = v10;
  v11 = *(v1 + 3);
  v15[1] = *(v1 + 4);
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1861E0();
  sub_22F742210();
  v19 = 0;
  v16 = v9;
  v13 = v15[5];
  sub_22F741F50();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_22F741F20();
  v17 = 2;
  sub_22F741F20();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Attributes.Unitag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1788, &qword_22F7730A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1861E0();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v11 = sub_22F741E80();
  v24 = 1;
  v12 = sub_22F741E50();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = sub_22F741E50();
  v17 = v16;
  v18 = *(v6 + 8);
  v21 = v15;
  v18(v9, v5);
  *a2 = v11;
  *(a2 + 4) = BYTE4(v11) & 1;
  v19 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F178B3C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6572506F72746E69;
      break;
    case 3:
      result = 0x7377656976657270;
      break;
    case 4:
      result = 0x614E747369747261;
      break;
    case 5:
      result = 0x6D614E6D75626C61;
      break;
    case 6:
      result = 0x6E65726566657270;
      break;
    case 7:
      result = 0x73676174696E75;
      break;
    case 8:
      result = 1701667182;
      break;
    case 9:
      result = 0x52746E65746E6F63;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6172615079616C70;
      break;
    case 12:
      result = 0x636F4C6F69647561;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0x6D614E65726E6567;
      break;
    case 15:
      result = 0x50746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F178D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F1903B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F178D60(uint64_t a1)
{
  v2 = sub_22F186DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F178D9C(uint64_t a1)
{
  v2 = sub_22F186DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1790, &qword_22F7730B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = *(v1 + 4);
  v50 = *(v1 + 5);
  v51 = v8;
  v9 = *(v1 + 6);
  v48 = *(v1 + 7);
  v49 = v9;
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = *(v1 + 11);
  v46 = *(v1 + 10);
  v47 = v10;
  v43 = v12;
  v44 = *(v1 + 12);
  v45 = v11;
  v42 = *(v1 + 26);
  v57 = *(v1 + 108);
  v13 = *(v1 + 14);
  v40 = *(v1 + 15);
  v41 = v13;
  v14 = *(v1 + 17);
  v39 = *(v1 + 16);
  v38 = v14;
  v37 = *(v1 + 18);
  v36 = *(v1 + 38);
  v35 = *(v1 + 156);
  v15 = *(v1 + 21);
  v34 = *(v1 + 20);
  v33 = v15;
  v16 = *(v1 + 23);
  v32 = *(v1 + 22);
  v31 = v16;
  v17 = *(v1 + 25);
  v30 = *(v1 + 24);
  v29 = v17;
  v28 = *(v1 + 208);
  v18 = *(v1 + 28);
  v27 = *(v1 + 27);
  v19 = *(v1 + 29);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F186DC0();
  v21 = *v1;
  v52 = v1[1];
  v53 = v21;

  sub_22F742210();
  v56 = v52;
  v55 = v53;
  v58 = 0;
  sub_22F186E14();
  v22 = v54;
  sub_22F741F70();
  if (v22)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v25 = v48;
    v24 = v49;
    *&v53 = v19;
    v54 = v18;

    LOBYTE(v55) = 1;
    sub_22F741F20();
    *&v55 = v24;
    *(&v55 + 1) = v25;
    v58 = 2;
    sub_22F186E68();

    sub_22F741F70();

    *&v55 = v47;
    v58 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17A8, &qword_22F7730B8);
    sub_22F186EBC();
    sub_22F741F70();
    LOBYTE(v55) = 4;
    sub_22F741F20();
    LOBYTE(v55) = 5;
    sub_22F741F20();
    LOBYTE(v55) = 6;
    v58 = v57;
    sub_22F741F50();
    *&v55 = v41;
    v58 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17B8, &unk_22F7730C0);
    sub_22F186F40();
    sub_22F741F70();
    LOBYTE(v55) = 8;
    sub_22F741F20();
    LOBYTE(v55) = 9;
    sub_22F741F20();
    LOBYTE(v55) = 10;
    v58 = v35;
    sub_22F741F50();
    *&v55 = v34;
    *(&v55 + 1) = v33;
    *&v56 = v32;
    *(&v56 + 1) = v31;
    v58 = 11;
    sub_22F187018(v34, v33);
    sub_22F18705C();
    sub_22F741F70();
    sub_22F1870B0(v55, *(&v55 + 1));
    LOBYTE(v55) = 12;
    sub_22F741F20();
    LOBYTE(v55) = 13;
    sub_22F741F30();
    *&v55 = v27;
    v58 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1870F4();
    sub_22F741F70();
    LOBYTE(v55) = 15;
    sub_22F741F20();
    return (*(v4 + 8))(v7, 0);
  }
}

uint64_t MusicKitCatalogSong.Attributes.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17D8, &qword_22F7730D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_22F186DC0();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v128);
  }

  v71 = a2;
  v72 = v6;
  LOBYTE(v73) = 0;
  sub_22F187170();
  sub_22F741EA0();
  v12 = v88;
  v70 = *(&v89 + 1);
  v13 = v89;
  LOBYTE(v88) = 1;
  v14 = sub_22F741E50();
  v69 = v15;
  v58 = v14;
  v59 = v13;
  v60 = v12;
  LOBYTE(v73) = 2;
  sub_22F1871C4();
  v68 = 0;
  sub_22F741EA0();
  v67 = *(&v88 + 1);
  v16 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17A8, &qword_22F7730B8);
  LOBYTE(v73) = 3;
  sub_22F187218();
  sub_22F741EA0();
  v66 = v88;
  LOBYTE(v88) = 4;
  v17 = sub_22F741E50();
  v65 = v18;
  LOBYTE(v88) = 5;
  v19 = sub_22F741E50();
  v64 = v20;
  LOBYTE(v88) = 6;
  v57 = sub_22F741E80();
  v127 = BYTE4(v57) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17B8, &unk_22F7730C0);
  LOBYTE(v73) = 7;
  sub_22F18729C();
  sub_22F741EA0();
  v63 = v88;
  LOBYTE(v88) = 8;
  v56 = sub_22F741E50();
  v62 = v21;
  LOBYTE(v88) = 9;
  v22 = sub_22F741E50();
  v61 = v23;
  v24 = v22;
  LOBYTE(v88) = 10;
  v55 = sub_22F741E80();
  v124 = BYTE4(v55) & 1;
  LOBYTE(v73) = 11;
  sub_22F187374();
  sub_22F741EA0();
  v53 = v88;
  v54 = v89;
  LOBYTE(v88) = 12;
  *&v52 = sub_22F741E50();
  *(&v52 + 1) = v25;
  v68 = 0;
  LOBYTE(v88) = 13;
  v50 = sub_22F741E60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  LOBYTE(v73) = 14;
  sub_22F1873C8();
  sub_22F741EA0();
  v51 = v88;
  v120 = 15;
  v26 = sub_22F741E50();
  v49 = v27;
  v28 = v26;
  (*(v72 + 8))(v9, v5);
  v73 = v60;
  *&v74 = v59;
  *(&v74 + 1) = v70;
  *&v75 = v58;
  *(&v75 + 1) = v69;
  v47 = v17;
  v48 = v16;
  *&v76 = v16;
  *(&v76 + 1) = v67;
  *&v77 = v66;
  *(&v77 + 1) = v17;
  *&v78 = v65;
  *(&v78 + 1) = v19;
  v46 = v19;
  *&v79 = v64;
  DWORD2(v79) = v57;
  *(&v82 + 13) = v122;
  DWORD1(v86) = *&v121[3];
  *(&v86 + 1) = *v121;
  LODWORD(v72) = v127;
  BYTE12(v79) = v127;
  *(&v79 + 13) = v125;
  HIBYTE(v79) = v126;
  v29 = v62;
  v30 = v63;
  v31 = v56;
  *&v80 = v63;
  *(&v80 + 1) = v56;
  *&v81 = v62;
  *(&v81 + 1) = v24;
  *&v82 = v61;
  DWORD2(v82) = v55;
  HIBYTE(v82) = v123;
  LOBYTE(v19) = v124;
  BYTE12(v82) = v124;
  v83 = v53;
  v84 = v54;
  v85 = v52;
  LOBYTE(v86) = v50;
  *(&v86 + 1) = v51;
  *&v87 = v28;
  *(&v87 + 1) = v49;
  v32 = v74;
  v33 = v71;
  *v71 = v60;
  v33[1] = v32;
  v34 = v75;
  v35 = v76;
  v36 = v78;
  v33[4] = v77;
  v33[5] = v36;
  v33[2] = v34;
  v33[3] = v35;
  v37 = v79;
  v38 = v80;
  v39 = v82;
  v33[8] = v81;
  v33[9] = v39;
  v33[6] = v37;
  v33[7] = v38;
  v40 = v83;
  v41 = v84;
  v42 = v87;
  v33[13] = v86;
  v33[14] = v42;
  v43 = v85;
  v33[11] = v41;
  v33[12] = v43;
  v33[10] = v40;
  sub_22F187444(&v73, &v88);
  __swift_destroy_boxed_opaque_existential_0(v128);
  v88 = v60;
  *&v89 = v59;
  *(&v89 + 1) = v70;
  v90 = v58;
  v91 = v69;
  v92 = v48;
  v93 = v67;
  v94 = v66;
  v95 = v47;
  v96 = v65;
  v97 = v46;
  v98 = v64;
  v99 = v57;
  v100 = v72;
  v101 = v125;
  v102 = v126;
  v103 = v30;
  v104 = v31;
  v105 = v29;
  v106 = v24;
  v107 = v61;
  v108 = v55;
  v109 = v19;
  v110 = v122;
  v111 = v123;
  v112 = v53;
  v113 = v54;
  v114 = v52;
  v115 = v50;
  *&v116[3] = *&v121[3];
  *v116 = *v121;
  v117 = v51;
  v118 = v28;
  v119 = v49;
  return sub_22F18747C(&v88);
}

uint64_t sub_22F179FB0()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F17A090()
{
  *v0;
  *v0;
  *v0;
  sub_22F740D60();
}

uint64_t sub_22F17A15C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F17A238@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22F1908D8();
  *a2 = result;
  return result;
}

void sub_22F17A268(uint64_t *a1@<X8>)
{
  v2 = 0xEB0000000073746ELL;
  v3 = 0x656C617669757165;
  v4 = 0xEE00736973796C61;
  v5 = 0x6E612D6F69647561;
  if (*v1 != 2)
  {
    v5 = 0x612D6C6D78656C66;
    v4 = 0xEF736973796C616ELL;
  }

  if (*v1)
  {
    v3 = 0x73636972796CLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22F17A304()
{
  v1 = 0x656C617669757165;
  v2 = 0x6E612D6F69647561;
  if (*v0 != 2)
  {
    v2 = 0x612D6C6D78656C66;
  }

  if (*v0)
  {
    v1 = 0x73636972796CLL;
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

uint64_t sub_22F17A39C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22F1908D8();
  *a1 = result;
  return result;
}

uint64_t sub_22F17A3C4(uint64_t a1)
{
  v2 = sub_22F18BC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17A400(uint64_t a1)
{
  v2 = sub_22F18BC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F17A460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v9 = *v3;
        v5 = *v4++;
        v8 = v5;
        sub_22F189A6C(v9, *(&v9 + 1));
        sub_22F189A6C(v5, *(&v5 + 1));
        v6 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV6LyricsV0H4DataV2eeoiySbAI_AItFZ_0(&v9, &v8);
        sub_22F189B28(v8, *(&v8 + 1));
        sub_22F189B28(v9, *(&v9 + 1));
        if ((v6 & 1) == 0)
        {
          break;
        }

        ++v3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_22F17A530(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v56 = v2;
  v57 = v3;
  v5 = v4 - 1;
  v6 = (a2 + 40);
  for (i = (a1 + 40); ; i += 5)
  {
    v8 = *(i + 8);
    v9 = *(i + 40);
    v54[2] = *(i + 24);
    v54[3] = v9;
    v10 = *(i + 56);
    v54[0] = *(i - 8);
    v54[1] = v8;
    v11 = *(v6 + 8);
    v12 = *(v6 + 40);
    v55[2] = *(v6 + 24);
    v55[3] = v12;
    v55[4] = *(v6 + 56);
    v13 = *(v6 - 8);
    v55[1] = v11;
    v54[4] = v10;
    v55[0] = v13;
    v14 = *&v54[0];
    v15 = i[1];
    v16 = i[3];
    v51 = i[2];
    v52 = v16;
    v53 = *(i + 8);
    v49 = *i;
    v50 = v15;
    v17 = v13;
    v18 = v6[1];
    v19 = v6[3];
    v46 = v6[2];
    v47 = v19;
    v48 = *(v6 + 8);
    v44 = *v6;
    v45 = v18;
    if (*&v54[0] == 1)
    {
      break;
    }

    v22 = *i;
    *&v37[24] = i[1];
    v23 = i[3];
    *&v37[40] = i[2];
    *v37 = *&v54[0];
    *&v37[56] = v23;
    *&v37[72] = *(i + 8);
    *&v37[8] = v22;
    v34 = *&v37[32];
    v35 = *&v37[48];
    v36 = *&v37[64];
    v32 = *v37;
    v33 = *&v37[16];
    if (v17 == 1)
    {
      *&v31[32] = *&v37[32];
      *&v31[48] = *&v37[48];
      *&v31[64] = *&v37[64];
      *v31 = *v37;
      *&v31[16] = *&v37[16];
      sub_22F1918D4(v54, v30);
      sub_22F1918D4(v55, v30);
      sub_22F13BA9C(v37, v30, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F18B46C(v31);
      goto LABEL_17;
    }

    v24 = *v6;
    *&v28[24] = v6[1];
    v25 = v6[3];
    *&v28[40] = v6[2];
    *&v28[56] = v25;
    *&v28[72] = *(v6 + 8);
    *&v28[8] = v24;
    *v28 = v17;
    sub_22F1918D4(v54, v30);
    sub_22F1918D4(v55, v30);
    sub_22F1918D4(v54, v30);
    sub_22F1918D4(v55, v30);
    sub_22F13BA9C(v37, v30, &qword_27DAB1AC0, &qword_22F773278);
    v26 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(&v32, v28);
    v29[2] = *&v28[32];
    v29[3] = *&v28[48];
    v29[4] = *&v28[64];
    v29[0] = *v28;
    v29[1] = *&v28[16];
    sub_22F18B46C(v29);
    sub_22F19190C(v55);
    sub_22F19190C(v54);
    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v30[0] = v32;
    v30[1] = v33;
    sub_22F18B46C(v30);
    *v31 = v14;
    *&v31[24] = v50;
    *&v31[40] = v51;
    *&v31[56] = v52;
    *&v31[72] = v53;
    *&v31[8] = v49;
    sub_22F120ADC(v31, &qword_27DAB1AC0, &qword_22F773278);
    if (!v26)
    {
      return 0;
    }

LABEL_10:
    if (!v5)
    {
      return 1;
    }

    --v5;
    v6 += 5;
  }

  if (v13 == 1)
  {
    *v37 = 1;
    v20 = *i;
    *&v37[24] = i[1];
    v21 = i[3];
    *&v37[40] = i[2];
    *&v37[56] = v21;
    *&v37[72] = *(i + 8);
    *&v37[8] = v20;
    sub_22F1918D4(v54, &v32);
    sub_22F1918D4(v55, &v32);
    sub_22F120ADC(v37, &qword_27DAB1AC0, &qword_22F773278);
    goto LABEL_10;
  }

  sub_22F1918D4(v54, v37);
  sub_22F1918D4(v55, v37);
LABEL_17:
  *&v37[24] = v50;
  *&v37[40] = v51;
  *&v37[56] = v52;
  *&v37[8] = v49;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  *v37 = v14;
  *&v37[72] = v53;
  v38 = v17;
  v43 = v48;
  v39 = v44;
  sub_22F120ADC(v37, &qword_27DAB1D70, &qword_22F777130);
  return 0;
}

uint64_t sub_22F17A8E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    result = 1;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_29;
      }

      v6 = v4 + 32 * v3;
      v7 = a2 + 32 + 32 * v3;
      if (*v6 != *v7)
      {
        return 0;
      }

      v8 = *(v6 + 8);
      v9 = *(v7 + 8);
      v10 = *(v8 + 16);
      if (v10 != *(v9 + 16))
      {
        return 0;
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v10)
      {
        v15 = v8 == v9;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = (v8 + 32);
        v17 = (v9 + 32);
        while (v10)
        {
          if (*v16 != *v17)
          {
            return 0;
          }

          ++v16;
          ++v17;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

LABEL_19:
      if (v11 != v13)
      {
        return 0;
      }

      v18 = *(v12 + 16);
      if (v18 != *(v14 + 16))
      {
        return 0;
      }

      if (v18 && v12 != v14)
      {
        break;
      }

LABEL_7:
      if (++v3 == v2)
      {
        return result;
      }
    }

    v19 = (v12 + 32);
    v20 = (v14 + 32);
    while (*v19 == *v20)
    {
      ++v19;
      ++v20;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17AA10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F17AA6C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v26 = v5;
  v27 = v6;
  *&v25[344] = v8;
  *&v25[352] = v2;
  *&v25[328] = v3;
  *&v25[336] = v4;
  v9 = (MEMORY[0x28223BE20](a1) + 32);
  v11 = (v10 + 32);
  for (i = v12 - 1; ; --i)
  {
    memcpy(__dst, v9, 0x162uLL);
    memcpy(v24, v11, 0x162uLL);
    memcpy(__src, v9, 0x162uLL);
    memcpy(&__src[360], v11, 0x162uLL);
    memcpy(v25, v9, 0x162uLL);
    if (sub_22F19193C(v25) == 1)
    {
      break;
    }

    memcpy(v21, __src, 0x162uLL);
    memcpy(v19, __src, 0x162uLL);
    memcpy(v20, &__src[360], 0x162uLL);
    if (sub_22F19193C(v20) == 1)
    {
      memcpy(v18, __src, 0x162uLL);
      sub_22F191960(__dst, v17);
      sub_22F191960(v24, v17);
      sub_22F13BA9C(v21, v17, &qword_27DAB19B0, &qword_22F7731C0);
      sub_22F18A780(v18);
      goto LABEL_17;
    }

    memcpy(v18, &__src[360], 0x162uLL);
    sub_22F191960(__dst, v17);
    sub_22F191960(v24, v17);
    sub_22F191960(__dst, v17);
    sub_22F191960(v24, v17);
    sub_22F13BA9C(v21, v17, &qword_27DAB19B0, &qword_22F7731C0);
    v14 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(v19, v18);
    memcpy(v16, v18, 0x162uLL);
    sub_22F18A780(v16);
    sub_22F191998(v24);
    sub_22F191998(__dst);
    memcpy(v17, v19, 0x162uLL);
    sub_22F18A780(v17);
    memcpy(v18, __src, 0x162uLL);
    sub_22F120ADC(v18, &qword_27DAB19B0, &qword_22F7731C0);
    if (!v14)
    {
      return 0;
    }

LABEL_10:
    if (!i)
    {
      return 1;
    }

    v11 += 360;
    v9 += 360;
  }

  memcpy(v20, &__src[360], 0x162uLL);
  if (sub_22F19193C(v20) == 1)
  {
    memcpy(v21, __src, 0x162uLL);
    sub_22F191960(__dst, v19);
    sub_22F191960(v24, v19);
    sub_22F120ADC(v21, &qword_27DAB19B0, &qword_22F7731C0);
    goto LABEL_10;
  }

  sub_22F191960(__dst, v21);
  sub_22F191960(v24, v21);
LABEL_17:
  memcpy(v20, __src, 0x2CAuLL);
  sub_22F120ADC(v20, &qword_27DAB1D78, &qword_22F777138);
  return 0;
}

uint64_t sub_22F17AD98(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F17ADF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22F742040() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17AE84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    v4 = (a2 + 64);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 28);
      v9 = *(v4 - 2);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (*(v3 - 7))
      {
        if (!*(v4 - 28))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 8) != *(v4 - 8))
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (v5)
      {
        if (!v9 || (*(v3 - 3) != *(v4 - 3) || v5 != v9) && (sub_22F742040() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10 || (v6 != v11 || v7 != v10) && (sub_22F742040() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 10;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_22F17AFA0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v36 = a2 + 32;
    v37 = result + 32;
    v31 = *(result + 16);
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_42;
      }

      v4 = v37 + 80 * v3;
      result = *v4;
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v10 = *(v4 + 48);
      v9 = *(v4 + 56);
      v40 = *(v4 + 64);
      v11 = v36 + 80 * v3;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v15 = *(v11 + 32);
      v14 = *(v11 + 40);
      v16 = *(v11 + 48);
      v17 = *(v11 + 56);
      v18 = *(v11 + 64);
      v38 = *(v11 + 72);
      v39 = *(v4 + 72);
      if (*v4 != *v11 || *(v4 + 8) != *(v11 + 8))
      {
        v34 = v3;
        v35 = *(v4 + 32);
        v32 = *(v11 + 24);
        v33 = *(v11 + 64);
        v19 = *(v4 + 56);
        v20 = *(v4 + 48);
        v21 = *(v11 + 48);
        v22 = *(v11 + 40);
        result = sub_22F742040();
        v14 = v22;
        v16 = v21;
        v3 = v34;
        v7 = v35;
        v10 = v20;
        v18 = v33;
        v9 = v19;
        v2 = v31;
        v12 = v32;
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      v23 = *(v6 + 16);
      if (v23 != *(v13 + 16))
      {
        return 0;
      }

      if (v23)
      {
        v24 = v6 == v13;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        v25 = (v6 + 32);
        v26 = (v13 + 32);
        while (v23)
        {
          if (*v25 != *v26)
          {
            return 0;
          }

          ++v25;
          ++v26;
          if (!--v23)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

LABEL_18:
      result = 0;
      if (v5 != v12 || v7 != v15 || v8 != v14)
      {
        return result;
      }

      if ((v10 != v16 || v9 != v17) && (sub_22F742040() & 1) == 0)
      {
        return 0;
      }

      v27 = *(v40 + 16);
      if (v27 != *(v18 + 16))
      {
        return 0;
      }

      if (v27 && v40 != v18)
      {
        break;
      }

LABEL_35:
      if (v39 != v38)
      {
        return 0;
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v28 = (v40 + 40);
    v29 = (v18 + 40);
    while (1)
    {
      v30 = *(v28 - 1) == *(v29 - 1) && *v28 == *v29;
      if (!v30 && (sub_22F742040() & 1) == 0)
      {
        return 0;
      }

      v28 += 2;
      v29 += 2;
      if (!--v27)
      {
        goto LABEL_35;
      }
    }
  }

  return 1;
}

uint64_t sub_22F17B1E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_29;
      }

      v5 = v4 + 24 * v3;
      v6 = *v5;
      v7 = a2 + 32 + 24 * v3;
      v8 = *v7;
      v9 = *(*v5 + 16);
      result = *(*v7 + 16);
      if (v9 != result)
      {
        return 0;
      }

      v11 = *(v5 + 8);
      v10 = *(v5 + 12);
      v12 = *(v5 + 16);
      v14 = *(v7 + 8);
      v13 = *(v7 + 12);
      if (v9)
      {
        v15 = v6 == v8;
      }

      else
      {
        v15 = 1;
      }

      v16 = *(v7 + 16);
      if (!v15)
      {
        v17 = (v6 + 32);
        v18 = (v8 + 32);
        while (v9)
        {
          if (*v17 != *v18)
          {
            return 0;
          }

          ++v17;
          ++v18;
          if (!--v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

LABEL_18:
      result = 0;
      if (v11 != v14 || v10 != v13)
      {
        return result;
      }

      v19 = *(v12 + 16);
      if (v19 != *(v16 + 16))
      {
        return 0;
      }

      if (v19 && v12 != v16)
      {
        break;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v20 = (v12 + 32);
    v21 = (v16 + 32);
    while (*v20 == *v21)
    {
      ++v20;
      ++v21;
      if (!--v19)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17B318(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_28;
      }

      v5 = v4 + 24 * v3;
      v6 = *v5;
      v7 = a2 + 32 + 24 * v3;
      v8 = *v7;
      v9 = *(*v5 + 16);
      result = *(*v7 + 16);
      if (v9 != result)
      {
        return 0;
      }

      v10 = *(v5 + 8);
      v11 = *(v5 + 16);
      v12 = *(v7 + 8);
      v13 = *(v7 + 16);
      if (v9)
      {
        v14 = v6 == v8;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = (v6 + 32);
        v16 = (v8 + 32);
        while (v9)
        {
          if (*v15 != *v16)
          {
            return 0;
          }

          ++v15;
          ++v16;
          if (!--v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

LABEL_18:
      if (v10 != v12)
      {
        return 0;
      }

      v17 = *(v11 + 16);
      if (v17 != *(v13 + 16))
      {
        return 0;
      }

      if (v17 && v11 != v13)
      {
        break;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v18 = (v11 + 32);
    v19 = (v13 + 32);
    while (*v18 == *v19)
    {
      ++v18;
      ++v19;
      if (!--v17)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22F17B438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    do
    {
      sub_22F15CAA0(v14, v11);
      sub_22F15CAA0(v15, v7);
      if (*v11 == *v7 && v11[1] == v7[1])
      {
        sub_22F15CBD8(v7);
        sub_22F15CBD8(v11);
      }

      else
      {
        v18 = sub_22F742040();
        sub_22F15CBD8(v7);
        sub_22F15CBD8(v11);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  return 1;
}

uint64_t sub_22F17B5C0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_22F191888();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2319016F0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x2319016F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_22F741810();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_22F741810();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_22F741A00();
  }

  result = sub_22F741A00();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_22F17B810(uint64_t a1)
{
  v2 = sub_22F1874AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17B84C(uint64_t a1)
{
  v2 = sub_22F1874AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Equivalents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17E0, &qword_22F7730D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1874AC();

  sub_22F742210();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17F0, &qword_22F7730E0);
  sub_22F187500();
  sub_22F741FE0();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.Equivalents.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1808, &qword_22F7730E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1874AC();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB17F0, &qword_22F7730E0);
    sub_22F1875D8();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static MusicKitCatalogSong.Relationships.Lyrics.LyricsData.LyricAttributes.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_22F742040() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F17BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1819112564 && a2 == 0xE400000000000000)
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

uint64_t sub_22F17BCC4(uint64_t a1)
{
  v2 = sub_22F1876B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17BD00(uint64_t a1)
{
  v2 = sub_22F1876B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.LyricAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1820, &qword_22F7730F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1876B0();
  sub_22F742210();
  sub_22F741F20();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.LyricAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1830, &qword_22F7730F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1876B0();
  sub_22F742200();
  if (!v2)
  {
    v11 = sub_22F741E50();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17BFEC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_22F742040() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F17C060(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1820, &qword_22F7730F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1876B0();
  sub_22F742210();
  sub_22F741F20();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22F17C1BC(uint64_t a1)
{
  v2 = sub_22F189A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17C1F8(uint64_t a1)
{
  v2 = sub_22F189A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1838, &qword_22F773100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189A6C(v8, v9);
  sub_22F189A80();
  sub_22F742210();
  v12 = v8;
  v13 = v9;
  sub_22F189AD4();
  sub_22F741F70();
  sub_22F189B28(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.LyricsData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1850, &qword_22F773108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189A80();
  sub_22F742200();
  if (!v2)
  {
    sub_22F189B3C();
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17C554(uint64_t a1)
{
  v2 = sub_22F189B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17C590(uint64_t a1)
{
  v2 = sub_22F189B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1860, &qword_22F773110);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189B90();

  sub_22F742210();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1870, &qword_22F773118);
  sub_22F189BE4();
  sub_22F741F70();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.Lyrics.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1888, &qword_22F773120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189B90();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1870, &qword_22F773118);
    sub_22F189CBC();
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17C90C()
{
  if (*v0)
  {
    result = 1701080941;
  }

  else
  {
    result = 0x63696E6F74;
  }

  *v0;
  return result;
}

uint64_t sub_22F17C93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696E6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F17CA14(uint64_t a1)
{
  v2 = sub_22F189D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17CA50(uint64_t a1)
{
  v2 = sub_22F189D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.AudioAnalysisKeyAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18A0, &qword_22F773128);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189D94();
  sub_22F742210();
  v16 = 0;
  v12 = v14[3];
  sub_22F741F20();
  if (!v12)
  {
    v15 = 1;
    sub_22F741F20();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.AudioAnalysisKeyAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18B0, &qword_22F773130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189D94();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_22F741E50();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_22F741E50();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17CE58(uint64_t a1)
{
  v2 = sub_22F189E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17CE94(uint64_t a1)
{
  v2 = sub_22F189E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.encode(to:)(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18B8, &qword_22F773138);
  v35 = *(v33 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v24 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v31 = v1[5];
  v32 = v10;
  v11 = v1[6];
  v29 = v1[7];
  v30 = v11;
  v12 = v1[8];
  v27 = v1[9];
  v28 = v12;
  v13 = v1[10];
  v25 = v1[11];
  v26 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189DE8(v6, v7);
  sub_22F189E30();
  v15 = v33;
  sub_22F742210();
  v36 = v6;
  v37 = v7;
  v16 = v5;
  v38 = v8;
  v39 = v9;
  v40 = 0;
  sub_22F189E84();
  v17 = v34;
  sub_22F741F70();
  sub_22F189ED8(v36, v37);
  if (v17)
  {
    return (*(v35 + 8))(v5, v15);
  }

  v20 = v25;
  v19 = v26;
  v22 = v27;
  v21 = v28;
  v23 = v35;
  v36 = v32;
  v37 = v31;
  v38 = v30;
  v39 = v29;
  v40 = 1;
  sub_22F189DE8(v32, v31);
  sub_22F741F70();
  sub_22F189ED8(v36, v37);
  v36 = v21;
  v37 = v22;
  v38 = v19;
  v39 = v20;
  v40 = 2;
  sub_22F189DE8(v21, v22);
  sub_22F741F70();
  sub_22F189ED8(v36, v37);
  return (*(v23 + 8))(v16, v15);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB18D0, &qword_22F773140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F189E30();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31[0]) = 0;
  sub_22F189F20();
  sub_22F741EA0();
  v29 = v36;
  v30 = v37;
  LOBYTE(v31[0]) = 1;
  sub_22F741EA0();
  v28 = v36;
  v27 = v37;
  v47 = 2;
  sub_22F741EA0();
  (*(v6 + 8))(v9, v5);
  v25 = *(&v45 + 1);
  v26 = v45;
  v23 = *(&v46 + 1);
  v24 = v46;
  v11 = v29;
  v31[0] = v29;
  v12 = *(&v29 + 1);
  v13 = v30;
  v31[1] = v30;
  v14 = *(&v30 + 1);
  v32 = v28;
  v15 = v27;
  v33 = v27;
  v16 = *(&v27 + 1);
  v34 = v45;
  v35 = v46;
  v17 = v30;
  *a2 = v29;
  a2[1] = v17;
  v18 = v32;
  v19 = v33;
  v20 = v35;
  a2[4] = v34;
  a2[5] = v20;
  a2[2] = v18;
  a2[3] = v19;
  sub_22F189F74(v31, &v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v36 = v11;
  *(&v36 + 1) = v12;
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v38 = v28;
  v39 = v15;
  v40 = v16;
  v41 = v26;
  v42 = v25;
  v43 = v24;
  v44 = v23;
  return sub_22F189FAC(&v36);
}

uint64_t sub_22F17D5C4(uint64_t a1)
{
  v2 = sub_22F189FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17D600(uint64_t a1)
{
  v2 = sub_22F189FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F17D710()
{
  v1 = 1801545072;
  if (*v0 != 1)
  {
    v1 = 0x65676E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22F17D75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F190924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F17D784(uint64_t a1)
{
  v2 = sub_22F18A030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17D7C0(uint64_t a1)
{
  v2 = sub_22F18A030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F17D840(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v21 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v20 = *v4;
  v11 = *(v4 + 4);
  v19 = v4[2];
  v18 = *(v4 + 12);
  v17 = v4[4];
  HIDWORD(v16) = *(v4 + 20);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21();
  sub_22F742210();
  v28 = 0;
  v25 = v11;
  v13 = v22;
  sub_22F741F50();
  if (v13)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = BYTE4(v16);
  v27 = 1;
  v24 = v18;
  sub_22F741F50();
  v26 = 2;
  v23 = v14;
  sub_22F741F50();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22F17DA80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F742200();
  if (!v5)
  {
    v13 = v18;
    v22 = 0;
    v14 = sub_22F741E80();
    v21 = 1;
    v16 = sub_22F741E80();
    v20 = 2;
    v17 = sub_22F741E80();
    (*(v8 + 8))(v11, v19);
    *v13 = v14;
    *(v13 + 4) = BYTE4(v14) & 1;
    *(v13 + 8) = v16;
    *(v13 + 12) = BYTE4(v16) & 1;
    *(v13 + 16) = v17;
    *(v13 + 20) = BYTE4(v17) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17DCB4(uint64_t a1)
{
  v2 = sub_22F18A084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17DCF0(uint64_t a1)
{
  v2 = sub_22F18A084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisTimeSeriesAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1908, &qword_22F773168);
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = *v1;
  v8 = *(v1 + 4);
  v30 = v1[1];
  v31 = v8;
  v9 = *(v1 + 20);
  v10 = *(v1 + 21);
  v11 = v1[3];
  v28 = v1[4];
  v29 = v11;
  v27 = *(v1 + 44);
  v26 = *(v1 + 10);
  v39 = *(v1 + 45);
  v12 = v1[6];
  v24 = v1[7];
  v25 = v12;
  v23 = *(v1 + 68);
  v22 = *(v1 + 16);
  HIDWORD(v21) = *(v1 + 69);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A084();
  sub_22F742210();
  v34 = v7;
  v35 = v30;
  v37 = v9;
  v36 = v31;
  v38 = v10;
  v40 = 0;
  sub_22F18A0D8();
  v14 = v33;
  sub_22F741F70();
  if (v14)
  {
    return (*(v32 + 8))(v6, v3);
  }

  v16 = v22;
  v17 = v23;
  v19 = v24;
  v18 = v25;
  v20 = v32;
  v34 = v29;
  v35 = v28;
  v37 = (v26 | (v27 << 32)) >> 32;
  v36 = v26;
  v38 = v39;
  v40 = 1;
  sub_22F741F70();
  v34 = v18;
  v35 = v19;
  v37 = (v16 | (v17 << 32)) >> 32;
  v36 = v16;
  v38 = BYTE4(v21);
  v40 = 2;
  sub_22F741F70();
  return (*(v20 + 8))(v6, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisTimeSeriesAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1918, &qword_22F773170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A084();
  sub_22F742200();
  if (!v2)
  {
    v34 = 0;
    sub_22F18A12C();
    sub_22F741EA0();
    v28 = *(&v30 + 1);
    v29 = v30;
    v27 = v32;
    v11 = v31;
    v37 = v33;
    v34 = 1;
    sub_22F741EA0();
    v26 = v11;
    v13 = v30;
    v24 = v32;
    v25 = *(&v30 + 1);
    v23 = v31;
    v36 = v33;
    v34 = 2;
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    v14 = v31;
    v15 = v32;
    v16 = v26 | (v27 << 32);
    v17 = v33;
    v35 = v33;
    v18 = v23 | (v24 << 32);
    v19 = v37;
    v20 = v36;
    *a2 = v29;
    *(a2 + 8) = v28;
    *(a2 + 16) = v16;
    *(a2 + 20) = BYTE4(v16);
    *(a2 + 21) = v19;
    v21 = v25;
    *(a2 + 24) = v13;
    *(a2 + 32) = v21;
    *(a2 + 40) = v18;
    *(a2 + 44) = BYTE4(v18);
    *(a2 + 45) = v20;
    *(a2 + 48) = v30;
    *(a2 + 68) = v15;
    *(a2 + 64) = v14;
    *(a2 + 69) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F17E2C0()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_22F17E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000022F790030 == a2;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F790050 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F17E3DC(uint64_t a1)
{
  v2 = sub_22F18A180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17E418(uint64_t a1)
{
  v2 = sub_22F18A180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBeats.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1920, &qword_22F773178);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A180();

  sub_22F742210();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
  sub_22F18A1D4();
  sub_22F741F70();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_22F741F70();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBeats.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1940, &qword_22F773188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A180();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
  v16 = 0;
  sub_22F18A250();
  sub_22F741EA0();
  v11 = v17;
  v16 = 1;
  sub_22F741EA0();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F17E86C()
{
  v1 = 1852399981;
  v2 = 0x676E69646E65;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6E696E6E69676562;
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

uint64_t sub_22F17E8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F190B50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F17E90C(uint64_t a1)
{
  v2 = sub_22F18A2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17E948(uint64_t a1)
{
  v2 = sub_22F18A2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBPM.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1950, &qword_22F773190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v20 = v1[2];
  v19 = *(v1 + 24);
  v18 = v1[4];
  v17 = *(v1 + 40);
  v16 = *(v1 + 11);
  v15 = *(v1 + 48);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A2CC();
  sub_22F742210();
  v26 = 0;
  v11 = v21;
  sub_22F741F60();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v12 = v15;
  v25 = 1;
  sub_22F741F60();
  v24 = 2;
  sub_22F741F60();
  v23 = 3;
  v22 = v12;
  sub_22F741F50();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.AudioAnalysisBPM.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1960, &qword_22F773198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A2CC();
  sub_22F742200();
  if (!v2)
  {
    v29 = 0;
    v11 = sub_22F741E90();
    v25 = v12 & 1;
    v28 = 1;
    v13 = sub_22F741E90();
    v24 = v14 & 1;
    v27 = 2;
    v21 = sub_22F741E90();
    v23 = v15 & 1;
    v26 = 3;
    v17 = sub_22F741E80();
    (*(v6 + 8))(v9, v5);
    v22 = BYTE4(v17) & 1;
    v18 = v25;
    v19 = v24;
    v20 = v23;
    *a2 = v11;
    *(a2 + 8) = v18;
    *(a2 + 16) = v13;
    *(a2 + 24) = v19;
    *(a2 + 32) = v21;
    *(a2 + 40) = v20;
    *(a2 + 44) = v17;
    *(a2 + 48) = BYTE4(v17) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F17EE20(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 7955819;
    v6 = 0x63697473756F6361;
    if (a1 != 2)
    {
      v6 = 0x65636E656C6176;
    }

    if (a1)
    {
      v5 = 0x6E6369646F6C656DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69626165636E6164;
    v2 = 0x7374616562;
    if (a1 != 7)
    {
      v2 = 7172194;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x796772656E65;
    if (a1 != 4)
    {
      v3 = 0x7373656E64756F6CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22F17EF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F190CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F17EF78(uint64_t a1)
{
  v2 = sub_22F18A320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17EFB4(uint64_t a1)
{
  v2 = sub_22F18A320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1968, &qword_22F7731A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = v2[3];
  v70 = v2[2];
  v71 = v9;
  v10 = v2[5];
  v72 = v2[4];
  v73 = v10;
  v11 = v2[1];
  v68 = *v2;
  v69 = v11;
  v12 = *(v2 + 12);
  v49 = *(v2 + 13);
  v50 = v12;
  v48 = *(v2 + 116);
  v47 = *(v2 + 28);
  v74 = *(v2 + 117);
  v13 = *(v2 + 16);
  v46 = *(v2 + 15);
  v43 = *(v2 + 140);
  v44 = v13;
  v42 = *(v2 + 34);
  v45 = *(v2 + 141);
  v14 = *(v2 + 18);
  v39 = *(v2 + 19);
  v40 = v14;
  v38 = *(v2 + 164);
  v37 = *(v2 + 40);
  v41 = *(v2 + 165);
  v15 = *(v2 + 21);
  v34 = *(v2 + 22);
  v35 = v15;
  v33 = *(v2 + 188);
  v32 = *(v2 + 46);
  v36 = *(v2 + 189);
  v16 = *(v2 + 33);
  v29 = *(v2 + 34);
  v30 = v16;
  v28 = *(v2 + 284);
  v27 = *(v2 + 70);
  v31 = *(v2 + 285);
  v17 = *(v2 + 37);
  v26 = *(v2 + 36);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F13BA9C(&v68, &v62, &qword_27DAB1970, &qword_22F7731A8);
  sub_22F18A320();
  sub_22F742210();
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v62 = v68;
  v63 = v69;
  v76 = 0;
  sub_22F18A374();
  v19 = v51;
  sub_22F741F70();
  if (v19)
  {
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v61 = v67;
    v56 = v62;
    v57 = v63;
    sub_22F120ADC(&v56, &qword_27DAB1970, &qword_22F7731A8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v21 = v46;
    v51 = v17;
    v22 = v47 | (v48 << 32);
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v61 = v67;
    v56 = v62;
    v57 = v63;
    sub_22F120ADC(&v56, &qword_27DAB1970, &qword_22F7731A8);
    *&v52 = v50;
    *(&v52 + 1) = v49;
    BYTE4(v53) = BYTE4(v22);
    LODWORD(v53) = v22;
    BYTE5(v53) = v74;
    v75 = 1;
    sub_22F18A3C8();
    sub_22F741F70();
    *&v52 = v21;
    *(&v52 + 1) = v44;
    BYTE4(v53) = (v42 | (v43 << 32)) >> 32;
    LODWORD(v53) = v42;
    BYTE5(v53) = v45;
    v75 = 2;
    sub_22F741F70();
    *&v52 = v40;
    *(&v52 + 1) = v39;
    BYTE4(v53) = (v37 | (v38 << 32)) >> 32;
    LODWORD(v53) = v37;
    BYTE5(v53) = v41;
    v75 = 3;
    sub_22F741F70();
    *&v52 = v35;
    *(&v52 + 1) = v34;
    BYTE4(v53) = (v32 | (v33 << 32)) >> 32;
    LODWORD(v53) = v32;
    BYTE5(v53) = v36;
    v75 = 4;
    sub_22F741F70();
    v23 = v2[15];
    v54 = v2[14];
    v55[0] = v23;
    *(v55 + 15) = *(v2 + 255);
    v24 = v2[13];
    v52 = v2[12];
    v53 = v24;
    v75 = 5;
    sub_22F18A41C();
    sub_22F741F70();
    *&v52 = v30;
    *(&v52 + 1) = v29;
    BYTE4(v53) = (v27 | (v28 << 32)) >> 32;
    LODWORD(v53) = v27;
    BYTE5(v53) = v31;
    v75 = 6;
    sub_22F741F70();
    *&v52 = v26;
    *(&v52 + 1) = v51;
    v75 = 7;
    sub_22F18A470(v26);
    sub_22F18A4B8();
    sub_22F741F70();
    sub_22F18A50C(v52);
    v25 = v2[20];
    v52 = v2[19];
    v53 = v25;
    v54 = v2[21];
    LOWORD(v55[0]) = *(v2 + 176);
    v75 = 8;
    sub_22F18A550();
    sub_22F741F70();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19A0, &qword_22F7731B0);
  v5 = *(v126 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v126);
  v8 = &v29 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A320();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v51 = a2;
  v103 = 0;
  sub_22F18A5A4();
  sub_22F741EA0();
  v122 = v106;
  v123 = v107;
  v124 = v108;
  v125 = v109;
  v120 = v104;
  v121 = v105;
  LOBYTE(v52[0]) = 1;
  sub_22F18A5F8();
  sub_22F741EA0();
  v49 = *(&v53 + 1);
  v50 = v53;
  v11 = BYTE4(v54);
  v12 = v54;
  v119 = BYTE5(v54);
  LOBYTE(v52[0]) = 2;
  sub_22F741EA0();
  v45 = v12;
  v46 = v11;
  v47 = *(&v53 + 1);
  v48 = v53;
  v13 = BYTE4(v54);
  v14 = v54;
  v118 = BYTE5(v54);
  LOBYTE(v52[0]) = 3;
  sub_22F741EA0();
  v42 = v14;
  v43 = v13;
  v41 = *(&v53 + 1);
  v44 = v53;
  v15 = BYTE4(v54);
  v16 = v54;
  v117 = BYTE5(v54);
  LOBYTE(v52[0]) = 4;
  sub_22F741EA0();
  v37 = v15;
  v38 = v16;
  v39 = *(&v53 + 1);
  v40 = v53;
  v17 = BYTE4(v54);
  v18 = v54;
  v116 = BYTE5(v54);
  v98 = 5;
  sub_22F18A64C();
  sub_22F741EA0();
  v35 = v18;
  v36 = v17;
  *&v115[18] = v100;
  *&v115[34] = v101;
  *&v115[50] = *v102;
  *&v115[65] = *&v102[15];
  *&v115[2] = v99;
  LOBYTE(v52[0]) = 6;
  sub_22F741EA0();
  v33 = *(&v53 + 1);
  v34 = v53;
  v19 = BYTE4(v54);
  v20 = v54;
  v114 = BYTE5(v54);
  LOBYTE(v52[0]) = 7;
  sub_22F18A6A0();
  sub_22F741EA0();
  v32 = v53;
  v93 = 8;
  sub_22F18A6F4();
  sub_22F741EA0();
  v31 = v45 | (v46 << 32);
  v21 = v42 | (v43 << 32);
  v42 = v38 | (v37 << 32);
  v43 = v21;
  v22 = *(v10 + 8);
  v45 = v20 | (v19 << 32);
  v46 = v35 | (v36 << 32);
  v22(v8, v126);
  v110 = v94;
  v111 = v95;
  v112 = v96;
  v52[2] = v122;
  v52[3] = v123;
  v52[4] = v124;
  v52[5] = v125;
  v52[0] = v120;
  v52[1] = v121;
  *(&v52[11] + 14) = *v115;
  *(&v52[15] + 7) = *&v115[57];
  *(&v52[14] + 14) = *&v115[48];
  *(&v52[13] + 14) = *&v115[32];
  *(&v52[12] + 14) = *&v115[16];
  v113 = v97;
  *&v52[6] = v50;
  *(&v52[6] + 1) = v49;
  v37 = HIDWORD(v31);
  BYTE4(v52[7]) = BYTE4(v31);
  LODWORD(v52[7]) = v31;
  LODWORD(v36) = v119;
  BYTE5(v52[7]) = v119;
  *(&v52[7] + 1) = v48;
  *&v52[8] = v47;
  v35 = HIDWORD(v43);
  BYTE12(v52[8]) = BYTE4(v43);
  DWORD2(v52[8]) = v43;
  v30 = v118;
  BYTE13(v52[8]) = v118;
  v23 = v41;
  *&v52[9] = v44;
  *(&v52[9] + 1) = v41;
  v24 = HIDWORD(v42);
  BYTE4(v52[10]) = BYTE4(v42);
  LODWORD(v52[10]) = v42;
  LOBYTE(v19) = v117;
  BYTE5(v52[10]) = v117;
  v25 = v39;
  *(&v52[10] + 1) = v40;
  *&v52[11] = v39;
  v26 = HIDWORD(v46);
  BYTE12(v52[11]) = BYTE4(v46);
  DWORD2(v52[11]) = v46;
  v27 = v116;
  BYTE13(v52[11]) = v116;
  *(&v52[16] + 1) = v34;
  *&v52[17] = v33;
  DWORD2(v52[17]) = v45;
  v38 = HIDWORD(v45);
  BYTE12(v52[17]) = BYTE4(v45);
  LODWORD(v126) = v114;
  BYTE13(v52[17]) = v114;
  v52[18] = v32;
  LOWORD(v52[22]) = v97;
  v52[20] = v95;
  v52[21] = v96;
  v52[19] = v94;
  memcpy(v51, v52, 0x162uLL);
  sub_22F18A748(v52, &v53);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v55 = v122;
  v56 = v123;
  v57 = v124;
  v58 = v125;
  v53 = v120;
  v54 = v121;
  v59 = v50;
  v60 = v49;
  v62 = v37;
  v61 = v31;
  v63 = v36;
  v64 = v48;
  v65 = v47;
  v67 = v35;
  v66 = v43;
  v68 = v30;
  v69 = v44;
  v70 = v23;
  v72 = v24;
  v71 = v42;
  v73 = v19;
  v74 = v40;
  v75 = v25;
  v77 = v26;
  v76 = v46;
  v78 = v27;
  v80 = *&v115[16];
  v81 = *&v115[32];
  *v82 = *&v115[48];
  *&v82[9] = *&v115[57];
  v79 = *v115;
  v83 = v34;
  v84 = v33;
  v86 = v38;
  v85 = v45;
  v87 = v126;
  v88 = v32;
  v92 = v113;
  v90 = v111;
  v91 = v112;
  v89 = v110;
  return sub_22F18A780(&v53);
}

uint64_t sub_22F17FD5C(uint64_t a1)
{
  v2 = sub_22F18A7B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F17FD98(uint64_t a1)
{
  v2 = sub_22F18A7B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19A8, &qword_22F7731B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  memcpy(v12, v1, 0x162uLL);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F13BA9C(v12, v11, &qword_27DAB19B0, &qword_22F7731C0);
  sub_22F18A7B0();
  sub_22F742210();
  memcpy(v11, v12, 0x162uLL);
  sub_22F18A804();
  sub_22F741F70();
  memcpy(v10, v11, 0x162uLL);
  sub_22F120ADC(v10, &qword_27DAB19B0, &qword_22F7731C0);
  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19C0, &qword_22F7731C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A7B0();
  sub_22F742200();
  if (!v2)
  {
    v10 = v13;
    sub_22F18A858();
    sub_22F741EA0();
    (*(v5 + 8))(v8, v4);
    memcpy(v10, v12, 0x162uLL);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F180154(uint64_t a1)
{
  v2 = sub_22F18A8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180190(uint64_t a1)
{
  v2 = sub_22F18A8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19C8, &qword_22F7731D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A8AC();

  sub_22F742210();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19D0, &qword_22F7731D8);
  sub_22F18A900();
  sub_22F741F70();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19E8, &qword_22F7731E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18A8AC();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19D0, &qword_22F7731D8);
    sub_22F18A9D8();
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F180508(uint64_t a1)
{
  v2 = sub_22F18AAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180544(uint64_t a1)
{
  v2 = sub_22F18AAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F180638(uint64_t a1)
{
  v2 = sub_22F18ABFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180674(uint64_t a1)
{
  v2 = sub_22F18ABFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F1806F4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *v4;
  v17 = *(v4 + 2);
  v16 = *(v4 + 12);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();

  sub_22F742210();
  v23 = v11;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F18AB04();
  v13 = v19;
  sub_22F741FE0();

  if (!v13)
  {
    v21 = 1;
    v20 = v16;
    sub_22F741F50();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22F180900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F742200();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v8;
  v14 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v23 = 0;
  sub_22F18AB80();
  v15 = v21;
  sub_22F741F10();
  v16 = v24;
  v22 = 1;
  v17 = sub_22F741E80();
  (*(v13 + 8))(v11, v15);
  *v14 = v16;
  *(v14 + 8) = v17;
  *(v14 + 12) = BYTE4(v17) & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F180B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F790090 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F180C48(uint64_t a1)
{
  v2 = sub_22F18AC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180C84(uint64_t a1)
{
  v2 = sub_22F18AC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F180D48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  if (sub_22F17AA10(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_22F180DE8()
{
  v1 = 0x6C426F5465646166;
  v2 = 0x65536E49656D6974;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x756C61566E696167;
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

uint64_t sub_22F180E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F190FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F180EA8(uint64_t a1)
{
  v2 = sub_22F18ACA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F180EE4(uint64_t a1)
{
  v2 = sub_22F18ACA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.ExitPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A28, &qword_22F773220);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v14 = *(v1 + 1);
  v10 = v1[4];
  v11 = *(v1 + 3);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACA4();
  sub_22F742210();
  LOBYTE(v16) = 0;
  sub_22F741FB0();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    sub_22F18AB04();
    sub_22F741FE0();
    LOBYTE(v16) = 2;
    sub_22F741FB0();
    v16 = v11;
    v15 = 3;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.ExitPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A30, &qword_22F773228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACA4();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v19) = 0;
  sub_22F741EE0();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v18 = 1;
  sub_22F18AB80();
  sub_22F741F10();
  v17 = v19;
  LOBYTE(v19) = 2;
  sub_22F741EE0();
  v14 = v13;
  v18 = 3;
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v16 = v19;
  *a2 = v12;
  *(a2 + 8) = v17;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.EntryPoint.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = a1[2];
  result = *(a1 + 2);
  v7 = a2[2];
  v8 = *(a2 + 2);
  if (v4)
  {
    v9 = v2 == v3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    if (v5 == v7)
    {
      return sub_22F17AA10(result, v8);
    }

    return 0;
  }

  v10 = (v2 + 32);
  v11 = (v3 + 32);
  while (v4)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F18147C()
{
  v1 = 0x65536E49656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756C61566E696167;
  }
}

uint64_t sub_22F1814EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F191124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F181514(uint64_t a1)
{
  v2 = sub_22F18ACF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F181550(uint64_t a1)
{
  v2 = sub_22F18ACF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.EntryPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A38, &qword_22F773230);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v15 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACF8();

  sub_22F742210();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F18AB04();
  sub_22F741FE0();

  if (!v2)
  {
    v12 = v15;
    LOBYTE(v17) = 1;
    sub_22F741FB0();
    v17 = v12;
    v16 = 2;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.EntryPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A40, &qword_22F773238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ACF8();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v17 = 0;
  sub_22F18AB80();
  sub_22F741F10();
  v16 = v18;
  LOBYTE(v18) = 1;
  sub_22F741EE0();
  v12 = v11;
  v17 = 2;
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v14 = v18;
  *a2 = v16;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F181A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_22F17AA10(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_22F17AA10(v3, v5);
}

uint64_t static MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.VideoEvents.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_22F17AA10(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return sub_22F17AA10(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F181B18()
{
  if (*v0)
  {
    result = 0x65536E49656D6974;
  }

  else
  {
    result = 0x65726F6373;
  }

  *v0;
  return result;
}

uint64_t sub_22F181B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22F181C3C(uint64_t a1)
{
  v2 = sub_22F18AD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F181C78(uint64_t a1)
{
  v2 = sub_22F18AD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.VideoEvents.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A48, &qword_22F773240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18AD4C();

  sub_22F742210();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F18AB04();
  sub_22F741FE0();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.VideoEvents.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A50, &qword_22F773248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18AD4C();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v16 = 0;
  sub_22F18AB80();
  sub_22F741F10();
  v11 = v17;
  v16 = 1;
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F182094(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_22F17AA10(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22F17AA10(v2, v3);
}

uint64_t sub_22F182124()
{
  v1 = *v0;
  v2 = 0x65636E656C6176;
  v3 = 0x6E696F5074697865;
  v4 = 0x696F507972746E65;
  if (v1 != 4)
  {
    v4 = 0x6576456F65646976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6173756F7261;
  if (v1 != 1)
  {
    v5 = 0x65546C6175736976;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F1821FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F191254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F182230(uint64_t a1)
{
  v2 = sub_22F18ADA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F18226C(uint64_t a1)
{
  v2 = sub_22F18ADA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A58, &qword_22F773250);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 12);
  v10 = *(v1 + 16);
  v31 = *(v1 + 28);
  v32 = v10;
  v30 = *(v1 + 24);
  v11 = *(v1 + 32);
  v28 = *(v1 + 44);
  v29 = v11;
  v27 = *(v1 + 40);
  v12 = *(v1 + 48);
  v25 = *(v1 + 56);
  v26 = v12;
  v13 = *(v1 + 72);
  v23 = *(v1 + 64);
  v24 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ADA0();

  sub_22F742210();
  v35 = v7;
  v15 = v3;
  BYTE4(v36) = v9;
  LODWORD(v36) = v8;
  v37 = 0;
  sub_22F18ADF4();
  v16 = v33;
  sub_22F741F70();
  if (v16)
  {

    return (*(v34 + 8))(v6, v3);
  }

  else
  {
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v21 = v34;
    v22 = v30 | (v31 << 32);

    v35 = v32;
    BYTE4(v36) = BYTE4(v22);
    LODWORD(v36) = v22;
    v37 = 1;
    sub_22F18AE48();

    sub_22F741F70();

    v35 = v20;
    BYTE4(v36) = (v18 | (v19 << 32)) >> 32;
    LODWORD(v36) = v18;
    v37 = 2;
    sub_22F18AE9C();

    sub_22F741F70();

    v35 = v26;
    v37 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A78, &qword_22F773258);
    sub_22F18AEF0();
    sub_22F741F70();
    v35 = v25;
    v37 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A90, &qword_22F773260);
    sub_22F18AFC8();
    sub_22F741F70();
    v35 = v23;
    v36 = v24;
    v37 = 5;
    sub_22F13BB74(v23);
    sub_22F18B0A0();
    sub_22F741F70();
    sub_22F18B0F4(v35);
    return (*(v21 + 8))(v6, v15);
  }
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AB0, &qword_22F773268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18ADA0();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v44) = 0;
  sub_22F18B134();
  sub_22F741EA0();
  v43 = a2;
  v11 = v49;
  v12 = v51;
  v13 = v50;
  LOBYTE(v44) = 1;
  sub_22F18B188();
  sub_22F741EA0();
  v42 = v11;
  v39 = v13;
  v40 = v12;
  v41 = v49;
  v14 = v51;
  v15 = v50;
  LOBYTE(v44) = 2;
  sub_22F18B1DC();
  sub_22F741EA0();
  v36 = v15;
  v37 = v14;
  v38 = v49;
  v16 = v51;
  v17 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A78, &qword_22F773258);
  LOBYTE(v44) = 3;
  sub_22F18B230();
  sub_22F741EA0();
  v34 = v16;
  v33 = v17;
  v35 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1A90, &qword_22F773260);
  LOBYTE(v44) = 4;
  sub_22F18B308();
  sub_22F741EA0();
  v18 = v34;
  v32 = v49;
  v63 = 5;
  sub_22F18B3E0();
  sub_22F741EA0();
  v19 = v39 | (v40 << 32);
  v20 = v36 | (v37 << 32);
  v21 = v33 | (v18 << 32);
  (*(v6 + 8))(v9, v5);
  v34 = *(&v62 + 1);
  *&v44 = v42;
  v39 = v19;
  v40 = HIDWORD(v19);
  BYTE12(v44) = BYTE4(v19);
  DWORD2(v44) = v19;
  v22 = v41;
  *&v45 = v41;
  v36 = v20;
  v37 = HIDWORD(v20);
  BYTE12(v45) = BYTE4(v20);
  DWORD2(v45) = v20;
  v23 = v32;
  v24 = v38;
  *&v46 = v38;
  BYTE12(v46) = BYTE4(v21);
  DWORD2(v46) = v21;
  v25 = v35;
  *&v47 = v35;
  *(&v47 + 1) = v32;
  v48 = v62;
  v26 = v62;
  v27 = v47;
  v28 = v43;
  v43[2] = v46;
  v28[3] = v27;
  v29 = v45;
  *v28 = v44;
  v28[1] = v29;
  v28[4] = v48;
  sub_22F18B434(&v44, &v49);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v49 = v42;
  v51 = v40;
  v50 = v39;
  v52 = v22;
  v54 = v37;
  v53 = v36;
  v55 = v24;
  v57 = BYTE4(v21);
  v56 = v21;
  v58 = v25;
  v59 = v23;
  v60 = v26;
  v61 = v34;
  return sub_22F18B46C(&v49);
}

uint64_t sub_22F182CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_22F182D68(uint64_t a1)
{
  v2 = sub_22F18B49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F182DA4(uint64_t a1)
{
  v2 = sub_22F18B49C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AB8, &qword_22F773270);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v22 = v1[4];
  v9 = v1[1];
  v18 = *v1;
  v19 = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F13BA9C(&v18, &v13, &qword_27DAB1AC0, &qword_22F773278);
  sub_22F18B49C();
  sub_22F742210();
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v13 = v18;
  v14 = v19;
  sub_22F18B4F0();
  sub_22F741F70();
  v12[2] = v15;
  v12[3] = v16;
  v12[4] = v17;
  v12[1] = v14;
  v12[0] = v13;
  sub_22F120ADC(v12, &qword_27DAB1AC0, &qword_22F773278);
  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AD0, &qword_22F773280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B49C();
  sub_22F742200();
  if (!v2)
  {
    sub_22F18B544();
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    v11 = v14[3];
    a2[2] = v14[2];
    a2[3] = v11;
    a2[4] = v14[4];
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F18318C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v6 = *a2;

      LOBYTE(a3) = a3(v3, v4);

      if (a3)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F1831FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_22F183284(uint64_t a1)
{
  v2 = sub_22F18B598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1832C0(uint64_t a1)
{
  v2 = sub_22F18B598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AD8, &qword_22F773288);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B598();

  sub_22F742210();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AE0, &qword_22F773290);
  sub_22F18B5EC();
  sub_22F741F70();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AF8, &qword_22F773298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B598();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1AE0, &qword_22F773290);
    sub_22F18B6C4();
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F183608(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v6)
    {
      v8 = *a2;

      LOBYTE(a5) = a5(v5, v6);

      if (a5)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV10AttributesV7PreviewV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F1836E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_22F183764(uint64_t a1)
{
  v2 = sub_22F18B79C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1837A0(uint64_t a1)
{
  v2 = sub_22F18B79C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.Relationships.EquivalentsData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B00, &qword_22F7732A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B79C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22F18395C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22F742200();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_22F741EB0();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F183AF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B00, &qword_22F7732A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18B79C();
  sub_22F742210();
  sub_22F741F80();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B18, &qword_22F7732B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v16 = v1[3];
  v17 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BC24();

  sub_22F742210();
  v20 = v9;
  v19 = 0;
  sub_22F18BC78();
  v12 = v18;
  sub_22F741F70();
  if (v12)
  {
  }

  else
  {
    v13 = v16;
    v14 = v17;

    v20 = v8;
    v19 = 1;
    sub_22F1007AC(v8);
    sub_22F18BCCC();
    sub_22F741F70();
    sub_22F1007BC(v20);
    v20 = v14;
    v19 = 2;
    sub_22F1007AC(v14);
    sub_22F18BD20();
    sub_22F741F70();
    sub_22F1007BC(v20);
    v20 = v13;
    v19 = 3;
    sub_22F1007AC(v13);
    sub_22F18BD74();
    sub_22F741F70();
    sub_22F1007BC(v20);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.Relationships.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B40, &qword_22F7732B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BC24();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  sub_22F18BDC8();
  sub_22F741EA0();
  v11 = v20;
  v19 = 1;
  sub_22F18BE1C();
  sub_22F741EA0();
  v18 = v20;
  v19 = 2;
  sub_22F18BE70();
  sub_22F741EA0();
  v17 = v20;
  v19 = 3;
  sub_22F18BEC4();
  sub_22F741EA0();
  (*(v6 + 8))(v9, v5);
  v13 = v20;
  v15 = v17;
  v14 = v18;
  *a2 = v11;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v13;

  sub_22F1007AC(v14);
  sub_22F1007AC(v15);
  sub_22F1007AC(v13);
  __swift_destroy_boxed_opaque_existential_0(a1);

  sub_22F1007BC(v14);
  sub_22F1007BC(v15);
  return sub_22F1007BC(v13);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.dateUTC.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.lastEndReason.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t sub_22F1842A4()
{
  v1 = *v0;
  v2 = 0x43545565746164;
  v3 = 0x73656369766564;
  if (v1 != 6)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x6E756F4370696B73;
  if (v1 != 4)
  {
    v4 = 0x52646E457473616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v1 != 2)
  {
    v5 = 0x6E756F4379616C70;
  }

  if (*v0)
  {
    v2 = 0x4354557372756F68;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}