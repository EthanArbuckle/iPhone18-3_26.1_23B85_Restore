uint64_t sub_22F1BB79C()
{
  v1 = v0;
  v62 = *MEMORY[0x277D85DE8];
  if (qword_2810A9AB0 != -1)
  {
LABEL_47:
    swift_once();
  }

  v2 = qword_2810B4DD8;
  *&v3 = CACurrentMediaTime();
  sub_22F1B560C("MockFetchUsableFlexSongs", 24, 2u, v3, 0, v2, v60);
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("MockFetchUsableFlexSongs", 24, 2u, v4, 0, v2, v61);
  v5 = sub_22F1BAF58();
  if (v1)
  {
    sub_22F1B2BBC(0);

    sub_22F1B2BBC(0);

LABEL_52:
    v40 = *MEMORY[0x277D85DE8];
    return v1;
  }

  v6 = v5;
  if (v5 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v1 = sub_22F741D50();
    swift_bridgeObjectRelease_n();
    v6 = v1;
  }

  else
  {

    sub_22F742060();

    v1 = v6;
  }

  sub_22F1B2BBC(0);

  v59 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    v7 = sub_22F741A00();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_50:
    v1 = MEMORY[0x277D84F90];
LABEL_51:

    sub_22F1B2BBC(0);

    goto LABEL_52;
  }

  v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_50;
  }

LABEL_8:
  v42 = 0;
  v8 = 0;
  v9 = v1 & 0xC000000000000001;
  v10 = v1 & 0xFFFFFFFFFFFFFF8;
  v43 = v6;
  v11 = v6 + 32;
  v53 = *MEMORY[0x277D0A980];
  v12 = &off_27888E000;
  v47 = v7;
  v46 = v1 & 0xC000000000000001;
  v45 = v1 & 0xFFFFFFFFFFFFFF8;
  v44 = v11;
  while (1)
  {
    while (1)
    {
      if (v9)
      {
        v1 = MEMORY[0x2319016F0](v8, v43);
        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_46;
        }

        v1 = *(v11 + 8 * v8);
        swift_unknownObjectRetain();
        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_45;
        }
      }

      if (([v1 v12[326]] & 1) == 0)
      {
        break;
      }

LABEL_14:
      swift_unknownObjectRelease();
      if (v8 == v7)
      {
LABEL_43:
        v1 = v59;
        goto LABEL_51;
      }
    }

    v14 = [v1 hidden];
    v52 = v1;
    if (v14)
    {
      break;
    }

LABEL_9:
    sub_22F741BA0();
    v1 = *(v59 + 16);
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
    if (v8 == v7)
    {
      goto LABEL_43;
    }
  }

  v15 = [v1 tagIDs];
  v16 = sub_22F741420();

  v18 = *(v16 + 32);
  v49 = ((1 << v18) + 63) >> 6;
  if ((v18 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v48 = &v42;
    MEMORY[0x28223BE20](v17);
    v50 = &v42 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v50, v19);
    v51 = 0;
    v1 = 0;
    v54 = v16;
    v20 = v16 + 56;
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 56);
    v24 = (v21 + 63) >> 6;
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v26 = v25 | (v1 << 6);
      v27 = v54;
LABEL_29:
      v30 = (*(v27 + 48) + 16 * v26);
      v31 = v30[1];
      v57 = *v30;
      v58 = v31;
      v55 = sub_22F740E20();
      v56 = v32;
      sub_22F160DE4();

      v33 = sub_22F741910();

      if (v33)
      {
        *&v50[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        v13 = __OFADD__(v51++, 1);
        if (v13)
        {
          __break(1u);
        }
      }
    }

    v28 = v1;
    v27 = v54;
    while (1)
    {
      v1 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v1 >= v24)
      {
        v34 = sub_22F1B8E24(v50, v49, v51, v54);
        v7 = v47;
        v9 = v46;
        v10 = v45;
        v11 = v44;
        v12 = &off_27888E000;
        goto LABEL_34;
      }

      v29 = *(v20 + 8 * v1);
      ++v28;
      if (v29)
      {
        v23 = (v29 - 1) & v29;
        v26 = __clz(__rbit64(v29)) | (v1 << 6);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v35 = swift_slowAlloc();

  v54 = v35;
  v36 = v35;
  v37 = v42;
  v38 = sub_22F1B8D94(v36, v49, v16, sub_22F1BAD5C);
  v42 = v37;
  if (!v37)
  {
    v39 = v38;
    swift_bridgeObjectRelease_n();
    MEMORY[0x2319033A0](v54, -1, -1);
    v34 = v39;
LABEL_34:
    v1 = *(v34 + 16);

    if (!v1)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x2319033A0](v54, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_22F1BBE50()
{
  result = qword_27DAB2160;
  if (!qword_27DAB2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2160);
  }

  return result;
}

unint64_t sub_22F1BBED8()
{
  result = qword_27DAB2168;
  if (!qword_27DAB2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2168);
  }

  return result;
}

id FlexMusicKitSongProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::String __swiftcall FlexMusicKitSongProvider.name()()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2170, &unk_22F778940);
  v0 = sub_22F740E90();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

BOOL sub_22F1BC034(uint64_t a1)
{
  v41[4] = *MEMORY[0x277D85DE8];
  sub_22F1BCD04(a1, v41);
  if (!v41[3])
  {
LABEL_20:
    sub_22F1BCC9C(v41);
LABEL_21:
    if (qword_2810A9460 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  sub_22F1BCC38();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v1 = v39;
  if ([v39 recalled])
  {
LABEL_24:

    result = 0;
    goto LABEL_25;
  }

  if (([v39 hidden]& 1) == 0)
  {

    result = 1;
    goto LABEL_25;
  }

  v2 = [v39 tagIDs];
  v3 = sub_22F741420();

  v5 = *(v3 + 32);
  v34 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_6;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_6:
    v33 = &v33;
    MEMORY[0x28223BE20](v4);
    v35 = &v33 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v6);
    v36 = 0;
    v7 = 0;
    v38 = v3;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v37 = *MEMORY[0x277D0A980];
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v15 = v12 | (v7 << 6);
      v16 = (*(v38 + 48) + 16 * v15);
      v17 = v16[1];
      v41[0] = *v16;
      v41[1] = v17;
      v39 = sub_22F740E20();
      v40 = v18;
      sub_22F160DE4();

      v19 = sub_22F741910();

      if (v19)
      {
        *&v35[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
          goto LABEL_20;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        v30 = sub_22F1B8E24(v35, v34, v36, v38);
        goto LABEL_28;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
LABEL_22:
    v21 = sub_22F740B90();
    __swift_project_value_buffer(v21, qword_2810B4D90);
    v1 = sub_22F740B70();
    v22 = sub_22F7415E0();
    if (os_log_type_enabled(v1, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41[0] = v24;
      *v23 = 136315138;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C28, &qword_22F778980);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2178, &unk_22F778988);
      v25 = sub_22F740E90();
      v27 = sub_22F145F20(v25, v26, v41);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_22F0FC000, v1, v22, "(FlexMusicCurator) Unsupported evaluatedObject type: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2319033A0](v24, -1, -1);
      MEMORY[0x2319033A0](v23, -1, -1);
    }

    goto LABEL_24;
  }

  v32 = swift_slowAlloc();
  v30 = sub_22F1B8D94(v32, v34, v3, sub_22F1BAD5C);

  MEMORY[0x2319033A0](v32, -1, -1);
LABEL_28:

  v31 = *(v30 + 16);

  result = v31 != 0;
LABEL_25:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F1BC4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (!a2)
  {
    memset(v11, 0, sizeof(v11));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v9 = a2;
  sub_22F107D08(&v9, v11);
  if (v3)
  {
LABEL_3:
    v3 = sub_22F740CA0();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v7 = v6(v11, v3);

  sub_22F1BCC9C(v11);
  return v7 & 1;
}

id sub_22F1BC614(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v4 = sub_22F741160();

  return v4;
}

id FlexMusicKitSongProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlexMusicKitSongProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1BC788()
{
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  v0 = qword_2810B4DD8;
  *&v1 = CACurrentMediaTime();
  sub_22F1B560C("FetchUsableFlexSongs", 20, 2u, v1, 0, v0, v13);
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2810A91C8;
  v3 = objc_allocWithZone(MEMORY[0x277D0A990]);
  v4 = v2;
  v5 = [v3 init];
  v12[4] = sub_22F1BC034;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22F1BC4F8;
  v12[3] = &block_descriptor_2;
  v6 = _Block_copy(v12);
  v7 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v6);

  [v5 setPredicate_];

  v8 = [v4 fetchSongsWithOptions_];
  sub_22F1BCC38();
  v9 = sub_22F741180();

  if (v9 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v10 = sub_22F741D50();
  }

  else
  {
    sub_22F742060();

    v10 = v9;
  }

  sub_22F1B2BBC(0);

  return v10;
}

uint64_t sub_22F1BCA28()
{
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  v0 = qword_2810B4DD8;
  *&v1 = CACurrentMediaTime();
  sub_22F1B560C("FetchAllFlexSongs", 17, 2u, v1, 0, v0, v10);
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2810A91C8;
  v3 = objc_allocWithZone(MEMORY[0x277D0A990]);
  v4 = v2;
  v5 = [v3 init];
  v6 = [v4 fetchSongsWithOptions_];
  sub_22F1BCC38();
  v7 = sub_22F741180();

  if (v7 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v8 = sub_22F741D50();
  }

  else
  {
    sub_22F742060();

    v8 = v7;
  }

  sub_22F1B2BBC(0);

  return v8;
}

unint64_t sub_22F1BCC38()
{
  result = qword_2810A8F08;
  if (!qword_2810A8F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8F08);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F1BCC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C28, &qword_22F778980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F1BCD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C28, &qword_22F778980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CollectionElector.__allocating_init(sources:photoLibrary:presentDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CollectionElector.init(sources:photoLibrary:presentDate:)(a1, a2, a3);
  return v9;
}

uint64_t CollectionElector.init(sources:photoLibrary:presentDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F740B80();
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2180, &qword_22F778998));
  v18 = a2;
  *(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_assetElector) = sub_22F73FEA0();
  v19 = sub_22F740310();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v18;
  *(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_suggestionsPersister) = sub_22F740300();
  *(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources) = a1;
  sub_22F13BA9C(a3, v11, &qword_27DAB0920, &qword_22F770B20);
  v23 = *(v13 + 48);
  if (v23(v11, 1, v12) == 1)
  {
    sub_22F73F650();

    sub_22F120ADC(a3, &qword_27DAB0920, &qword_22F770B20);
    if (v23(v11, 1, v12) != 1)
    {
      sub_22F120ADC(v11, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    sub_22F120ADC(a3, &qword_27DAB0920, &qword_22F770B20);

    (*(v13 + 32))(v16, v11, v12);
  }

  (*(v13 + 32))(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate, v16, v12);
  return v4;
}

uint64_t sub_22F1BD0A0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2188, &qword_22F7789A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v229 = &v226 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2190, &qword_22F7789A8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v226 - v11;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1308, &qword_22F7789B0);
  v256 = *(v249 - 8);
  v13 = *(v256 + 64);
  v14 = MEMORY[0x28223BE20](v249 - 8);
  v230 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v265 = &v226 - v17;
  MEMORY[0x28223BE20](v16);
  v264 = &v226 - v18;
  v19 = sub_22F740460();
  v228 = *(v19 - 8);
  v20 = *(v228 + 64);
  MEMORY[0x28223BE20](v19);
  v232 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TriggerResult();
  v261 = *(v22 - 8);
  v23 = *(v261 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v260 = (&v226 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v259 = (&v226 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2198, &unk_22F7789B8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v234 = &v226 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v244 = &v226 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v254 = &v226 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = (&v226 - v38);
  v266 = sub_22F740390();
  *&v227 = *(v266 - 8);
  v40 = *(v227 + 64);
  v41 = MEMORY[0x28223BE20](v266);
  v238 = &v226 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v235 = &v226 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v242 = &v226 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v245 = (&v226 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v255 = &v226 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v251 = &v226 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v237 = &v226 - v54;
  MEMORY[0x28223BE20](v53);
  v258 = (&v226 - v55);
  v56 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;

  v248 = v56;
  v57 = sub_22F740B70();
  v58 = sub_22F7415F0();
  if (os_log_type_enabled(v57, v58))
  {
    v1 = swift_slowAlloc();
    *v1 = 134217984;
    *(v1 + 4) = *(*(v2 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources) + 16);

    _os_log_impl(&dword_22F0FC000, v57, v58, "Electing collections for %ld sources", v1, 0xCu);
    MEMORY[0x2319033A0](v1, -1, -1);
  }

  else
  {
  }

  v252 = v39;
  v243 = v31;
  v236 = v19;
  v253 = v2;
  v60 = *(v2 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources);
  v61 = *(v60 + 16);
  v267 = v60;
  if (v61)
  {
    v62 = 0;
    v63 = v60 + 32;
    v64 = MEMORY[0x277D84F90];
    while (v62 < *(v60 + 16))
    {
      sub_22F15C30C(v63, &v275);
      v65 = v276;
      v66 = v277;
      __swift_project_boxed_opaque_existential_1(&v275, v276);
      (*(v66 + 32))(&v272, v65, v66);
      v1 = v274;
      __swift_project_boxed_opaque_existential_1(&v272, v273);
      sub_22F740730();
      if (v67)
      {

        __swift_destroy_boxed_opaque_existential_0(&v272);
        sub_22F100260(&v275, &v272);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v270 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F14687C(0, *(v64 + 16) + 1, 1);
          v64 = v270;
        }

        v1 = *(v64 + 16);
        v69 = *(v64 + 24);
        if (v1 >= v69 >> 1)
        {
          sub_22F14687C((v69 > 1), v1 + 1, 1);
          v64 = v270;
        }

        *(v64 + 16) = v1 + 1;
        sub_22F100260(&v272, v64 + 40 * v1 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v272);
        __swift_destroy_boxed_opaque_existential_0(&v275);
      }

      ++v62;
      v63 += 40;
      v60 = v267;
      if (v61 == v62)
      {
        goto LABEL_16;
      }
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_16:
  v262 = v12;
  v70 = *(v64 + 16);
  v247 = v10;
  v71 = v252;
  if (v70)
  {
    v72 = v64 + 32;
    v263 = (v227 + 16);
    v73 = (v227 + 56);
    v257 = (v227 + 48);
    v246 = (v227 + 32);
    v241 = (v227 + 8);
    v233 = (v228 + 8);
    v268 = MEMORY[0x277D84F98];
    *&v59 = 136315394;
    v231 = v59;
    v74 = v266;
    v250 = (v227 + 56);
    v240 = v64;
    while (1)
    {
      sub_22F15C30C(v72, &v275);
      v75 = v276;
      v76 = v277;
      __swift_project_boxed_opaque_existential_1(&v275, v276);
      v77 = (*(v76 + 16))(v75, v76);
      if (!*(v77 + 16))
      {
        break;
      }

      sub_22F15C30C(v77 + 32, &v270);

      sub_22F100260(&v270, &v272);
      v78 = v273;
      v79 = v274;
      __swift_project_boxed_opaque_existential_1(&v272, v273);
      v80 = (*(v79 + 8))(v78, v79);
      if (!*(v80 + 16))
      {

        __swift_destroy_boxed_opaque_existential_0(&v272);
        goto LABEL_19;
      }

      v81 = v260;
      sub_22F13C46C(v80 + ((*(v261 + 80) + 32) & ~*(v261 + 80)), v260);

      v82 = v259;
      sub_22F13DBFC(v81, v259);
      v83 = *v263;
      (*v263)(v71, v82, v74);
      sub_22F13DBA0(v82);
      (*v73)(v71, 0, 1, v74);
      __swift_destroy_boxed_opaque_existential_0(&v272);
      if ((*v257)(v71, 1, v74) != 1)
      {
        v84 = v258;
        (*v246)(v258, v71, v74);
        v85 = v276;
        v86 = v277;
        __swift_project_boxed_opaque_existential_1(&v275, v276);
        (*(v86 + 32))(&v272, v85, v86);
        __swift_project_boxed_opaque_existential_1(&v272, v273);
        v87 = sub_22F740740();
        v89 = v88;
        v90 = v237;
        v83(v237, v84, v74);
        v91 = v268;
        v92 = swift_isUniquelyReferenced_nonNull_native();
        *&v270 = v91;
        sub_22F130CA4(v90, v87, v89, v92);

        v268 = v270;
        __swift_destroy_boxed_opaque_existential_0(&v272);
        v93 = v251;
        v83(v251, v84, v74);
        v94 = v255;
        v83(v255, v84, v74);
        v95 = sub_22F740B70();
        v96 = sub_22F7415F0();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          *&v272 = v239;
          *v97 = v231;
          v98 = v93;
          v99 = v232;
          sub_22F740370();
          sub_22F1C33B0(&qword_2810A94B0, MEMORY[0x277D3C478]);
          v100 = v236;
          v101 = sub_22F742010();
          v103 = v102;
          (*v233)(v99, v100);
          v104 = *v241;
          (*v241)(v98, v266);
          v105 = sub_22F145F20(v101, v103, &v272);

          *(v97 + 4) = v105;
          *(v97 + 12) = 2080;
          v106 = v255;
          v107 = sub_22F740330();
          v109 = v108;
          v104(v106, v266);
          v110 = sub_22F145F20(v107, v109, &v272);
          v74 = v266;

          *(v97 + 14) = v110;
          _os_log_impl(&dword_22F0FC000, v95, v96, "Elected collection with type: %s, localIdentifier: %s", v97, 0x16u);
          v111 = v239;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v111, -1, -1);
          MEMORY[0x2319033A0](v97, -1, -1);

          v104(v258, v74);
        }

        else
        {

          v112 = *v241;
          (*v241)(v94, v74);
          v112(v93, v74);
          v112(v258, v74);
        }

        v71 = v252;
        v73 = v250;
        goto LABEL_21;
      }

LABEL_20:
      sub_22F120ADC(v71, &qword_27DAB2198, &unk_22F7789B8);
LABEL_21:
      __swift_destroy_boxed_opaque_existential_0(&v275);
      v72 += 40;
      if (!--v70)
      {

        v114 = v247;
        goto LABEL_32;
      }
    }

LABEL_19:
    (*v73)(v71, 1, 1, v74);
    goto LABEL_20;
  }

  v268 = MEMORY[0x277D84F98];
  v114 = v10;
LABEL_32:
  v115 = v267;
  v116 = *(v267 + 16);
  if (!v116)
  {
    v118 = MEMORY[0x277D84F90];
LABEL_44:
    v241 = *(v118 + 16);
    if (!v241)
    {
LABEL_97:

      return v268;
    }

    v125 = 0;
    v1 = 0;
    v240 = v118 + 32;
    v251 = (v227 + 56);
    v258 = (v262 + 4);
    v261 = v256 + 56;
    v260 = (v256 + 48);
    v263 = (v227 + 32);
    v259 = (v227 + 8);
    v252 = (v227 + 48);
    v233 = (v227 + 16);
    *&v231 = v228 + 8;
    v228 += 48;
    v126 = &qword_27DAB1308;
    *&v113 = 136315138;
    v227 = v113;
    *&v113 = 136315394;
    v226 = v113;
    v127 = v249;
    v128 = v254;
    v239 = v118;
    while (1)
    {
      if (v125 >= *(v118 + 16))
      {
        goto LABEL_101;
      }

      v255 = v125;
      sub_22F15C30C(v240 + 40 * v125, &v275);
      v250 = *v251;
      (v250)(v128, 1, 1, v266);
      v129 = sub_22F1BEFCC(&v275);
      v130 = v129;
      v131 = *(v129 + 16);
      if (v131)
      {
        v132 = sub_22F10B490(*(v129 + 16), 0);
        v133 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040) - 8);
        v134 = sub_22F11B0EC(&v272, v132 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v131, v130);

        sub_22F0FF590();
        if (v134 != v131)
        {
          goto LABEL_102;
        }

        *&v272 = v132;
        sub_22F1C0D50(&v272);
        v114 = v247;
        v127 = v249;

        v135 = sub_22F1611EC(v272);

        v136 = sub_22F161424(v135);

        v126 = &qword_27DAB1308;
      }

      else
      {

        v136 = MEMORY[0x277D84F90];
      }

      v137 = *(v136 + 16);

      if (v137)
      {
        v138 = (*(v256 + 80) + 32) & ~*(v256 + 80);
        v139 = *(v256 + 72);
        v246 = v136;
        v257 = v138;
        v140 = v136 + v138;
        v141 = MEMORY[0x277D84F90];
        v267 = v139;
        do
        {
          v143 = v264;
          v144 = sub_22F13BA9C(v140, v264, v126, &qword_22F7789B0);
          MEMORY[0x28223BE20](v144);
          *(&v226 - 2) = v143;
          v145 = v126;
          v146 = v268;

          v147 = sub_22F1C0EB0(sub_22F1C3120, (&v226 - 2), v146);

          if (v147)
          {
            sub_22F120ADC(v143, v145, &qword_22F7789B0);
            v126 = v145;
            v142 = v267;
          }

          else
          {
            sub_22F1207AC(v143, v265, v145, &qword_22F7789B0);
            v148 = swift_isUniquelyReferenced_nonNull_native();
            *&v272 = v141;
            v126 = v145;
            if ((v148 & 1) == 0)
            {
              sub_22F1467FC(0, *(v141 + 16) + 1, 1);
              v141 = v272;
            }

            v150 = *(v141 + 16);
            v149 = *(v141 + 24);
            if (v150 >= v149 >> 1)
            {
              sub_22F1467FC(v149 > 1, v150 + 1, 1);
              v141 = v272;
            }

            *(v141 + 16) = v150 + 1;
            v142 = v267;
            sub_22F1207AC(v265, v257 + v141 + v150 * v267, v145, &qword_22F7789B0);
          }

          v140 += v142;
          --v137;
        }

        while (v137);
        v114 = v247;
        v127 = v249;
        v136 = v246;
      }

      else
      {
        v141 = MEMORY[0x277D84F90];
      }

      v151 = v245;
      if (*(v141 + 16))
      {

        v136 = v141;
      }

      else
      {

        v152 = sub_22F740B70();
        v153 = sub_22F7415F0();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = v114;
          v155 = v136;
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_22F0FC000, v152, v153, "All collections has been elected. Reuse all collections as fallback", v156, 2u);
          v157 = v156;
          v136 = v155;
          v114 = v154;
          MEMORY[0x2319033A0](v157, -1, -1);
        }
      }

      v158 = 0;
      ++v255;
      v159 = *(v136 + 16);
      v160 = v136;
      if (!v159)
      {
LABEL_72:
        v161 = 1;
        v158 = v159;
        goto LABEL_75;
      }

      while (1)
      {
        if (v158 >= *(v136 + 16))
        {
          __break(1u);
          goto LABEL_99;
        }

        sub_22F13BA9C(v136 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v158, v114, v126, &qword_22F7789B0);
        v161 = 0;
        ++v158;
LABEL_75:
        (*v261)(v114, v161, 1, v127);
        v162 = v114;
        v163 = v114;
        v164 = v262;
        sub_22F1207AC(v163, v262, &qword_27DAB2190, &qword_22F7789A8);
        if ((*v260)(v164, 1, v127) == 1)
        {
          break;
        }

        v165 = *(v258 + *(v127 + 48));
        v166 = *v263;
        v167 = v164;
        v168 = v266;
        (*v263)(v151, v167, v266);
        if (v165 < 0.33333)
        {
          v169 = v254;
          sub_22F120ADC(v254, &qword_27DAB2198, &unk_22F7789B8);
          v166(v169, v151, v168);
          (v250)(v169, 0, 1, v168);
          break;
        }

        (*v259)(v151, v168);
        v136 = v160;
        v114 = v162;
        if (v158 == v159)
        {
          goto LABEL_72;
        }
      }

      v170 = v244;
      sub_22F13BA9C(v254, v244, &qword_27DAB2198, &unk_22F7789B8);
      v171 = *v252;
      if ((*v252)(v170, 1, v266) == 1)
      {
        sub_22F120ADC(v170, &qword_27DAB2198, &unk_22F7789B8);
        if (v159)
        {
          if (!*(v160 + 16))
          {
            goto LABEL_103;
          }

          v172 = v230;
          sub_22F13BA9C(v160 + ((*(v256 + 80) + 32) & ~*(v256 + 80)), v230, v126, &qword_22F7789B0);

          v173 = v254;
          sub_22F120ADC(v254, &qword_27DAB2198, &unk_22F7789B8);
          v174 = v234;
          v175 = v172;
          v176 = v266;
          (*v263)(v234, v175, v266);
          v177 = 0;
        }

        else
        {
          v173 = v254;
          sub_22F120ADC(v254, &qword_27DAB2198, &unk_22F7789B8);

          v177 = 1;
          v174 = v234;
          v176 = v266;
        }

        (v250)(v174, v177, 1, v176);
        sub_22F1207AC(v174, v173, &qword_27DAB2198, &unk_22F7789B8);
      }

      else
      {

        sub_22F120ADC(v170, &qword_27DAB2198, &unk_22F7789B8);
        v173 = v254;
        v176 = v266;
      }

      v178 = v243;
      sub_22F13BA9C(v173, v243, &qword_27DAB2198, &unk_22F7789B8);
      if (v171(v178, 1, v176) == 1)
      {
        sub_22F120ADC(v178, &qword_27DAB2198, &unk_22F7789B8);
        sub_22F15C30C(&v275, &v272);
        v179 = sub_22F740B70();
        v180 = sub_22F7415E0();
        if (os_log_type_enabled(v179, v180))
        {
          LODWORD(v267) = v180;
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v269 = v182;
          *v181 = v227;
          v183 = v273;
          v184 = v274;
          __swift_project_boxed_opaque_existential_1(&v272, v273);
          (*(v184 + 32))(&v270, v183, v184);
          __swift_project_boxed_opaque_existential_1(&v270, v271);
          v185 = v229;
          sub_22F740750();
          v186 = v185;
          v187 = v185;
          v188 = v236;
          if ((*v228)(v187, 1, v236) == 1)
          {
            __swift_destroy_boxed_opaque_existential_0(&v270);
            sub_22F120ADC(v186, &qword_27DAB2188, &qword_22F7789A0);
            v189 = 0xE400000000000000;
            v190 = 1701736302;
          }

          else
          {
            v190 = MEMORY[0x2318FFFE0]();
            v189 = v223;
            (*v231)(v186, v188);
            __swift_destroy_boxed_opaque_existential_0(&v270);
          }

          v114 = v162;
          __swift_destroy_boxed_opaque_existential_0(&v272);
          v224 = sub_22F145F20(v190, v189, &v269);

          *(v181 + 4) = v224;
          _os_log_impl(&dword_22F0FC000, v179, v267, "Could not find collection for source of category: %s", v181, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v182);
          MEMORY[0x2319033A0](v182, -1, -1);
          MEMORY[0x2319033A0](v181, -1, -1);

          v128 = v254;
          sub_22F120ADC(v254, &qword_27DAB2198, &unk_22F7789B8);
          v127 = v249;
          v118 = v239;
          v126 = &qword_27DAB1308;
          goto LABEL_48;
        }

        v128 = v254;
        sub_22F120ADC(v254, &qword_27DAB2198, &unk_22F7789B8);
        __swift_destroy_boxed_opaque_existential_0(&v272);
      }

      else
      {
        v191 = v242;
        (*v263)(v242, v178, v176);
        v192 = v276;
        v193 = v277;
        __swift_project_boxed_opaque_existential_1(&v275, v276);
        (*(v193 + 32))(&v272, v192, v193);
        __swift_project_boxed_opaque_existential_1(&v272, v273);
        v267 = sub_22F740740();
        v195 = v194;
        v196 = *v233;
        v197 = v237;
        v198 = v266;
        (*v233)(v237, v191, v266);
        v199 = v268;
        v200 = swift_isUniquelyReferenced_nonNull_native();
        *&v270 = v199;
        sub_22F130CA4(v197, v267, v195, v200);

        v268 = v270;
        __swift_destroy_boxed_opaque_existential_0(&v272);
        v201 = v235;
        v196(v235, v191, v198);
        v202 = v238;
        v196(v238, v191, v198);
        v203 = sub_22F740B70();
        v204 = sub_22F7415F0();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          *&v272 = v267;
          *v205 = v226;
          v206 = v232;
          sub_22F740370();
          sub_22F1C33B0(&qword_2810A94B0, MEMORY[0x277D3C478]);
          LODWORD(v257) = v204;
          v207 = v236;
          v208 = sub_22F742010();
          v210 = v209;
          (*v231)(v206, v207);
          v211 = *v259;
          v212 = v266;
          (*v259)(v201, v266);
          v213 = sub_22F145F20(v208, v210, &v272);

          *(v205 + 4) = v213;
          *(v205 + 12) = 2080;
          v214 = v238;
          v215 = sub_22F740330();
          v217 = v216;
          v211(v214, v212);
          v218 = sub_22F145F20(v215, v217, &v272);

          *(v205 + 14) = v218;
          _os_log_impl(&dword_22F0FC000, v203, v257, "Elected collection with type: %s, localIdentifier: %s", v205, 0x16u);
          v219 = v267;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v219, -1, -1);
          MEMORY[0x2319033A0](v205, -1, -1);

          v211(v242, v212);
          v127 = v249;
        }

        else
        {

          v220 = *v259;
          v221 = v202;
          v222 = v266;
          (*v259)(v221, v266);
          v220(v201, v222);
          v220(v242, v222);
        }

        v128 = v254;
        sub_22F120ADC(v254, &qword_27DAB2198, &unk_22F7789B8);
      }

      v118 = v239;
      v126 = &qword_27DAB1308;
      v114 = v162;
LABEL_48:
      __swift_destroy_boxed_opaque_existential_0(&v275);
      v125 = v255;
      if (v255 == v241)
      {
        goto LABEL_97;
      }
    }
  }

  v117 = 0;
  v1 = v267 + 32;
  v118 = MEMORY[0x277D84F90];
  while (v117 < *(v115 + 16))
  {
    sub_22F15C30C(v1, &v275);
    v119 = v276;
    v120 = v277;
    __swift_project_boxed_opaque_existential_1(&v275, v276);
    (*(v120 + 32))(&v272, v119, v120);
    __swift_project_boxed_opaque_existential_1(&v272, v273);
    sub_22F740730();
    if (v121)
    {

      __swift_destroy_boxed_opaque_existential_0(&v272);
      __swift_destroy_boxed_opaque_existential_0(&v275);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v272);
      sub_22F100260(&v275, &v272);
      v122 = swift_isUniquelyReferenced_nonNull_native();
      *&v270 = v118;
      if ((v122 & 1) == 0)
      {
        sub_22F14687C(0, *(v118 + 16) + 1, 1);
        v118 = v270;
      }

      v124 = *(v118 + 16);
      v123 = *(v118 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_22F14687C((v123 > 1), v124 + 1, 1);
        v118 = v270;
      }

      *(v118 + 16) = v124 + 1;
      sub_22F100260(&v272, v118 + 40 * v124 + 32);
    }

    ++v117;
    v1 += 40;
    v115 = v267;
    if (v116 == v117)
    {
      goto LABEL_44;
    }
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F1BEFCC(void *a1)
{
  v2 = sub_22F740390();
  v119 = *(v2 - 8);
  v3 = *(v119 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v124 = &v111 - v7;
  v8 = type metadata accessor for TriggerResult();
  v9 = *(v8 - 8);
  v137 = v8;
  v138 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v132 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  v118 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = v13[2];
  v131 = v14;
  v135 = v13;
  v136 = v12;
  v133 = v15;
  v134 = v13 + 2;
  v16 = (v15)(v12, v13);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;
    v19 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15C30C(v18, &v140);
      v20 = v141;
      v21 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      v22 = (*(v21 + 32))(v20, v21);
      __swift_destroy_boxed_opaque_existential_0(&v140);
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_22F13ED1C(0, v19[2] + 1, 1, v19);
        }

        v24 = v19[2];
        v23 = v19[3];
        if (v24 >= v23 >> 1)
        {
          v19 = sub_22F13ED1C((v23 > 1), v24 + 1, 1, v19);
        }

        v19[2] = v24 + 1;
        v19[v24 + 4] = v22;
      }

      v18 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v25 = v19[2];
  v123 = v6;
  if (!v25)
  {
    v35 = v2;
    v27 = MEMORY[0x277D84F90];
LABEL_30:
    v129 = v27;

    v41 = (v133)(v136, v135);
    v114 = *(v41 + 16);
    if (!v114)
    {

      v109 = 0;
      v108 = 0;
      v44 = MEMORY[0x277D84F98];
LABEL_69:

      sub_22F107E14(v109);
      sub_22F107E14(v108);
      return v44;
    }

    v126 = 0;
    v125 = 0;
    v43 = 0;
    v135 = 0;
    v122 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;
    v113 = v41 + 32;
    v133 = (v119 + 16);
    v127 = (v119 + 8);
    v44 = MEMORY[0x277D84F98];
    *&v42 = 136315394;
    v117 = v42;
    v45 = v118;
    v46 = v124;
    v112 = v41;
    v128 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate;
    v116 = v35;
    while (1)
    {
      if (v43 >= *(v41 + 16))
      {
        goto LABEL_78;
      }

      v115 = v43;
      sub_22F15C30C(v113 + 40 * v43, &v140);
      v47 = v141;
      v48 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141);
      v49 = (*(v48 + 8))(v47, v48);
      v50 = v49;
      v51 = *(v49 + 16);
      if (v51)
      {
        break;
      }

LABEL_32:
      v43 = v115 + 1;

      __swift_destroy_boxed_opaque_existential_0(&v140);
      v41 = v112;
      if (v43 == v114)
      {

        v108 = v125;
        v109 = v126;
        goto LABEL_69;
      }
    }

    v52 = 0;
    v136 = v49 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v53 = v132;
    v130 = v51;
    v131 = v49;
    while (1)
    {
      if (v52 >= *(v50 + 16))
      {
        __break(1u);
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
        goto LABEL_76;
      }

      sub_22F13C46C(v136 + *(v138 + 72) * v52, v53);
      v54 = v53 + *(v137 + 20);
      if (sub_22F73F070())
      {
        break;
      }

      sub_22F13DBA0(v53);
LABEL_37:
      if (v51 == ++v52)
      {
        goto LABEL_32;
      }
    }

    v134 = v44;
    v55 = *v133;
    (*v133)(v46, v53, v35);
    v56 = v141;
    v57 = v142;
    __swift_project_boxed_opaque_existential_1(&v140, v141);
    (*(v57 + 16))(v139, v56, v57);
    v58 = flt_22F778AC4[SLOBYTE(v139[0])];
    v59 = v45[3];
    v60 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v59);
    v61 = (*(v60 + 24))(v59, v60);
    v62 = v135;
    sub_22F1C33F8(v46, v61, v129);
    if (v62)
    {

      v64 = v46;
      v65 = v123;
      v55(v123, v64, v35);
      v66 = v62;
      v67 = sub_22F740B70();
      v68 = sub_22F7415E0();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v121 = v67;
        v70 = v69;
        v120 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v139[0] = v135;
        *v70 = v117;
        v71 = sub_22F740330();
        v73 = v72;
        v74 = *v127;
        (*v127)(v65, v35);
        v75 = sub_22F145F20(v71, v73, v139);
        v45 = v118;

        *(v70 + 4) = v75;
        *(v70 + 12) = 2112;
        v76 = v62;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 14) = v77;
        v78 = v120;
        *v120 = v77;
        v79 = v121;
        _os_log_impl(&dword_22F0FC000, v121, v68, "Failed to compute scores for collection %s - %@", v70, 0x16u);
        sub_22F120ADC(v78, &qword_27DAB07D0, &qword_22F779400);
        MEMORY[0x2319033A0](v78, -1, -1);
        v80 = v135;
        __swift_destroy_boxed_opaque_existential_0(v135);
        MEMORY[0x2319033A0](v80, -1, -1);
        MEMORY[0x2319033A0](v70, -1, -1);

        v46 = v124;
        v35 = v116;
        v74(v124, v116);
      }

      else
      {

        v91 = *v127;
        (*v127)(v65, v35);
        v46 = v124;
        v91(v124, v35);
      }

      v53 = v132;
      sub_22F13DBA0(v132);
      v135 = 0;
      v44 = v134;
      goto LABEL_62;
    }

    v81 = v63;

    sub_22F107E14(v126);
    v82 = v134;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v82;
    v84 = sub_22F122DB8(v46);
    v86 = *(v82 + 16);
    v87 = (v85 & 1) == 0;
    v39 = __OFADD__(v86, v87);
    v88 = v86 + v87;
    if (v39)
    {
      goto LABEL_71;
    }

    v89 = v85;
    v135 = 0;
    if (*(v82 + 24) >= v88)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v106 = v84;
        sub_22F134E5C();
        v84 = v106;
        v44 = v139[0];
        if (v89)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_22F126CA4(v88, isUniquelyReferenced_nonNull_native);
      v84 = sub_22F122DB8(v46);
      if ((v89 & 1) != (v90 & 1))
      {
        goto LABEL_81;
      }
    }

    v44 = v139[0];
    if (v89)
    {
      goto LABEL_53;
    }

LABEL_51:
    v44[(v84 >> 6) + 8] |= 1 << v84;
    v92 = v84;
    v55(v44[6] + *(v119 + 72) * v84, v46, v35);
    *(v44[7] + 8 * v92) = 0;
    v93 = v44[2];
    v39 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v39)
    {
      goto LABEL_73;
    }

    v84 = v92;
    v44[2] = v94;
LABEL_53:
    *(v44[7] + 8 * v84) = v58 + *(v44[7] + 8 * v84);
    sub_22F107E14(v125);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v44;
    v96 = sub_22F122DB8(v46);
    v98 = v44[2];
    v99 = (v97 & 1) == 0;
    v39 = __OFADD__(v98, v99);
    v100 = v98 + v99;
    if (v39)
    {
      goto LABEL_72;
    }

    v101 = v97;
    if (v44[3] >= v100)
    {
      if ((v95 & 1) == 0)
      {
        v107 = v96;
        sub_22F134E5C();
        v96 = v107;
        v44 = v139[0];
        v53 = v132;
        if ((v101 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_61;
      }
    }

    else
    {
      sub_22F126CA4(v100, v95);
      v44 = v139[0];
      v96 = sub_22F122DB8(v46);
      if ((v101 & 1) != (v102 & 1))
      {
        goto LABEL_81;
      }
    }

    v53 = v132;
    if ((v101 & 1) == 0)
    {
LABEL_59:
      v44[(v96 >> 6) + 8] |= 1 << v96;
      v103 = v96;
      v55(v44[6] + *(v119 + 72) * v96, v46, v35);
      *(v44[7] + 8 * v103) = 0;
      v104 = v44[2];
      v39 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v39)
      {
        goto LABEL_74;
      }

      v96 = v103;
      v44[2] = v105;
    }

LABEL_61:
    *(v44[7] + 8 * v96 + 4) = v81;
    (*v127)(v46, v35);
    sub_22F13DBA0(v53);
    v125 = sub_22F1C39C4;
    v126 = sub_22F1C39C4;
LABEL_62:
    v51 = v130;
    v50 = v131;
    goto LABEL_37;
  }

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v26 >= v19[2])
    {
      goto LABEL_75;
    }

    v28 = v19[v26 + 4];
    v29 = *(v28 + 16);
    v30 = v27[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    v32 = v19[v26 + 4];

    v33 = swift_isUniquelyReferenced_nonNull_native();
    if (!v33 || v31 > v27[3] >> 1)
    {
      if (v30 <= v31)
      {
        v34 = v30 + v29;
      }

      else
      {
        v34 = v30;
      }

      v27 = sub_22F13DB78(v33, v34, 1, v27);
    }

    v35 = v2;
    if (*(v28 + 16))
    {
      v36 = v27[2];
      if ((v27[3] >> 1) - v36 < v29)
      {
        goto LABEL_79;
      }

      v37 = v27 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v36;
      swift_arrayInitWithCopy();

      if (v29)
      {
        v38 = v27[2];
        v39 = __OFADD__(v38, v29);
        v40 = v38 + v29;
        if (v39)
        {
          goto LABEL_80;
        }

        v27[2] = v40;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_77;
      }
    }

    if (v25 == ++v26)
    {
      goto LABEL_30;
    }
  }

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
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t CollectionElector.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t CollectionElector.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_suggestionsPersister);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources);

  v5 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate;
  v6 = sub_22F73F690();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t CollectionElector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_suggestionsPersister);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources);

  v5 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate;
  v6 = sub_22F73F690();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CollectionElector.electAssetsForMagicSlotAndPersistAsSuggestions(collection:curationRecipe:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22F740460();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_22F740790();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = sub_22F73FF30();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = sub_22F73FF50();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2198, &unk_22F7789B8) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v18 = sub_22F740390();
  v4[21] = v18;
  v19 = *(v18 - 8);
  v4[22] = v19;
  v20 = *(v19 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F1C00DC, 0, 0);
}

uint64_t sub_22F1C00DC()
{
  v124 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_22F13BA9C(v0[2], v3, &qword_27DAB2198, &unk_22F7789B8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22F120ADC(v0[20], &qword_27DAB2198, &unk_22F7789B8);
    v4 = MEMORY[0x277D84F90];
LABEL_11:
    v0[28] = v4;
    v73 = v0[4];
    v74 = sub_22F740310();
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();
    v77 = v73;
    v0[29] = sub_22F740300();
    v78 = *(MEMORY[0x277D3C2D8] + 4);
    v121 = (*MEMORY[0x277D3C2D8] + MEMORY[0x277D3C2D8]);
    v79 = swift_task_alloc();
    v0[30] = v79;
    *v79 = v0;
    v79[1] = sub_22F1C09FC;

    return v121(v4);
  }

  v5 = v0[4];
  (*(v0[22] + 32))(v0[27], v0[20], v0[21]);
  v6 = sub_22F740340();
  v7 = [v5 librarySpecificFetchOptions];
  v8 = sub_22F73FFE0();

  v9 = [v8 count];
  v10 = v0[27];
  v11 = v0[21];
  v12 = v0[16];
  v13 = v0[17];
  if (v9)
  {
    v14 = v0[25];
    v15 = v0[12];
    v16 = v0[10];
    v109 = v0[9];
    v112 = v0[11];
    v17 = v0[22];
    (*(v13 + 16))(v0[18], v0[3], v0[16]);
    v115 = *(v17 + 16);
    (v115)(v14, v10, v11);
    v18 = v8;
    sub_22F740780();
    (*(v16 + 16))(v112, v15, v109);
    v4 = sub_22F13ED40(0, 1, 1, MEMORY[0x277D84F90]);
    v20 = v4[2];
    v19 = v4[3];
    if (v20 >= v19 >> 1)
    {
      v4 = sub_22F13ED40(v19 > 1, v20 + 1, 1, v4);
    }

    v21 = v0[27];
    v23 = v0[23];
    v22 = v0[24];
    v24 = v0[21];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    v28 = v0[5];
    v4[2] = v20 + 1;
    (*(v26 + 32))(v4 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20, v25, v27);
    (v115)(v22, v21, v24);
    (v115)(v23, v21, v24);
    v29 = sub_22F740B70();
    v113 = sub_22F7415F0();
    v30 = os_log_type_enabled(v29, v113);
    v31 = v0[27];
    v32 = v0[23];
    v33 = v0[24];
    v34 = v0[21];
    v35 = v0[22];
    v36 = v0[12];
    v37 = v0[10];
    v116 = v32;
    v119 = v0[9];
    if (v30)
    {
      v110 = v0[10];
      v98 = v0[21];
      v38 = v0[7];
      v39 = v0[8];
      v105 = v18;
      v40 = v0[6];
      v107 = v0[27];
      v41 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v123 = v103;
      *v41 = 136315394;
      log = v29;
      sub_22F740370();
      sub_22F1C33B0(&qword_2810A94B0, MEMORY[0x277D3C478]);
      v42 = sub_22F742010();
      v101 = v36;
      v44 = v43;
      (*(v38 + 8))(v39, v40);
      v45 = *(v35 + 8);
      v45(v33, v98);
      v46 = sub_22F145F20(v42, v44, &v123);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      v47 = sub_22F740330();
      v49 = v48;
      v45(v116, v98);
      v50 = sub_22F145F20(v47, v49, &v123);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_22F0FC000, log, v113, "Suggestion Recipe created for magicSlot with type: %s, localIdentifier: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v103, -1, -1);
      MEMORY[0x2319033A0](v41, -1, -1);

      (*(v110 + 8))(v101, v119);
      v45(v107, v98);
    }

    else
    {

      v72 = *(v35 + 8);
      v72(v116, v34);
      v72(v33, v34);
      (*(v37 + 8))(v36, v119);
      v72(v31, v34);
    }

    goto LABEL_11;
  }

  v120 = v8;
  v51 = v0[19];
  v52 = v0[5];
  v53 = v0[3];
  v117 = *(v0[22] + 16);
  (v117)(v0[26], v10, v11);
  (*(v13 + 16))(v51, v53, v12);
  v54 = sub_22F740B70();
  v55 = sub_22F7415E0();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v0[26];
  if (v56)
  {
    v58 = v0[25];
    v59 = v0[21];
    v60 = v0[22];
    v106 = v0[17];
    v108 = v0[16];
    v114 = v55;
    v61 = v0[15];
    loga = v0[19];
    v102 = v0[14];
    v104 = v0[13];
    v62 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v123 = v111;
    *v62 = 136315394;
    (v117)(v58, v57, v59);
    v63 = sub_22F740E90();
    v65 = v64;
    v66 = *(v60 + 8);
    v66(v57, v59);
    v67 = sub_22F145F20(v63, v65, &v123);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    sub_22F73FF40();
    v68 = sub_22F73FF20();
    v70 = v69;
    (*(v102 + 8))(v61, v104);
    (*(v106 + 8))(loga, v108);
    v71 = sub_22F145F20(v68, v70, &v123);

    *(v62 + 14) = v71;
    _os_log_impl(&dword_22F0FC000, v54, v114, "No key asset found for %s. Suggestion will not be persisted for magic slot type %s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v111, -1, -1);
    MEMORY[0x2319033A0](v62, -1, -1);
  }

  else
  {
    v81 = v0[21];
    v82 = v0[22];
    v83 = v0[19];
    v85 = v0[16];
    v84 = v0[17];

    (*(v84 + 8))(v83, v85);
    v66 = *(v82 + 8);
    v66(v57, v81);
  }

  v66(v0[27], v0[21]);
  v87 = v0[26];
  v86 = v0[27];
  v89 = v0[24];
  v88 = v0[25];
  v90 = v0[23];
  v92 = v0[19];
  v91 = v0[20];
  v93 = v0[18];
  v94 = v0[15];
  v95 = v0[12];
  v118 = v0[11];
  v122 = v0[8];

  v96 = v0[1];
  v97 = MEMORY[0x277D84F90];

  return v96(v97);
}

uint64_t sub_22F1C09FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_22F1C0C3C;
  }

  else
  {
    v8 = *(v4 + 224);

    *(v4 + 256) = a1;
    v7 = sub_22F1C0B2C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22F1C0B2C()
{
  v1 = v0[29];

  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[12];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[32];

  v12 = v0[1];

  return v12(v16);
}

uint64_t sub_22F1C0C3C()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[11];
  v17 = v0[8];

  v11 = v0[1];
  v12 = v0[31];

  return v11();
}

uint64_t sub_22F1C0D50(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6530(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22F1C1348(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22F1C0E04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22F1C0EB0(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_22F740390();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 56) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1C10C8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22F1C1170(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2319016F0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22F741A00();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_22F1C1298(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_22F1C1348(unint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F1C18B8(v8, v9, a1, v4);
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
    return sub_22F1C148C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F1C148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v51 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v64 = &v51 - v17;
  result = MEMORY[0x28223BE20](v16);
  v61 = &v51 - v20;
  v53 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v65 = -v22;
    v66 = v21;
    v24 = a1 - a3;
    v52 = v22;
    v25 = v21 + v22 * a3;
    v58 = v8;
LABEL_6:
    v56 = v23;
    v57 = a3;
    v54 = v25;
    v55 = v24;
    v26 = v64;
    v27 = v61;
    while (1)
    {
      sub_22F13BA9C(v25, v27, &unk_27DAB0710, &qword_22F772040);
      sub_22F13BA9C(v23, v26, &unk_27DAB0710, &qword_22F772040);
      v28 = *(v8 + 48);
      v29 = v27 + v28;
      v30 = *(v27 + v28);
      v31 = (v26 + v28);
      if (v30 != *v31)
      {
        break;
      }

      v32 = *(v29 + 4);
      v33 = v31[1];
      v34 = v32 < v33;
      if (v32 != v33)
      {
        v48 = v8;
LABEL_14:
        v47 = v34;
        goto LABEL_17;
      }

      v35 = v27;
      v36 = v59;
      sub_22F13BA9C(v35, v59, &unk_27DAB0710, &qword_22F772040);
      v37 = sub_22F740330();
      v62 = v38;
      v63 = v37;
      v39 = sub_22F740390();
      v40 = *(*(v39 - 8) + 8);
      v40(v36, v39);
      v41 = v60;
      sub_22F13BA9C(v64, v60, &unk_27DAB0710, &qword_22F772040);
      v42 = sub_22F740330();
      v44 = v43;
      v45 = v39;
      v46 = v62;
      v40(v41, v45);
      if (v42 == v63 && v44 == v46)
      {

        sub_22F120ADC(v64, &unk_27DAB0710, &qword_22F772040);
        result = sub_22F120ADC(v61, &unk_27DAB0710, &qword_22F772040);
        v8 = v58;
LABEL_5:
        a3 = v57 + 1;
        v23 = v56 + v52;
        v24 = v55 - 1;
        v25 = v54 + v52;
        if (v57 + 1 == v53)
        {
          return result;
        }

        goto LABEL_6;
      }

      v47 = sub_22F742040();

      v48 = v58;
      v26 = v64;
      v27 = v61;
LABEL_17:
      sub_22F120ADC(v26, &unk_27DAB0710, &qword_22F772040);
      result = sub_22F120ADC(v27, &unk_27DAB0710, &qword_22F772040);
      v8 = v48;
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v66)
      {
        __break(1u);
        return result;
      }

      v49 = v67;
      sub_22F1207AC(v25, v67, &unk_27DAB0710, &qword_22F772040);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22F1207AC(v49, v23, &unk_27DAB0710, &qword_22F772040);
      v23 += v65;
      v25 += v65;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    v48 = v8;
    v34 = *v31 < v30;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_22F1C18B8(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v5 = v4;
  v195 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v204 = *(v8 - 8);
  v9 = *(v204 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v201 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v211 = &v187 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v210 = &v187 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v187 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v187 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v198 = &v187 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v197 = &v187 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v209 = &v187 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v208 = &v187 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v189 = &v187 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v188 = &v187 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v194 = &v187 - v36;
  result = MEMORY[0x28223BE20](v35);
  v193 = &v187 - v39;
  v206 = a3;
  v40 = a3[1];
  if (v40 < 1)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_126:
    v43 = *v195;
    if (!*v195)
    {
      goto LABEL_165;
    }

    v19 = v42;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v19;
LABEL_129:
      v220 = result;
      v19 = *(result + 16);
      if (v19 >= 2)
      {
        while (*v206)
        {
          v183 = *(result + 16 * v19);
          v184 = result;
          v185 = *(result + 16 * (v19 - 1) + 40);
          sub_22F1C2868(*v206 + *(v204 + 72) * v183, *v206 + *(v204 + 72) * *(result + 16 * (v19 - 1) + 32), *v206 + *(v204 + 72) * v185, v43);
          if (v5)
          {
          }

          if (v185 < v183)
          {
            goto LABEL_152;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = sub_22F3F5F98(v184);
          }

          if (v19 - 2 >= *(v184 + 2))
          {
            goto LABEL_153;
          }

          v186 = &v184[16 * v19];
          *v186 = v183;
          *(v186 + 1) = v185;
          v220 = v184;
          sub_22F3F5F0C(v19 - 1);
          result = v220;
          v19 = *(v220 + 16);
          if (v19 <= 1)
          {
          }
        }

        goto LABEL_163;
      }
    }

LABEL_159:
    result = sub_22F3F5F98(v19);
    goto LABEL_129;
  }

  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  v219 = v38;
  v191 = a4;
  v212 = v8;
  v213 = v22;
  v216 = v19;
  while (2)
  {
    v43 = v41;
    v44 = v41 + 1;
    v192 = v42;
    v196 = v41;
    if (v41 + 1 >= v40)
    {
      goto LABEL_47;
    }

    v202 = v40;
    v45 = v41;
    v46 = *v206;
    v47 = *(v204 + 72);
    v207 = v41 + 1;
    v48 = v193;
    sub_22F13BA9C(v46 + v47 * v44, v193, &unk_27DAB0710, &qword_22F772040);
    v205 = v47;
    v49 = v46 + v47 * v45;
    v50 = v194;
    sub_22F13BA9C(v49, v194, &unk_27DAB0710, &qword_22F772040);
    v51 = *(v8 + 48);
    v52 = v48 + v51;
    v53 = *(v48 + v51);
    v54 = (v50 + v51);
    v55 = *v54;
    v56 = v53 == *v54;
    v190 = v5;
    if (v56)
    {
      v57 = *(v52 + 4);
      v58 = v54[1];
      v69 = v57 < v58;
      if (v57 == v58)
      {
        v59 = v188;
        sub_22F13BA9C(v193, v188, &unk_27DAB0710, &qword_22F772040);
        v60 = sub_22F740330();
        v62 = v61;
        v63 = sub_22F740390();
        v64 = *(*(v63 - 8) + 8);
        v64(v59, v63);
        v65 = v189;
        sub_22F13BA9C(v194, v189, &unk_27DAB0710, &qword_22F772040);
        v66 = sub_22F740330();
        v68 = v67;
        v64(v65, v63);
        if (v66 == v60 && v68 == v62)
        {

          LODWORD(v203) = 0;
        }

        else
        {
          LODWORD(v203) = sub_22F742040();
        }

        v8 = v212;
        v19 = v216;
        goto LABEL_17;
      }
    }

    else
    {
      v69 = v55 < v53;
    }

    v70 = v69;
    LODWORD(v203) = v70;
LABEL_17:
    sub_22F120ADC(v194, &unk_27DAB0710, &qword_22F772040);
    result = sub_22F120ADC(v193, &unk_27DAB0710, &qword_22F772040);
    v71 = v196 + 2;
    v72 = v205 * (v196 + 2);
    v73 = v46 + v72;
    v74 = v207;
    v75 = v205 * v207;
    v76 = v46 + v205 * v207;
    do
    {
      v78 = v71;
      v81 = v74;
      v217 = v71;
      v218 = v75;
      v80 = v72;
      if (v71 >= v202)
      {
        break;
      }

      v214 = v74;
      v215 = v72;
      v82 = v208;
      sub_22F13BA9C(v73, v208, &unk_27DAB0710, &qword_22F772040);
      v83 = v8;
      v84 = v209;
      sub_22F13BA9C(v76, v209, &unk_27DAB0710, &qword_22F772040);
      v85 = v83;
      v86 = *(v83 + 48);
      v87 = v82 + v86;
      v88 = *(v82 + v86);
      v89 = (v84 + v86);
      if (v88 == *v89)
      {
        v90 = *(v87 + 4);
        v91 = v89[1];
        v79 = v218;
        if (v90 != v91)
        {
          v77 = v90 < v91;
          v78 = v217;
          goto LABEL_20;
        }

        v92 = v197;
        sub_22F13BA9C(v208, v197, &unk_27DAB0710, &qword_22F772040);
        v207 = sub_22F740330();
        v94 = v93;
        v95 = sub_22F740390();
        v96 = *(*(v95 - 8) + 8);
        v96(v92, v95);
        v97 = v198;
        sub_22F13BA9C(v209, v198, &unk_27DAB0710, &qword_22F772040);
        v98 = sub_22F740330();
        v100 = v99;
        v96(v97, v95);
        if (v98 == v207 && v100 == v94)
        {

          v77 = 0;
        }

        else
        {
          v77 = sub_22F742040();
        }

        v85 = v212;
        v19 = v216;
      }

      else
      {
        v77 = *v89 < v88;
      }

      v78 = v217;
      v79 = v218;
LABEL_20:
      sub_22F120ADC(v209, &unk_27DAB0710, &qword_22F772040);
      result = sub_22F120ADC(v208, &unk_27DAB0710, &qword_22F772040);
      v71 = v78 + 1;
      v73 += v205;
      v76 += v205;
      v81 = v214;
      v80 = v215;
      v74 = v214 + 1;
      v75 = v79 + v205;
      v72 = v215 + v205;
      v8 = v85;
    }

    while (((v203 ^ v77) & 1) == 0);
    v5 = v190;
    if (v203)
    {
      v44 = v78;
      v43 = v196;
      if (v44 < v196)
      {
        goto LABEL_156;
      }

      if (v196 >= v44)
      {
        v42 = v192;
        v22 = v213;
      }

      else
      {
        v101 = v196 * v205;
        v102 = v196;
        v103 = v218;
        do
        {
          if (v102 != v81)
          {
            v105 = v5;
            v106 = *v206;
            if (!*v206)
            {
              goto LABEL_162;
            }

            v107 = v81;
            v108 = v80;
            sub_22F1207AC(v106 + v101, v201, &unk_27DAB0710, &qword_22F772040);
            if (v101 < v103 || v106 + v101 >= v106 + v108)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v101 != v103)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_22F1207AC(v201, v106 + v103, &unk_27DAB0710, &qword_22F772040);
            v5 = v105;
            v19 = v216;
            v80 = v108;
            v81 = v107;
          }

          ++v102;
          v103 -= v205;
          v80 -= v205;
          v101 += v205;
        }

        while (v102 < v81--);
        v44 = v217;
        v8 = v212;
        v22 = v213;
        v42 = v192;
      }

      a4 = v191;
    }

    else
    {
      v44 = v78;
      a4 = v191;
      v42 = v192;
      v22 = v213;
      v43 = v196;
    }

LABEL_47:
    v109 = v206[1];
    if (v44 >= v109)
    {
      goto LABEL_74;
    }

    if (__OFSUB__(v44, v43))
    {
      goto LABEL_155;
    }

    if ((v44 - v43) >= a4)
    {
LABEL_74:
      if (v44 < v43)
      {
        goto LABEL_154;
      }

      v207 = v44;
      v139 = v42;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v42 = v139;
      }

      else
      {
        result = sub_22F13D970(0, *(v139 + 16) + 1, 1, v139);
        v42 = result;
      }

      v43 = *(v42 + 16);
      v140 = *(v42 + 24);
      v19 = v43 + 1;
      v41 = v207;
      if (v43 >= v140 >> 1)
      {
        result = sub_22F13D970((v140 > 1), v43 + 1, 1, v42);
        v41 = v207;
        v42 = result;
      }

      *(v42 + 16) = v19;
      v141 = v42 + 16 * v43;
      *(v141 + 32) = v196;
      *(v141 + 40) = v41;
      v218 = *v195;
      if (!v218)
      {
        goto LABEL_164;
      }

      if (!v43)
      {
LABEL_3:
        v40 = v206[1];
        a4 = v191;
        v19 = v216;
        if (v41 >= v40)
        {
          goto LABEL_126;
        }

        continue;
      }

      while (1)
      {
        v142 = v19 - 1;
        if (v19 >= 4)
        {
          break;
        }

        if (v19 == 3)
        {
          v143 = *(v42 + 32);
          v144 = *(v42 + 40);
          v153 = __OFSUB__(v144, v143);
          v145 = v144 - v143;
          v146 = v153;
LABEL_94:
          if (v146)
          {
            goto LABEL_143;
          }

          v159 = (v42 + 16 * v19);
          v161 = *v159;
          v160 = v159[1];
          v162 = __OFSUB__(v160, v161);
          v163 = v160 - v161;
          v164 = v162;
          if (v162)
          {
            goto LABEL_146;
          }

          v165 = (v42 + 32 + 16 * v142);
          v167 = *v165;
          v166 = v165[1];
          v153 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v153)
          {
            goto LABEL_149;
          }

          if (__OFADD__(v163, v168))
          {
            goto LABEL_150;
          }

          if (v163 + v168 >= v145)
          {
            if (v145 < v168)
            {
              v142 = v19 - 2;
            }

            goto LABEL_115;
          }

          goto LABEL_108;
        }

        v169 = (v42 + 16 * v19);
        v171 = *v169;
        v170 = v169[1];
        v153 = __OFSUB__(v170, v171);
        v163 = v170 - v171;
        v164 = v153;
LABEL_108:
        if (v164)
        {
          goto LABEL_145;
        }

        v172 = v42 + 16 * v142;
        v174 = *(v172 + 32);
        v173 = *(v172 + 40);
        v153 = __OFSUB__(v173, v174);
        v175 = v173 - v174;
        if (v153)
        {
          goto LABEL_148;
        }

        if (v175 < v163)
        {
          goto LABEL_3;
        }

LABEL_115:
        v43 = v142 - 1;
        if (v142 - 1 >= v19)
        {
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
          goto LABEL_158;
        }

        if (!*v206)
        {
          goto LABEL_161;
        }

        v180 = v42;
        v19 = *(v42 + 32 + 16 * v43);
        v181 = *(v42 + 32 + 16 * v142 + 8);
        sub_22F1C2868(*v206 + *(v204 + 72) * v19, *v206 + *(v204 + 72) * *(v42 + 32 + 16 * v142), *v206 + *(v204 + 72) * v181, v218);
        if (v5)
        {
        }

        if (v181 < v19)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_22F3F5F98(v180);
        }

        if (v43 >= *(v180 + 2))
        {
          goto LABEL_140;
        }

        v182 = &v180[16 * v43];
        *(v182 + 4) = v19;
        *(v182 + 5) = v181;
        v220 = v180;
        result = sub_22F3F5F0C(v142);
        v42 = v220;
        v19 = *(v220 + 16);
        v22 = v213;
        v41 = v207;
        if (v19 <= 1)
        {
          goto LABEL_3;
        }
      }

      v147 = v42 + 32 + 16 * v19;
      v148 = *(v147 - 64);
      v149 = *(v147 - 56);
      v153 = __OFSUB__(v149, v148);
      v150 = v149 - v148;
      if (v153)
      {
        goto LABEL_141;
      }

      v152 = *(v147 - 48);
      v151 = *(v147 - 40);
      v153 = __OFSUB__(v151, v152);
      v145 = v151 - v152;
      v146 = v153;
      if (v153)
      {
        goto LABEL_142;
      }

      v154 = (v42 + 16 * v19);
      v156 = *v154;
      v155 = v154[1];
      v153 = __OFSUB__(v155, v156);
      v157 = v155 - v156;
      if (v153)
      {
        goto LABEL_144;
      }

      v153 = __OFADD__(v145, v157);
      v158 = v145 + v157;
      if (v153)
      {
        goto LABEL_147;
      }

      if (v158 >= v150)
      {
        v176 = (v42 + 32 + 16 * v142);
        v178 = *v176;
        v177 = v176[1];
        v153 = __OFSUB__(v177, v178);
        v179 = v177 - v178;
        if (v153)
        {
          goto LABEL_151;
        }

        if (v145 < v179)
        {
          v142 = v19 - 2;
        }

        goto LABEL_115;
      }

      goto LABEL_94;
    }

    break;
  }

  v110 = v43 + a4;
  if (__OFADD__(v43, a4))
  {
    goto LABEL_157;
  }

  if (v110 >= v109)
  {
    v110 = v206[1];
  }

  if (v110 < v43)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v44 == v110)
  {
    goto LABEL_74;
  }

  v190 = v5;
  v111 = *v206;
  v112 = *(v204 + 72);
  v113 = *v206 + v112 * (v44 - 1);
  v217 = -v112;
  v218 = v111;
  v114 = v43 - v44;
  v199 = v112;
  v200 = v110;
  v115 = v111 + v44 * v112;
  while (2)
  {
    v207 = v44;
    v202 = v115;
    v203 = v114;
    v205 = v113;
LABEL_59:
    sub_22F13BA9C(v115, v22, &unk_27DAB0710, &qword_22F772040);
    sub_22F13BA9C(v113, v19, &unk_27DAB0710, &qword_22F772040);
    v116 = *(v8 + 48);
    v117 = &v22[v116];
    v118 = *&v22[v116];
    v119 = (v19 + v116);
    if (v118 != *v119)
    {
      v122 = *v119 < v118;
LABEL_65:
      v134 = v122;
      goto LABEL_68;
    }

    v120 = *(v117 + 1);
    v121 = v119[1];
    v122 = v120 < v121;
    if (v120 != v121)
    {
      goto LABEL_65;
    }

    v123 = v210;
    sub_22F13BA9C(v22, v210, &unk_27DAB0710, &qword_22F772040);
    v124 = sub_22F740330();
    v214 = v125;
    v215 = v124;
    v126 = sub_22F740390();
    v127 = *(*(v126 - 8) + 8);
    v127(v123, v126);
    v128 = v211;
    sub_22F13BA9C(v216, v211, &unk_27DAB0710, &qword_22F772040);
    v129 = sub_22F740330();
    v131 = v130;
    v132 = v128;
    v133 = v214;
    v127(v132, v126);
    if (v129 == v215 && v131 == v133)
    {

      v19 = v216;
      sub_22F120ADC(v216, &unk_27DAB0710, &qword_22F772040);
      v22 = v213;
      sub_22F120ADC(v213, &unk_27DAB0710, &qword_22F772040);
      v8 = v212;
LABEL_57:
      v44 = v207 + 1;
      v113 = v205 + v199;
      v114 = v203 - 1;
      v115 = v202 + v199;
      if (v207 + 1 == v200)
      {
        v44 = v200;
        v5 = v190;
        v43 = v196;
        v42 = v192;
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  v134 = sub_22F742040();

  v8 = v212;
  v22 = v213;
  v19 = v216;
LABEL_68:
  sub_22F120ADC(v19, &unk_27DAB0710, &qword_22F772040);
  result = sub_22F120ADC(v22, &unk_27DAB0710, &qword_22F772040);
  if ((v134 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (v218)
  {
    v135 = v22;
    v136 = v19;
    v137 = v219;
    sub_22F1207AC(v115, v219, &unk_27DAB0710, &qword_22F772040);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v137, v113, &unk_27DAB0710, &qword_22F772040);
    v113 += v217;
    v115 += v217;
    v138 = __CFADD__(v114++, 1);
    v19 = v136;
    v22 = v135;
    if (v138)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
  return result;
}

uint64_t sub_22F1C2868(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v88 = &v87 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v87 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v100 = &v87 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v87 - v23;
  result = MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_81;
  }

  v29 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v28 != -1)
  {
    v98 = a3;
    v30 = (a2 - a1) / v28;
    v104 = a1;
    v103 = a4;
    v94 = v8;
    if (v30 < v29 / v28)
    {
      v31 = v30 * v28;
      if (a4 < a1 || a1 + v31 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v100 = a4 + v31;
      v102 = a4 + v31;
      if (v31 >= 1 && a2 < v98)
      {
        v91 = v26;
        v92 = v28;
        while (1)
        {
          sub_22F13BA9C(a2, v26, &unk_27DAB0710, &qword_22F772040);
          v34 = v101;
          sub_22F13BA9C(a4, v101, &unk_27DAB0710, &qword_22F772040);
          v35 = *(v8 + 48);
          v36 = &v26[v35];
          v37 = *&v26[v35];
          v38 = (v34 + v35);
          if (v37 != *v38)
          {
            break;
          }

          v39 = *(v36 + 1);
          v40 = v38[1];
          v41 = v39 < v40;
          if (v39 != v40)
          {
            v52 = a2;
            v53 = v8;
LABEL_28:
            v54 = v41;
            goto LABEL_32;
          }

          v96 = a4;
          v99 = a2;
          v42 = v93;
          sub_22F13BA9C(v26, v93, &unk_27DAB0710, &qword_22F772040);
          v43 = sub_22F740330();
          v45 = v44;
          v46 = sub_22F740390();
          v47 = *(*(v46 - 8) + 8);
          v47(v42, v46);
          v48 = v97;
          sub_22F13BA9C(v101, v97, &unk_27DAB0710, &qword_22F772040);
          v49 = sub_22F740330();
          v51 = v50;
          v47(v48, v46);
          if (v49 == v43 && v51 == v45)
          {

            sub_22F120ADC(v101, &unk_27DAB0710, &qword_22F772040);
            v26 = v91;
            sub_22F120ADC(v91, &unk_27DAB0710, &qword_22F772040);
            a2 = v99;
            v8 = v94;
            a4 = v96;
            v28 = v92;
            goto LABEL_37;
          }

          v54 = sub_22F742040();

          v52 = v99;
          v53 = v94;
          a4 = v96;
          v26 = v91;
          v28 = v92;
LABEL_32:
          sub_22F120ADC(v101, &unk_27DAB0710, &qword_22F772040);
          sub_22F120ADC(v26, &unk_27DAB0710, &qword_22F772040);
          v8 = v53;
          a2 = v52;
          if (v54)
          {
            if (a1 < v52 || a1 >= v52 + v28)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v52 + v28;
            goto LABEL_45;
          }

LABEL_37:
          if (a1 < a4 || a1 >= a4 + v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v103 = a4 + v28;
          a4 += v28;
LABEL_45:
          a1 += v28;
          v104 = a1;
          if (a4 >= v100 || a2 >= v98)
          {
            goto LABEL_79;
          }
        }

        v52 = a2;
        v53 = v8;
        v41 = *v38 < v37;
        goto LABEL_28;
      }

      goto LABEL_79;
    }

    v32 = v29 / v28 * v28;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a4 + v32;
    if (v32 < 1)
    {
LABEL_77:
      v104 = a2;
      v102 = v55;
LABEL_79:
      sub_22F3B66E0(&v104, &v103, &v102);
      return 1;
    }

    v56 = -v28;
    v57 = a4 + v32;
    v58 = v98;
    v96 = a4;
    v101 = -v28;
LABEL_51:
    v87 = v55;
    v59 = a2 + v56;
    v99 = a2 + v56;
    v93 = a2;
    while (1)
    {
      if (a2 <= a1)
      {
        v104 = a2;
        v102 = v87;
        goto LABEL_79;
      }

      v60 = v58;
      v97 = v57 + v56;
      v98 = v57;
      v61 = v100;
      v62 = v8;
      sub_22F13BA9C(v57 + v56, v100, &unk_27DAB0710, &qword_22F772040);
      v63 = v59;
      v64 = v95;
      sub_22F13BA9C(v63, v95, &unk_27DAB0710, &qword_22F772040);
      v65 = *(v8 + 48);
      v66 = v61 + v65;
      v67 = *(v61 + v65);
      v68 = (v64 + v65);
      v69 = *v68;
      v70 = v67 == *v68;
      v92 = v55;
      if (!v70)
      {
        break;
      }

      v71 = *(v66 + 4);
      v72 = v68[1];
      v85 = v71 < v72;
      if (v71 != v72)
      {
        goto LABEL_61;
      }

      v73 = v88;
      sub_22F13BA9C(v100, v88, &unk_27DAB0710, &qword_22F772040);
      v74 = sub_22F740330();
      v90 = v75;
      v91 = v74;
      v76 = sub_22F740390();
      v77 = *(*(v76 - 8) + 8);
      v77(v73, v76);
      v78 = v89;
      sub_22F13BA9C(v64, v89, &unk_27DAB0710, &qword_22F772040);
      v79 = sub_22F740330();
      v81 = v80;
      v82 = v78;
      v83 = v90;
      v77(v82, v76);
      if (v79 == v91 && v81 == v83)
      {

        v84 = 0;
      }

      else
      {
        v84 = sub_22F742040();
      }

      v62 = v94;
      v64 = v95;
      a4 = v96;
LABEL_66:
      v58 = v60 + v101;
      sub_22F120ADC(v64, &unk_27DAB0710, &qword_22F772040);
      sub_22F120ADC(v100, &unk_27DAB0710, &qword_22F772040);
      if (v84)
      {
        v8 = v62;
        if (v60 < v93 || v58 >= v93)
        {
          a2 = v99;
          swift_arrayInitWithTakeFrontToBack();
          v55 = v92;
        }

        else
        {
          v55 = v92;
          a2 = v99;
          if (v60 != v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = v98;
        v56 = v101;
        if (v98 <= a4)
        {
          goto LABEL_77;
        }

        goto LABEL_51;
      }

      v86 = v97;
      v55 = v97;
      v8 = v62;
      if (v60 < v98 || v58 >= v98)
      {
        swift_arrayInitWithTakeFrontToBack();
        v59 = v99;
      }

      else
      {
        v59 = v99;
        if (v60 != v98)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v57 = v55;
      v56 = v101;
      a2 = v93;
      if (v86 <= a4)
      {
        goto LABEL_77;
      }
    }

    v85 = v69 < v67;
LABEL_61:
    v84 = v85;
    goto LABEL_66;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_22F1C3120()
{
  v1 = *(v0 + 16);
  sub_22F740390();
  sub_22F1C33B0(&qword_2810A94B8, MEMORY[0x277D3C2E0]);
  return sub_22F740DE0() & 1;
}

unint64_t sub_22F1C31B4()
{
  result = qword_27DAB21A0;
  if (!qword_27DAB21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21A0);
  }

  return result;
}

uint64_t type metadata accessor for CollectionElector()
{
  result = qword_2810AB478;
  if (!qword_2810AB478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1C325C()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22F73F690();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22F1C33B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F1C33F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v63 = type metadata accessor for TriggerResult();
  v55 = *(v63 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v63);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v61 = sub_22F740390();
  v20 = *(*(v61 - 8) + 64);
  result = MEMORY[0x28223BE20](v61);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 16);
  if (v25)
  {
    v60 = v19;
    v53 = v12;
    v54 = a3;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v67 = (v26 - 8);
    v68 = v27;
    v58 = (v12 + 32);
    v59 = (v12 + 8);
    v29 = *(v26 + 56);
    v30 = 0.0;
    v31 = v61;
    v57 = v26;
    v64 = v29;
    v65 = (v12 + 48);
    v27(v24, v28, v61);
    while (1)
    {
      if (sub_22F740350())
      {
        sub_22F740320();
        if ((*v65)(v10, 1, v11) == 1)
        {
          (*v67)(v24, v31);
          result = sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
          v29 = v64;
        }

        else
        {
          v32 = v60;
          v33 = v10;
          (*v58)(v60, v10, v11);
          v34 = v66;
          sub_22F73F650();
          sub_22F73F670();
          v35 = *v59;
          (*v59)(v34, v11);
          v36 = v69;
          v37 = sub_22F741380();
          v69 = v36;
          if (v36)
          {
            v35(v32, v11);
            return (*v67)(v24, v61);
          }

          v38 = v37;
          v35(v32, v11);
          v31 = v61;
          result = (*v67)(v24, v61);
          if (v38 <= 1)
          {
            v39 = 1;
          }

          else
          {
            v39 = v38;
          }

          v30 = v30 + (1.0 / v39);
          v10 = v33;
          v29 = v64;
        }
      }

      else
      {
        result = (*v67)(v24, v31);
      }

      v28 += v29;
      if (!--v25)
      {
        v12 = v53;
        a3 = v54;
        break;
      }

      v68(v24, v28, v31);
    }
  }

  v40 = *(a3 + 16);
  v41 = v56;
  if (v40)
  {
    v42 = a3 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v43 = (v12 + 8);
    v44 = *(v55 + 72);
    v45 = 0.0;
    do
    {
      sub_22F13C46C(v42, v41);
      if (sub_22F740350())
      {
        v46 = v66;
        sub_22F73F650();
        v47 = v62;
        v48 = v41 + *(v63 + 20);
        sub_22F73F060();
        sub_22F73F670();
        v49 = *v43;
        (*v43)(v47, v11);
        v49(v46, v11);
        v50 = v69;
        v51 = sub_22F741380();
        result = sub_22F13DBA0(v41);
        v69 = v50;
        if (v50)
        {
          return result;
        }

        if (v51 <= 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = v51;
        }

        v45 = v45 + (1.0 / v52);
      }

      else
      {
        result = sub_22F13DBA0(v41);
      }

      v42 += v44;
      --v40;
    }

    while (v40);
  }

  return result;
}

uint64_t static PhotosChallengeAlgorithmEvaluator.algorithm(for:)()
{
  v0 = sub_22F740EA0();
  v2 = v1;
  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmWedding();
  sub_22F2653D8();
  v4 = sub_22F740EA0();
  v6 = v5;

  if (v4 == v0 && v6 == v2)
  {
    goto LABEL_3;
  }

  v7 = sub_22F742040();

  if (v7)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmBirthday();
  sub_22F2653D8();
  v9 = sub_22F740EA0();
  v11 = v10;

  if (v9 == v0 && v11 == v2)
  {
    goto LABEL_3;
  }

  v12 = sub_22F742040();

  if (v12)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmAnniversary();
  sub_22F2653D8();
  v13 = sub_22F740EA0();
  v15 = v14;

  if (v13 == v0 && v15 == v2)
  {
    goto LABEL_3;
  }

  v16 = sub_22F742040();

  if (v16)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableCelebration();
  sub_22F2653D8();
  v17 = sub_22F740EA0();
  v19 = v18;

  if (v17 == v0 && v19 == v2)
  {
    goto LABEL_3;
  }

  v20 = sub_22F742040();

  if (v20)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmConcert();
  sub_22F2653D8();
  v21 = sub_22F740EA0();
  v23 = v22;

  if (v21 == v0 && v23 == v2)
  {
    goto LABEL_3;
  }

  v24 = sub_22F742040();

  if (v24)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmFestival();
  sub_22F2653D8();
  v25 = sub_22F740EA0();
  v27 = v26;

  if (v25 == v0 && v27 == v2)
  {
    goto LABEL_3;
  }

  v28 = sub_22F742040();

  if (v28)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmTheater();
  sub_22F2653D8();
  v29 = sub_22F740EA0();
  v31 = v30;

  if (v29 == v0 && v31 == v2)
  {
    goto LABEL_3;
  }

  v32 = sub_22F742040();

  if (v32)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmDance();
  sub_22F2653D8();
  v33 = sub_22F740EA0();
  v35 = v34;

  if (v33 == v0 && v35 == v2)
  {
    goto LABEL_3;
  }

  v36 = sub_22F742040();

  if (v36)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmMuseum();
  sub_22F2653D8();
  v37 = sub_22F740EA0();
  v39 = v38;

  if (v37 == v0 && v39 == v2)
  {
    goto LABEL_3;
  }

  v40 = sub_22F742040();

  if (v40)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmAmusementPark();
  sub_22F2653D8();
  v41 = sub_22F740EA0();
  v43 = v42;

  if (v41 == v0 && v43 == v2)
  {
    goto LABEL_3;
  }

  v44 = sub_22F742040();

  if (v44)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmPerformance();
  sub_22F2653D8();
  v45 = sub_22F740EA0();
  v47 = v46;

  if (v45 == v0 && v47 == v2)
  {
    goto LABEL_3;
  }

  v48 = sub_22F742040();

  if (v48)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmHiking();
  sub_22F2653D8();
  v49 = sub_22F740EA0();
  v51 = v50;

  if (v49 == v0 && v51 == v2)
  {
    goto LABEL_3;
  }

  v52 = sub_22F742040();

  if (v52)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmClimbing();
  sub_22F2653D8();
  v53 = sub_22F740EA0();
  v55 = v54;

  if (v53 == v0 && v55 == v2)
  {
    goto LABEL_3;
  }

  v56 = sub_22F742040();

  if (v56)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmBeaching();
  sub_22F2653D8();
  v57 = sub_22F740EA0();
  v59 = v58;

  if (v57 == v0 && v59 == v2)
  {
    goto LABEL_3;
  }

  v60 = sub_22F742040();

  if (v60)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmSportEvent();
  sub_22F2653D8();
  v61 = sub_22F740EA0();
  v63 = v62;

  if (v61 == v0 && v63 == v2)
  {
    goto LABEL_3;
  }

  v64 = sub_22F742040();

  if (v64)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmWinterSport();
  sub_22F2653D8();
  v65 = sub_22F740EA0();
  v67 = v66;

  if (v65 == v0 && v67 == v2)
  {
    goto LABEL_3;
  }

  v68 = sub_22F742040();

  if (v68)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmDiving();
  sub_22F2653D8();
  v69 = sub_22F740EA0();
  v71 = v70;

  if (v69 == v0 && v71 == v2)
  {
    goto LABEL_3;
  }

  v72 = sub_22F742040();

  if (v72)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmLunch();
  sub_22F2653D8();
  v73 = sub_22F740EA0();
  v75 = v74;

  if (v73 == v0 && v75 == v2)
  {
    goto LABEL_3;
  }

  v76 = sub_22F742040();

  if (v76)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmDinner();
  sub_22F2653D8();
  v77 = sub_22F740EA0();
  v79 = v78;

  if (v77 == v0 && v79 == v2)
  {
    goto LABEL_3;
  }

  v80 = sub_22F742040();

  if (v80)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmBreakfast();
  sub_22F2653D8();
  v81 = sub_22F740EA0();
  v83 = v82;

  if (v81 == v0 && v83 == v2)
  {
    goto LABEL_3;
  }

  v84 = sub_22F742040();

  if (v84)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmRestaurant();
  sub_22F2653D8();
  v85 = sub_22F740EA0();
  v87 = v86;

  if (v85 == v0 && v87 == v2)
  {
    goto LABEL_3;
  }

  v88 = sub_22F742040();

  if (v88)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmNightOut();
  sub_22F2653D8();
  v89 = sub_22F740EA0();
  v91 = v90;

  if (v89 == v0 && v91 == v2)
  {
    goto LABEL_3;
  }

  v92 = sub_22F742040();

  if (v92)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmEntertainment();
  sub_22F2653D8();
  v93 = sub_22F740EA0();
  v95 = v94;

  if (v93 == v0 && v95 == v2)
  {
    goto LABEL_3;
  }

  v96 = sub_22F742040();

  if (v96)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmHolidayEvent();
  sub_22F2653D8();
  v97 = sub_22F740EA0();
  v99 = v98;

  if (v97 == v0 && v99 == v2)
  {
    goto LABEL_3;
  }

  v100 = sub_22F742040();

  if (v100)
  {
    goto LABEL_5;
  }

  v3 = type metadata accessor for PhotosChallengeEvaluableAlgorithmGathering();
  sub_22F2653D8();
  v101 = sub_22F740EA0();
  v103 = v102;

  if (v101 == v0 && v103 == v2)
  {
LABEL_3:

LABEL_5:

    return v3;
  }

  v104 = sub_22F742040();

  if (v104)
  {
    goto LABEL_5;
  }

  if (sub_22F740EA0() == v0 && v105 == v2)
  {

LABEL_83:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNewYearsDay();
  }

  v106 = sub_22F742040();

  if (v106)
  {
    goto LABEL_83;
  }

  if (sub_22F740EA0() == v0 && v108 == v2)
  {

LABEL_88:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNewYearsEve();
  }

  v109 = sub_22F742040();

  if (v109)
  {
    goto LABEL_88;
  }

  if (sub_22F740EA0() == v0 && v110 == v2)
  {

LABEL_93:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChristmasDay();
  }

  v111 = sub_22F742040();

  if (v111)
  {
    goto LABEL_93;
  }

  if (sub_22F740EA0() == v0 && v112 == v2)
  {

LABEL_98:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmValentinesDay();
  }

  v113 = sub_22F742040();

  if (v113)
  {
    goto LABEL_98;
  }

  if (sub_22F740EA0() == v0 && v114 == v2)
  {

LABEL_103:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMothersDay();
  }

  v115 = sub_22F742040();

  if (v115)
  {
    goto LABEL_103;
  }

  if (sub_22F740EA0() == v0 && v116 == v2)
  {

LABEL_108:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFathersDay();
  }

  v117 = sub_22F742040();

  if (v117)
  {
    goto LABEL_108;
  }

  if (sub_22F740EA0() == v0 && v118 == v2)
  {

LABEL_113:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChristmasEve();
  }

  v119 = sub_22F742040();

  if (v119)
  {
    goto LABEL_113;
  }

  if (sub_22F740EA0() == v0 && v120 == v2)
  {

LABEL_118:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEaster();
  }

  v121 = sub_22F742040();

  if (v121)
  {
    goto LABEL_118;
  }

  if (sub_22F740EA0() == v0 && v122 == v2)
  {

LABEL_123:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLabourDay();
  }

  v123 = sub_22F742040();

  if (v123)
  {
    goto LABEL_123;
  }

  if (sub_22F740EA0() == v0 && v124 == v2)
  {

LABEL_128:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHalloween();
  }

  v125 = sub_22F742040();

  if (v125)
  {
    goto LABEL_128;
  }

  if (sub_22F740EA0() == v0 && v126 == v2)
  {

LABEL_133:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmWomensDay();
  }

  v127 = sub_22F742040();

  if (v127)
  {
    goto LABEL_133;
  }

  if (sub_22F740EA0() == v0 && v128 == v2)
  {

LABEL_138:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEasterMonday();
  }

  v129 = sub_22F742040();

  if (v129)
  {
    goto LABEL_138;
  }

  if (sub_22F740EA0() == v0 && v130 == v2)
  {

LABEL_143:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSaintNicholas();
  }

  v131 = sub_22F742040();

  if (v131)
  {
    goto LABEL_143;
  }

  if (sub_22F740EA0() == v0 && v132 == v2)
  {

LABEL_148:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAllSaintsDay();
  }

  v133 = sub_22F742040();

  if (v133)
  {
    goto LABEL_148;
  }

  if (sub_22F740EA0() == v0 && v134 == v2)
  {

LABEL_153:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_US();
  }

  v135 = sub_22F742040();

  if (v135)
  {
    goto LABEL_153;
  }

  if (sub_22F740EA0() == v0 && v136 == v2)
  {

LABEL_158:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_PL();
  }

  v137 = sub_22F742040();

  if (v137)
  {
    goto LABEL_158;
  }

  if (sub_22F740EA0() == v0 && v138 == v2)
  {

LABEL_163:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_LT();
  }

  v139 = sub_22F742040();

  if (v139)
  {
    goto LABEL_163;
  }

  if (sub_22F740EA0() == v0 && v140 == v2)
  {

LABEL_168:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_HR();
  }

  v141 = sub_22F742040();

  if (v141)
  {
    goto LABEL_168;
  }

  if (sub_22F740EA0() == v0 && v142 == v2)
  {

LABEL_173:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_FI();
  }

  v143 = sub_22F742040();

  if (v143)
  {
    goto LABEL_173;
  }

  if (sub_22F740EA0() == v0 && v144 == v2)
  {

LABEL_178:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_EE();
  }

  v145 = sub_22F742040();

  if (v145)
  {
    goto LABEL_178;
  }

  if (sub_22F740EA0() == v0 && v146 == v2)
  {

LABEL_183:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_BR();
  }

  v147 = sub_22F742040();

  if (v147)
  {
    goto LABEL_183;
  }

  if (sub_22F740EA0() == v0 && v148 == v2)
  {

LABEL_188:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_BG();
  }

  v149 = sub_22F742040();

  if (v149)
  {
    goto LABEL_188;
  }

  if (sub_22F740EA0() == v0 && v150 == v2)
  {

LABEL_193:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependenceDay_IN();
  }

  v151 = sub_22F742040();

  if (v151)
  {
    goto LABEL_193;
  }

  if (sub_22F740EA0() == v0 && v152 == v2)
  {

LABEL_198:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCarnival();
  }

  v153 = sub_22F742040();

  if (v153)
  {
    goto LABEL_198;
  }

  if (sub_22F740EA0() == v0 && v154 == v2)
  {

LABEL_203:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_AE();
  }

  v155 = sub_22F742040();

  if (v155)
  {
    goto LABEL_203;
  }

  if (sub_22F740EA0() == v0 && v156 == v2)
  {

LABEL_208:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_AT();
  }

  v157 = sub_22F742040();

  if (v157)
  {
    goto LABEL_208;
  }

  if (sub_22F740EA0() == v0 && v158 == v2)
  {

LABEL_213:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_BE();
  }

  v159 = sub_22F742040();

  if (v159)
  {
    goto LABEL_213;
  }

  if (sub_22F740EA0() == v0 && v160 == v2)
  {

LABEL_218:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_CH();
  }

  v161 = sub_22F742040();

  if (v161)
  {
    goto LABEL_218;
  }

  if (sub_22F740EA0() == v0 && v162 == v2)
  {

LABEL_223:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_CN();
  }

  v163 = sub_22F742040();

  if (v163)
  {
    goto LABEL_223;
  }

  if (sub_22F740EA0() == v0 && v164 == v2)
  {

LABEL_228:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_LU();
  }

  v165 = sub_22F742040();

  if (v165)
  {
    goto LABEL_228;
  }

  if (sub_22F740EA0() == v0 && v166 == v2)
  {

LABEL_233:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_MY();
  }

  v167 = sub_22F742040();

  if (v167)
  {
    goto LABEL_233;
  }

  if (sub_22F740EA0() == v0 && v168 == v2)
  {

LABEL_238:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_SA();
  }

  v169 = sub_22F742040();

  if (v169)
  {
    goto LABEL_238;
  }

  if (sub_22F740EA0() == v0 && v170 == v2)
  {

LABEL_243:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_SG();
  }

  v171 = sub_22F742040();

  if (v171)
  {
    goto LABEL_243;
  }

  if (sub_22F740EA0() == v0 && v172 == v2)
  {

LABEL_248:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_TH();
  }

  v173 = sub_22F742040();

  if (v173)
  {
    goto LABEL_248;
  }

  if (sub_22F740EA0() == v0 && v174 == v2)
  {

LABEL_253:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDay_TW();
  }

  v175 = sub_22F742040();

  if (v175)
  {
    goto LABEL_253;
  }

  if (sub_22F740EA0() == v0 && v176 == v2)
  {

LABEL_258:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStStephensDay();
  }

  v177 = sub_22F742040();

  if (v177)
  {
    goto LABEL_258;
  }

  if (sub_22F740EA0() == v0 && v178 == v2)
  {

LABEL_263:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmConstitutionDay();
  }

  v179 = sub_22F742040();

  if (v179)
  {
    goto LABEL_263;
  }

  if (sub_22F740EA0() == v0 && v180 == v2)
  {

LABEL_268:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAssumption();
  }

  v181 = sub_22F742040();

  if (v181)
  {
    goto LABEL_268;
  }

  if (sub_22F740EA0() == v0 && v182 == v2)
  {

LABEL_273:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChildrensDay();
  }

  v183 = sub_22F742040();

  if (v183)
  {
    goto LABEL_273;
  }

  if (sub_22F740EA0() == v0 && v184 == v2)
  {

LABEL_278:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAprilFoolsDay();
  }

  v185 = sub_22F742040();

  if (v185)
  {
    goto LABEL_278;
  }

  if (sub_22F740EA0() == v0 && v186 == v2)
  {

LABEL_283:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStPatricksDay();
  }

  v187 = sub_22F742040();

  if (v187)
  {
    goto LABEL_283;
  }

  if (sub_22F740EA0() == v0 && v188 == v2)
  {

LABEL_288:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMusicDay();
  }

  v189 = sub_22F742040();

  if (v189)
  {
    goto LABEL_288;
  }

  if (sub_22F740EA0() == v0 && v190 == v2)
  {

LABEL_293:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLiberationDay();
  }

  v191 = sub_22F742040();

  if (v191)
  {
    goto LABEL_293;
  }

  if (sub_22F740EA0() == v0 && v192 == v2)
  {

LABEL_298:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSpringEquinox();
  }

  v193 = sub_22F742040();

  if (v193)
  {
    goto LABEL_298;
  }

  if (sub_22F740EA0() == v0 && v194 == v2)
  {

LABEL_303:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithm2ndChristmasDay();
  }

  v195 = sub_22F742040();

  if (v195)
  {
    goto LABEL_303;
  }

  if (sub_22F740EA0() == v0 && v196 == v2)
  {

LABEL_308:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMidsummerDay();
  }

  v197 = sub_22F742040();

  if (v197)
  {
    goto LABEL_308;
  }

  if (sub_22F740EA0() == v0 && v198 == v2)
  {

LABEL_313:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMidsummerEve();
  }

  v199 = sub_22F742040();

  if (v199)
  {
    goto LABEL_313;
  }

  if (sub_22F740EA0() == v0 && v200 == v2)
  {

LABEL_318:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRepublicDay();
  }

  v201 = sub_22F742040();

  if (v201)
  {
    goto LABEL_318;
  }

  if (sub_22F740EA0() == v0 && v202 == v2)
  {

LABEL_323:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLaborDay();
  }

  v203 = sub_22F742040();

  if (v203)
  {
    goto LABEL_323;
  }

  if (sub_22F740EA0() == v0 && v204 == v2)
  {

LABEL_328:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAscension();
  }

  v205 = sub_22F742040();

  if (v205)
  {
    goto LABEL_328;
  }

  if (sub_22F740EA0() == v0 && v206 == v2)
  {

LABEL_333:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRemembranceDay();
  }

  v207 = sub_22F742040();

  if (v207)
  {
    goto LABEL_333;
  }

  if (sub_22F740EA0() == v0 && v208 == v2)
  {

LABEL_338:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEmperorsBirthday();
  }

  v209 = sub_22F742040();

  if (v209)
  {
    goto LABEL_338;
  }

  if (sub_22F740EA0() == v0 && v210 == v2)
  {

LABEL_343:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLaborThanksgivingDay();
  }

  v211 = sub_22F742040();

  if (v211)
  {
    goto LABEL_343;
  }

  if (sub_22F740EA0() == v0 && v212 == v2)
  {

LABEL_348:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCultureDay();
  }

  v213 = sub_22F742040();

  if (v213)
  {
    goto LABEL_348;
  }

  if (sub_22F740EA0() == v0 && v214 == v2)
  {

LABEL_353:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSportsDay();
  }

  v215 = sub_22F742040();

  if (v215)
  {
    goto LABEL_353;
  }

  if (sub_22F740EA0() == v0 && v216 == v2)
  {

LABEL_358:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAutumnalEquinox();
  }

  v217 = sub_22F742040();

  if (v217)
  {
    goto LABEL_358;
  }

  if (sub_22F740EA0() == v0 && v218 == v2)
  {

LABEL_363:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmBuddhasBirthday();
  }

  v219 = sub_22F742040();

  if (v219)
  {
    goto LABEL_363;
  }

  if (sub_22F740EA0() == v0 && v220 == v2)
  {

LABEL_368:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStatehoodDay();
  }

  v221 = sub_22F742040();

  if (v221)
  {
    goto LABEL_368;
  }

  if (sub_22F740EA0() == v0 && v222 == v2)
  {

LABEL_373:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmANZACDay();
  }

  v223 = sub_22F742040();

  if (v223)
  {
    goto LABEL_373;
  }

  if (sub_22F740EA0() == v0 && v224 == v2)
  {

LABEL_378:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmQueensBirthday();
  }

  v225 = sub_22F742040();

  if (v225)
  {
    goto LABEL_378;
  }

  if (sub_22F740EA0() == v0 && v226 == v2)
  {

LABEL_383:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCorpusChristi();
  }

  v227 = sub_22F742040();

  if (v227)
  {
    goto LABEL_383;
  }

  if (sub_22F740EA0() == v0 && v228 == v2)
  {

LABEL_388:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEpiphany();
  }

  v229 = sub_22F742040();

  if (v229)
  {
    goto LABEL_388;
  }

  if (sub_22F740EA0() == v0 && v230 == v2)
  {

LABEL_393:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStAndrewsDay();
  }

  v231 = sub_22F742040();

  if (v231)
  {
    goto LABEL_393;
  }

  if (sub_22F740EA0() == v0 && v232 == v2)
  {

LABEL_398:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmVictoryDay();
  }

  v233 = sub_22F742040();

  if (v233)
  {
    goto LABEL_398;
  }

  if (sub_22F740EA0() == v0 && v234 == v2)
  {

LABEL_403:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMayDay();
  }

  v235 = sub_22F742040();

  if (v235)
  {
    goto LABEL_403;
  }

  if (sub_22F740EA0() == v0 && v236 == v2)
  {

LABEL_408:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLunarNewYearsDay();
  }

  v237 = sub_22F742040();

  if (v237)
  {
    goto LABEL_408;
  }

  if (sub_22F740EA0() == v0 && v238 == v2)
  {

LABEL_413:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLunarNewYearsEve();
  }

  v239 = sub_22F742040();

  if (v239)
  {
    goto LABEL_413;
  }

  if (sub_22F740EA0() == v0 && v240 == v2)
  {

LABEL_418:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChineseNewYearsDay();
  }

  v241 = sub_22F742040();

  if (v241)
  {
    goto LABEL_418;
  }

  if (sub_22F740EA0() == v0 && v242 == v2)
  {

LABEL_423:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChineseNewYearsEve();
  }

  v243 = sub_22F742040();

  if (v243)
  {
    goto LABEL_423;
  }

  if (sub_22F740EA0() == v0 && v244 == v2)
  {

LABEL_428:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMidAutumnFestival();
  }

  v245 = sub_22F742040();

  if (v245)
  {
    goto LABEL_428;
  }

  if (sub_22F740EA0() == v0 && v246 == v2)
  {

LABEL_433:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDragonBoatFestival();
  }

  v247 = sub_22F742040();

  if (v247)
  {
    goto LABEL_433;
  }

  if (sub_22F740EA0() == v0 && v248 == v2)
  {

LABEL_438:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLanternFestival();
  }

  v249 = sub_22F742040();

  if (v249)
  {
    goto LABEL_438;
  }

  if (sub_22F740EA0() == v0 && v250 == v2)
  {

LABEL_443:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDoubleNinthFestival();
  }

  v251 = sub_22F742040();

  if (v251)
  {
    goto LABEL_443;
  }

  if (sub_22F740EA0() == v0 && v252 == v2)
  {

LABEL_448:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmYouthDay();
  }

  v253 = sub_22F742040();

  if (v253)
  {
    goto LABEL_448;
  }

  if (sub_22F740EA0() == v0 && v254 == v2)
  {

LABEL_453:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalCatDay();
  }

  v255 = sub_22F742040();

  if (v255)
  {
    goto LABEL_453;
  }

  if (sub_22F740EA0() == v0 && v256 == v2)
  {

LABEL_458:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDogDay();
  }

  v257 = sub_22F742040();

  if (v257)
  {
    goto LABEL_458;
  }

  if (sub_22F740EA0() == v0 && v258 == v2)
  {

LABEL_463:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmThanksgivingUS();
  }

  v259 = sub_22F742040();

  if (v259)
  {
    goto LABEL_463;
  }

  if (sub_22F740EA0() == v0 && v260 == v2)
  {

LABEL_468:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmThanksgivingCA();
  }

  v261 = sub_22F742040();

  if (v261)
  {
    goto LABEL_468;
  }

  if (sub_22F740EA0() == v0 && v262 == v2)
  {

LABEL_473:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEarthDay();
  }

  v263 = sub_22F742040();

  if (v263)
  {
    goto LABEL_473;
  }

  if (sub_22F740EA0() == v0 && v264 == v2)
  {

LABEL_478:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStMartinsDay();
  }

  v265 = sub_22F742040();

  if (v265)
  {
    goto LABEL_478;
  }

  if (sub_22F740EA0() == v0 && v266 == v2)
  {

LABEL_483:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmShroveTuesday();
  }

  v267 = sub_22F742040();

  if (v267)
  {
    goto LABEL_483;
  }

  if (sub_22F740EA0() == v0 && v268 == v2)
  {

LABEL_488:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRoseMonday();
  }

  v269 = sub_22F742040();

  if (v269)
  {
    goto LABEL_488;
  }

  if (sub_22F740EA0() == v0 && v270 == v2)
  {

LABEL_493:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMelbourneCup();
  }

  v271 = sub_22F742040();

  if (v271)
  {
    goto LABEL_493;
  }

  if (sub_22F740EA0() == v0 && v272 == v2)
  {

LABEL_498:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAustraliaDay();
  }

  v273 = sub_22F742040();

  if (v273)
  {
    goto LABEL_498;
  }

  if (sub_22F740EA0() == v0 && v274 == v2)
  {

LABEL_503:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDayoftheGermanspeakingCommunity();
  }

  v275 = sub_22F742040();

  if (v275)
  {
    goto LABEL_503;
  }

  if (sub_22F740EA0() == v0 && v276 == v2)
  {

LABEL_508:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFrenchCommunityDay();
  }

  v277 = sub_22F742040();

  if (v277)
  {
    goto LABEL_508;
  }

  if (sub_22F740EA0() == v0 && v278 == v2)
  {

LABEL_513:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFlemishCommunityDay();
  }

  v279 = sub_22F742040();

  if (v279)
  {
    goto LABEL_513;
  }

  if (sub_22F740EA0() == v0 && v280 == v2)
  {

LABEL_518:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRevivalLeadersDay();
  }

  v281 = sub_22F742040();

  if (v281)
  {
    goto LABEL_518;
  }

  if (sub_22F740EA0() == v0 && v282 == v2)
  {

LABEL_523:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCultureandLiteracyDay();
  }

  v283 = sub_22F742040();

  if (v283)
  {
    goto LABEL_523;
  }

  if (sub_22F740EA0() == v0 && v284 == v2)
  {

LABEL_528:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmBabaMarta();
  }

  v285 = sub_22F742040();

  if (v285)
  {
    goto LABEL_528;
  }

  if (sub_22F740EA0() == v0 && v286 == v2)
  {

LABEL_533:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmUnificationDay();
  }

  v287 = sub_22F742040();

  if (v287)
  {
    goto LABEL_533;
  }

  if (sub_22F740EA0() == v0 && v288 == v2)
  {

LABEL_538:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCanadaDay();
  }

  v289 = sub_22F742040();

  if (v289)
  {
    goto LABEL_538;
  }

  if (sub_22F740EA0() == v0 && v290 == v2)
  {

LABEL_543:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSaintJeanBaptisteDay();
  }

  v291 = sub_22F742040();

  if (v291)
  {
    goto LABEL_543;
  }

  if (sub_22F740EA0() == v0 && v292 == v2)
  {

LABEL_548:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmVictoriaDay();
  }

  v293 = sub_22F742040();

  if (v293)
  {
    goto LABEL_548;
  }

  if (sub_22F740EA0() == v0 && v294 == v2)
  {

LABEL_553:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStNikolaus();
  }

  v295 = sub_22F742040();

  if (v295)
  {
    goto LABEL_553;
  }

  if (sub_22F740EA0() == v0 && v296 == v2)
  {

LABEL_558:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmChineseValentinesDay();
  }

  v297 = sub_22F742040();

  if (v297)
  {
    goto LABEL_558;
  }

  if (sub_22F740EA0() == v0 && v298 == v2)
  {

LABEL_563:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTombSweepingDay();
  }

  v299 = sub_22F742040();

  if (v299)
  {
    goto LABEL_563;
  }

  if (sub_22F740EA0() == v0 && v300 == v2)
  {

LABEL_568:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmIndependentCzechoslovakStateDay();
  }

  v301 = sub_22F742040();

  if (v301)
  {
    goto LABEL_568;
  }

  if (sub_22F740EA0() == v0 && v302 == v2)
  {

LABEL_573:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGermanUnityDay();
  }

  v303 = sub_22F742040();

  if (v303)
  {
    goto LABEL_573;
  }

  if (sub_22F740EA0() == v0 && v304 == v2)
  {

LABEL_578:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTeachersDay();
  }

  v305 = sub_22F742040();

  if (v305)
  {
    goto LABEL_578;
  }

  if (sub_22F740EA0() == v0 && v306 == v2)
  {

LABEL_583:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTheWalpurgisNight();
  }

  v307 = sub_22F742040();

  if (v307)
  {
    goto LABEL_583;
  }

  if (sub_22F740EA0() == v0 && v308 == v2)
  {

LABEL_588:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGrandparentsDay();
  }

  v309 = sub_22F742040();

  if (v309)
  {
    goto LABEL_588;
  }

  if (sub_22F740EA0() == v0 && v310 == v2)
  {

LABEL_593:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRestorationofIndependence();
  }

  v311 = sub_22F742040();

  if (v311)
  {
    goto LABEL_593;
  }

  if (sub_22F740EA0() == v0 && v312 == v2)
  {

LABEL_598:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSpringDay();
  }

  v313 = sub_22F742040();

  if (v313)
  {
    goto LABEL_598;
  }

  if (sub_22F740EA0() == v0 && v314 == v2)
  {

LABEL_603:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStGeorge();
  }

  v315 = sub_22F742040();

  if (v315)
  {
    goto LABEL_603;
  }

  if (sub_22F740EA0() == v0 && v316 == v2)
  {

LABEL_608:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSpanishnessDay();
  }

  v317 = sub_22F742040();

  if (v317)
  {
    goto LABEL_608;
  }

  if (sub_22F740EA0() == v0 && v318 == v2)
  {

LABEL_613:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmBastilleDay();
  }

  v319 = sub_22F742040();

  if (v319)
  {
    goto LABEL_613;
  }

  if (sub_22F740EA0() == v0 && v320 == v2)
  {

LABEL_618:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDayofGrandmothers();
  }

  v321 = sub_22F742040();

  if (v321)
  {
    goto LABEL_618;
  }

  if (sub_22F740EA0() == v0 && v322 == v2)
  {

LABEL_623:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAshWednesday();
  }

  v323 = sub_22F742040();

  if (v323)
  {
    goto LABEL_623;
  }

  if (sub_22F740EA0() == v0 && v324 == v2)
  {

LABEL_628:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGuyFawkesNight();
  }

  v325 = sub_22F742040();

  if (v325)
  {
    goto LABEL_628;
  }

  if (sub_22F740EA0() == v0 && v326 == v2)
  {

LABEL_633:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmPolytechneio();
  }

  v327 = sub_22F742040();

  if (v327)
  {
    goto LABEL_633;
  }

  if (sub_22F740EA0() == v0 && v328 == v2)
  {

LABEL_638:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAnnunciation();
  }

  v329 = sub_22F742040();

  if (v329)
  {
    goto LABEL_638;
  }

  if (sub_22F740EA0() == v0 && v330 == v2)
  {

LABEL_643:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmOchiDay();
  }

  v331 = sub_22F742040();

  if (v331)
  {
    goto LABEL_643;
  }

  if (sub_22F740EA0() == v0 && v332 == v2)
  {

LABEL_648:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmOrthodoxEasterPascha();
  }

  v333 = sub_22F742040();

  if (v333)
  {
    goto LABEL_648;
  }

  if (sub_22F740EA0() == v0 && v334 == v2)
  {

LABEL_653:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCleanMonday();
  }

  v335 = sub_22F742040();

  if (v335)
  {
    goto LABEL_653;
  }

  if (sub_22F740EA0() == v0 && v336 == v2)
  {

LABEL_658:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHomelandThanksgivingDay();
  }

  v337 = sub_22F742040();

  if (v337)
  {
    goto LABEL_658;
  }

  if (sub_22F740EA0() == v0 && v338 == v2)
  {

LABEL_663:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAnniversaryoftheRevolution184849();
  }

  v339 = sub_22F742040();

  if (v339)
  {
    goto LABEL_663;
  }

  if (sub_22F740EA0() == v0 && v340 == v2)
  {

LABEL_668:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEmperorsBirthdayEmperorNaruhito();
  }

  v341 = sub_22F742040();

  if (v341)
  {
    goto LABEL_668;
  }

  if (sub_22F740EA0() == v0 && v342 == v2)
  {

LABEL_673:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmEmperorsBirthdayEmperorEmeritusAkihito();
  }

  v343 = sub_22F742040();

  if (v343)
  {
    goto LABEL_673;
  }

  if (sub_22F740EA0() == v0 && v344 == v2)
  {

LABEL_678:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHealthandSportsDay();
  }

  v345 = sub_22F742040();

  if (v345)
  {
    goto LABEL_678;
  }

  if (sub_22F740EA0() == v0 && v346 == v2)
  {

LABEL_683:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmShichigosan();
  }

  v347 = sub_22F742040();

  if (v347)
  {
    goto LABEL_683;
  }

  if (sub_22F740EA0() == v0 && v348 == v2)
  {

LABEL_688:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRespectfortheAgedDay();
  }

  v349 = sub_22F742040();

  if (v349)
  {
    goto LABEL_688;
  }

  if (sub_22F740EA0() == v0 && v350 == v2)
  {

LABEL_693:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmObon();
  }

  v351 = sub_22F742040();

  if (v351)
  {
    goto LABEL_693;
  }

  if (sub_22F740EA0() == v0 && v352 == v2)
  {

LABEL_698:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMountainDay();
  }

  v353 = sub_22F742040();

  if (v353)
  {
    goto LABEL_698;
  }

  if (sub_22F740EA0() == v0 && v354 == v2)
  {

LABEL_703:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMarineDay();
  }

  v355 = sub_22F742040();

  if (v355)
  {
    goto LABEL_703;
  }

  if (sub_22F740EA0() == v0 && v356 == v2)
  {

LABEL_708:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTanabataStarFestival();
  }

  v357 = sub_22F742040();

  if (v357)
  {
    goto LABEL_708;
  }

  if (sub_22F740EA0() == v0 && v358 == v2)
  {

LABEL_713:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmGreeneryDay();
  }

  v359 = sub_22F742040();

  if (v359)
  {
    goto LABEL_713;
  }

  if (sub_22F740EA0() == v0 && v360 == v2)
  {

LABEL_718:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmConstitutionMemorialDay();
  }

  v361 = sub_22F742040();

  if (v361)
  {
    goto LABEL_718;
  }

  if (sub_22F740EA0() == v0 && v362 == v2)
  {

LABEL_723:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmShowaDay();
  }

  v363 = sub_22F742040();

  if (v363)
  {
    goto LABEL_723;
  }

  if (sub_22F740EA0() == v0 && v364 == v2)
  {

LABEL_728:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmWhiteDay();
  }

  v365 = sub_22F742040();

  if (v365)
  {
    goto LABEL_728;
  }

  if (sub_22F740EA0() == v0 && v366 == v2)
  {

LABEL_733:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFoundationDay();
  }

  v367 = sub_22F742040();

  if (v367)
  {
    goto LABEL_733;
  }

  if (sub_22F740EA0() == v0 && v368 == v2)
  {

LABEL_738:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmComingofAgeDay();
  }

  v369 = sub_22F742040();

  if (v369)
  {
    goto LABEL_738;
  }

  if (sub_22F740EA0() == v0 && v370 == v2)
  {

LABEL_743:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHarvestFestival_KR();
  }

  v371 = sub_22F742040();

  if (v371)
  {
    goto LABEL_743;
  }

  if (sub_22F740EA0() == v0 && v372 == v2)
  {

LABEL_748:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLiberationDay_KR();
  }

  v373 = sub_22F742040();

  if (v373)
  {
    goto LABEL_748;
  }

  if (sub_22F740EA0() == v0 && v374 == v2)
  {

LABEL_753:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMemorialDay_KR();
  }

  v375 = sub_22F742040();

  if (v375)
  {
    goto LABEL_753;
  }

  if (sub_22F740EA0() == v0 && v376 == v2)
  {

LABEL_758:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmParentsDay();
  }

  v377 = sub_22F742040();

  if (v377)
  {
    goto LABEL_758;
  }

  if (sub_22F740EA0() == v0 && v378 == v2)
  {

LABEL_763:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmLunarYearsDay();
  }

  v379 = sub_22F742040();

  if (v379)
  {
    goto LABEL_763;
  }

  if (sub_22F740EA0() == v0 && v380 == v2)
  {

LABEL_768:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStJohnsDay();
  }

  v381 = sub_22F742040();

  if (v381)
  {
    goto LABEL_768;
  }

  if (sub_22F740EA0() == v0 && v382 == v2)
  {

LABEL_773:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalRemembranceDay();
  }

  v383 = sub_22F742040();

  if (v383)
  {
    goto LABEL_773;
  }

  if (sub_22F740EA0() == v0 && v384 == v2)
  {

LABEL_778:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmStNicholasEve();
  }

  v385 = sub_22F742040();

  if (v385)
  {
    goto LABEL_778;
  }

  if (sub_22F740EA0() == v0 && v386 == v2)
  {

LABEL_783:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmKingsDay();
  }

  v387 = sub_22F742040();

  if (v387)
  {
    goto LABEL_783;
  }

  if (sub_22F740EA0() == v0 && v388 == v2)
  {

LABEL_788:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmSaintLucysDay();
  }

  v389 = sub_22F742040();

  if (v389)
  {
    goto LABEL_788;
  }

  if (sub_22F740EA0() == v0 && v390 == v2)
  {

LABEL_793:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDayofLiberation();
  }

  v391 = sub_22F742040();

  if (v391)
  {
    goto LABEL_793;
  }

  if (sub_22F740EA0() == v0 && v392 == v2)
  {

LABEL_798:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMaundyThursday();
  }

  v393 = sub_22F742040();

  if (v393)
  {
    goto LABEL_798;
  }

  if (sub_22F740EA0() == v0 && v394 == v2)
  {

LABEL_803:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmAdventSunday();
  }

  v395 = sub_22F742040();

  if (v395)
  {
    goto LABEL_803;
  }

  if (sub_22F740EA0() == v0 && v396 == v2)
  {

LABEL_808:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmPortugalDay();
  }

  v397 = sub_22F742040();

  if (v397)
  {
    goto LABEL_808;
  }

  if (sub_22F740EA0() == v0 && v398 == v2)
  {

LABEL_813:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMartisor();
  }

  v399 = sub_22F742040();

  if (v399)
  {
    goto LABEL_813;
  }

  if (sub_22F740EA0() == v0 && v400 == v2)
  {

LABEL_818:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmNationalDayofRomania();
  }

  v401 = sub_22F742040();

  if (v401)
  {
    goto LABEL_818;
  }

  if (sub_22F740EA0() == v0 && v402 == v2)
  {

LABEL_823:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDragobete();
  }

  v403 = sub_22F742040();

  if (v403)
  {
    goto LABEL_823;
  }

  if (sub_22F740EA0() == v0 && v404 == v2)
  {

LABEL_828:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmUnityDay();
  }

  v405 = sub_22F742040();

  if (v405)
  {
    goto LABEL_828;
  }

  if (sub_22F740EA0() == v0 && v406 == v2)
  {

LABEL_833:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmDefenderoftheFatherlandDay();
  }

  v407 = sub_22F742040();

  if (v407)
  {
    goto LABEL_833;
  }

  if (sub_22F740EA0() == v0 && v408 == v2)
  {

LABEL_838:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmKnowledgeDay();
  }

  v409 = sub_22F742040();

  if (v409)
  {
    goto LABEL_838;
  }

  if (sub_22F740EA0() == v0 && v410 == v2)
  {

LABEL_843:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmCosmonauticsDay();
  }

  v411 = sub_22F742040();

  if (v411)
  {
    goto LABEL_843;
  }

  if (sub_22F740EA0() == v0 && v412 == v2)
  {

LABEL_848:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmOrthodoxNewYear();
  }

  v413 = sub_22F742040();

  if (v413)
  {
    goto LABEL_848;
  }

  if (sub_22F740EA0() == v0 && v414 == v2)
  {

LABEL_853:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmWalpurgisNight();
  }

  v415 = sub_22F742040();

  if (v415)
  {
    goto LABEL_853;
  }

  if (sub_22F740EA0() == v0 && v416 == v2)
  {

LABEL_858:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHariRayaHaji();
  }

  v417 = sub_22F742040();

  if (v417)
  {
    goto LABEL_858;
  }

  if (sub_22F740EA0() == v0 && v418 == v2)
  {

LABEL_863:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmHariRayaPuasa();
  }

  v419 = sub_22F742040();

  if (v419)
  {
    goto LABEL_863;
  }

  if (sub_22F740EA0() == v0 && v420 == v2)
  {

LABEL_868:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmArmedForcesDay();
  }

  v421 = sub_22F742040();

  if (v421)
  {
    goto LABEL_868;
  }

  if (sub_22F740EA0() == v0 && v422 == v2)
  {

LABEL_873:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithm228MemorialDay();
  }

  v423 = sub_22F742040();

  if (v423)
  {
    goto LABEL_873;
  }

  if (sub_22F740EA0() == v0 && v424 == v2)
  {

LABEL_878:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmRepublicDayNewYearsDay();
  }

  v425 = sub_22F742040();

  if (v425)
  {
    goto LABEL_878;
  }

  if (sub_22F740EA0() == v0 && v426 == v2)
  {

LABEL_883:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFarmersDay();
  }

  v427 = sub_22F742040();

  if (v427)
  {
    goto LABEL_883;
  }

  if (sub_22F740EA0() == v0 && v428 == v2)
  {

LABEL_888:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmFoundingoftheRepublicofChina();
  }

  v429 = sub_22F742040();

  if (v429)
  {
    goto LABEL_888;
  }

  if (sub_22F740EA0() == v0 && v430 == v2)
  {

LABEL_893:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmTaiwanRetrocessionDay();
  }

  v431 = sub_22F742040();

  if (v431)
  {
    goto LABEL_893;
  }

  if (sub_22F740EA0() == v0 && v432 == v2)
  {

LABEL_898:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmVeteransDay();
  }

  v433 = sub_22F742040();

  if (v433)
  {
    goto LABEL_898;
  }

  if (sub_22F740EA0() == v0 && v434 == v2)
  {

LABEL_903:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMemorialDay();
  }

  v435 = sub_22F742040();

  if (v435)
  {
    goto LABEL_903;
  }

  if (sub_22F740EA0() == v0 && v436 == v2)
  {

LABEL_908:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmInternationalDayofFriendship();
  }

  v437 = sub_22F742040();

  if (v437)
  {
    goto LABEL_908;
  }

  if (sub_22F740EA0() == v0 && v438 == v2)
  {

LABEL_913:

    return type metadata accessor for PhotosChallengeEvaluableAlgorithmMartinLutherKingJrDay();
  }

  v439 = sub_22F742040();

  if (v439)
  {
    goto LABEL_913;
  }

  if (sub_22F740EA0() == v0 && v440 == v2)
  {
  }

  else
  {
    v441 = sub_22F742040();

    if ((v441 & 1) == 0)
    {
      return 0;
    }
  }

  return type metadata accessor for PhotosChallengeEvaluablePublicEventAlgorithm();
}

uint64_t MaestroSongsInfo.schemaVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MaestroSongsInfo.contentVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

PhotosGraph::MaestroSongsInfo __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MaestroSongsInfo.init(schemaVersion:contentVersion:)(Swift::String schemaVersion, Swift::String contentVersion)
{
  *v2 = schemaVersion;
  v2[1] = contentVersion;
  result.contentVersion = contentVersion;
  result.schemaVersion = schemaVersion;
  return result;
}

uint64_t MaestroSongsInfo.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v5 = sub_22F73F480();
  if (v2)
  {
    goto LABEL_22;
  }

  v7 = v5;
  v8 = v6;
  v9 = objc_opt_self();
  v10 = sub_22F73F4F0();
  v33[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:4 error:v33];

  if (!v11)
  {
    v23 = v33[0];
    sub_22F73F370();

LABEL_21:
    swift_willThrow();
    sub_22F133BF0(v7, v8);
LABEL_22:
    v29 = sub_22F73F470();
    result = (*(*(v29 - 8) + 8))(a1, v29);
    goto LABEL_23;
  }

  v12 = v33[0];
  sub_22F741920();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22F1C9700();
    swift_allocError();
    *v24 = 0;
    goto LABEL_21;
  }

  if (!*(v31 + 16))
  {
    goto LABEL_14;
  }

  v13 = sub_22F1229E8(0x6556616D65686373, 0xED00006E6F697372);
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_22F13A100(*(v31 + 56) + 32 * v13, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = v32;
  if (!*(v31 + 16) || (v16 = v31, v17 = sub_22F1229E8(0x56746E65746E6F63, 0xEE006E6F69737265), (v18 & 1) == 0) || (sub_22F13A100(*(v31 + 56) + 32 * v17, v33), (swift_dynamicCast() & 1) == 0))
  {

LABEL_14:
    if (*(v31 + 16) && (v25 = sub_22F1229E8(0x6E6F6973726576, 0xE700000000000000), (v26 & 1) != 0))
    {
      sub_22F13A100(*(v31 + 56) + 32 * v25, v33);

      if (swift_dynamicCast())
      {
        v27 = sub_22F73F470();
        (*(*(v27 - 8) + 8))(a1, v27);
        sub_22F133BF0(v7, v8);
        v16 = v31;
        v15 = v32;

        v21 = v31;
        v22 = v32;
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_22F1C9700();
    swift_allocError();
    *v28 = 1;
    goto LABEL_21;
  }

  v19 = sub_22F73F470();
  (*(*(v19 - 8) + 8))(a1, v19);
  sub_22F133BF0(v7, v8);

  v21 = v31;
  v22 = v32;
LABEL_18:
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v21;
  a2[3] = v22;
LABEL_23:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22F1C9700()
{
  result = qword_27DAB21A8;
  if (!qword_27DAB21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21A8);
  }

  return result;
}

unint64_t sub_22F1C9778()
{
  result = qword_27DAB21B0;
  if (!qword_27DAB21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21B0);
  }

  return result;
}

uint64_t sub_22F1C97DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_22F1C9864(uint64_t a1)
{
  v2 = sub_22F1C9A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1C98A0(uint64_t a1)
{
  v2 = sub_22F1C9A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.Attributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21B8, &qword_22F778BD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1C9A50();
  sub_22F742200();
  if (!v2)
  {
    v11 = sub_22F741EB0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1C9A50()
{
  result = qword_27DAB21C0;
  if (!qword_27DAB21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21C0);
  }

  return result;
}

uint64_t sub_22F1C9ABC()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F1C9B30()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F1C9B84@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22F741E30();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_22F1C9C14@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22F741E30();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22F1C9C6C(uint64_t a1)
{
  v2 = sub_22F1C9E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1C9CA8(uint64_t a1)
{
  v2 = sub_22F1C9E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.Views.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21C8, &qword_22F778BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1C9E5C();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1C9EB0();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1C9E5C()
{
  result = qword_27DAB21D0;
  if (!qword_27DAB21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21D0);
  }

  return result;
}

unint64_t sub_22F1C9EB0()
{
  result = qword_2810AA128;
  if (!qword_2810AA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA128);
  }

  return result;
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.attributes.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_22F1C9F64()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x7377656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22F1C9FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F1CAC7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F1C9FDC(uint64_t a1)
{
  v2 = sub_22F1CA2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1CA018(uint64_t a1)
{
  v2 = sub_22F1CA2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitArtistEssentialsResponse.ArtistView.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21D8, &qword_22F778BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1CA2F4();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_22F741EB0();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  sub_22F1CA348();
  sub_22F741F10();
  v18 = v21;
  v19 = v22;
  v23 = 2;
  sub_22F1CA39C();
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  *a2 = v20;
  a2[1] = v13;
  v15 = v19;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1CA2F4()
{
  result = qword_27DAB21E0;
  if (!qword_27DAB21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21E0);
  }

  return result;
}

unint64_t sub_22F1CA348()
{
  result = qword_27DAB21E8;
  if (!qword_27DAB21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21E8);
  }

  return result;
}

unint64_t sub_22F1CA39C()
{
  result = qword_27DAB21F0;
  if (!qword_27DAB21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB21F0);
  }

  return result;
}

uint64_t sub_22F1CA410(uint64_t a1)
{
  v2 = sub_22F1CA608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1CA44C(uint64_t a1)
{
  v2 = sub_22F1CA608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitArtistEssentialsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB21F8, &qword_22F778BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1CA608();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2208, &qword_22F778BF0);
    sub_22F1CA65C();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1CA608()
{
  result = qword_27DAB2200;
  if (!qword_27DAB2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2200);
  }

  return result;
}

unint64_t sub_22F1CA65C()
{
  result = qword_27DAB2210;
  if (!qword_27DAB2210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2208, &qword_22F778BF0);
    sub_22F1CA6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2210);
  }

  return result;
}

unint64_t sub_22F1CA6E0()
{
  result = qword_27DAB2218;
  if (!qword_27DAB2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2218);
  }

  return result;
}

uint64_t sub_22F1CA75C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22F1CA7A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_22F1CA860()
{
  result = qword_27DAB2220;
  if (!qword_27DAB2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2220);
  }

  return result;
}

unint64_t sub_22F1CA8B8()
{
  result = qword_27DAB2228;
  if (!qword_27DAB2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2228);
  }

  return result;
}

unint64_t sub_22F1CA910()
{
  result = qword_27DAB2230;
  if (!qword_27DAB2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2230);
  }

  return result;
}

unint64_t sub_22F1CA968()
{
  result = qword_27DAB2238;
  if (!qword_27DAB2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2238);
  }

  return result;
}

unint64_t sub_22F1CA9C0()
{
  result = qword_27DAB2240;
  if (!qword_27DAB2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2240);
  }

  return result;
}

unint64_t sub_22F1CAA18()
{
  result = qword_27DAB2248;
  if (!qword_27DAB2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2248);
  }

  return result;
}

unint64_t sub_22F1CAA70()
{
  result = qword_27DAB2250;
  if (!qword_27DAB2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2250);
  }

  return result;
}

unint64_t sub_22F1CAAC8()
{
  result = qword_27DAB2258;
  if (!qword_27DAB2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2258);
  }

  return result;
}

unint64_t sub_22F1CAB20()
{
  result = qword_27DAB2260;
  if (!qword_27DAB2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2260);
  }

  return result;
}

unint64_t sub_22F1CAB78()
{
  result = qword_27DAB2268;
  if (!qword_27DAB2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2268);
  }

  return result;
}

unint64_t sub_22F1CABD0()
{
  result = qword_27DAB2270;
  if (!qword_27DAB2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2270);
  }

  return result;
}

unint64_t sub_22F1CAC28()
{
  result = qword_27DAB2278;
  if (!qword_27DAB2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2278);
  }

  return result;
}

uint64_t sub_22F1CAC7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7377656976 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t RecentPeriod.dateInterval(currentDate:)()
{
  v1 = sub_22F73F990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22F73F9B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  sub_22F73F970();
  if (v11)
  {
    sub_22F73F890();
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277CC9940], v1);
    sub_22F73F8C0();
    (*(v2 + 8))(v5, v1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t RecentPeriod.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

void *HistoricalInterval.annualDateIntervals(startDate:currentDate:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22F73F990();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, **(&unk_27887E460 + *v2), v5, v8);
  v11 = HistoricalInterval.annualDateIntervals(from:to:windowSize:)(a1, a2, v10);
  (*(v6 + 8))(v10, v5);
  return v11;
}

void *HistoricalInterval.annualDateIntervals(from:to:windowSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - v6;
  v75 = sub_22F73F090();
  v8 = *(v75 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v75);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v54 - v13;
  v74 = sub_22F73F990();
  v14 = *(v74 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v72 = &v54 - v19;
  v20 = sub_22F73F690();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v80 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  v56 = sub_22F73F9B0();
  v55 = *(v56 - 8);
  v27 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F970();
  v76 = v29;
  sub_22F73F800();
  v30 = v26;
  v70 = a1;
  v31 = sub_22F73F5C0();
  v54 = v21;
  if (v31)
  {
    v68 = *MEMORY[0x277CC9988];
    v33 = *(v14 + 104);
    v32 = v14 + 104;
    v66 = (v32 - 96);
    v67 = v33;
    v64 = (v8 + 48);
    v65 = (v21 + 48);
    v77 = (v8 + 32);
    v78 = (v21 + 32);
    v58 = (v8 + 16);
    v61 = v8;
    v57 = v8 + 8;
    v63 = (v21 + 8);
    v34 = MEMORY[0x277D84F90];
    v62 = v7;
    v35 = v7;
    v36 = v75;
    v60 = v11;
    v59 = v32;
    v69 = v30;
    while (1)
    {
      v37 = v73;
      v38 = v74;
      v67(v73, v68, v74);
      v39 = v72;
      sub_22F73F940();
      (*v66)(v37, v38);
      if ((*v65)(v39, 1, v20) == 1)
      {

        v50 = &qword_27DAB0920;
        v51 = &qword_22F770B20;
        v52 = v39;
        goto LABEL_14;
      }

      v40 = *v78;
      (*v78)(v80, v39, v20);
      v41 = v35;
      sub_22F73F8B0();
      if ((*v64)(v35, 1, v36) == 1)
      {
        break;
      }

      v42 = *v77;
      v43 = v79;
      (*v77)(v79, v41, v36);
      (*v58)(v11, v43, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_22F13ED68(0, v34[2] + 1, 1, v34);
      }

      v45 = v34[2];
      v44 = v34[3];
      if (v45 >= v44 >> 1)
      {
        v34 = sub_22F13ED68(v44 > 1, v45 + 1, 1, v34);
      }

      v46 = v61;
      v47 = v75;
      (*(v61 + 8))(v79, v75);
      v30 = v69;
      (*v63)(v69, v20);
      v34[2] = v45 + 1;
      v48 = v34 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45;
      v11 = v60;
      v36 = v47;
      v42(v48, v60, v47);
      v40(v30, v80, v20);
      v49 = sub_22F73F5C0();
      v35 = v62;
      if ((v49 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    (*v63)(v80, v20);

    v50 = &qword_27DAB40E0;
    v51 = &unk_22F779200;
    v52 = v35;
LABEL_14:
    sub_22F120ADC(v52, v50, v51);
    v34 = MEMORY[0x277D84F90];
    v30 = v69;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

LABEL_15:
  (*(v54 + 8))(v30, v20);
  (*(v55 + 8))(v76, v56);
  return v34;
}

uint64_t HistoricalInterval.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

unint64_t sub_22F1CB878()
{
  result = qword_27DAB2280;
  if (!qword_27DAB2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2280);
  }

  return result;
}

unint64_t sub_22F1CB8D0()
{
  result = qword_27DAB2288;
  if (!qword_27DAB2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2288);
  }

  return result;
}

uint64_t sub_22F1CB958(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs);
  v4 = RecentlyUsedSongs.songIdsRecommendedForExclusion()();
  v34 = MEMORY[0x277D84F90];
  v5 = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_25:
    v6 = sub_22F741A00();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v30 = v5;
      v31 = a1;
      v7 = 0;
      v32 = a1 & 0xFFFFFFFFFFFFFF8;
      v33 = a1 & 0xC000000000000001;
      a1 += 32;
      v8 = v4 + 56;
      while (1)
      {
        if (v33)
        {
          v5 = MEMORY[0x2319016F0](v7, v31);
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v22 = v34;
            v5 = v30;
            a1 = v31;
            goto LABEL_27;
          }
        }

        else
        {
          if (v7 >= *(v32 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v5 = *(a1 + 8 * v7);
          swift_unknownObjectRetain();
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_22;
          }
        }

        v11 = [v5 uid];
        v12 = sub_22F740E20();
        v14 = v13;

        if (*(v4 + 16) && (v15 = *(v4 + 40), sub_22F742170(), sub_22F740D60(), v16 = sub_22F7421D0(), v17 = -1 << *(v4 + 32), v18 = v16 & ~v17, ((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(v4 + 48) + 16 * v18);
            v21 = *v20 == v12 && v20[1] == v14;
            if (v21 || (sub_22F742040() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v7 == v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_4:

          sub_22F741BA0();
          v9 = *(v34 + 16);
          sub_22F741BE0();
          sub_22F741BF0();
          sub_22F741BB0();
          if (v7 == v6)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_27:

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4D90);

  v24 = sub_22F740B70();
  v25 = sub_22F7415C0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    if (v5)
    {
      v27 = sub_22F741A00();
    }

    else
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v27;

    *(v26 + 12) = 2048;
    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      v28 = sub_22F741A00();
    }

    else
    {
      v28 = *(v22 + 16);
    }

    *(v26 + 14) = v28;

    _os_log_impl(&dword_22F0FC000, v24, v25, "[Flex Filtered] Filtered %ld songs to %ld songs after excluding recently used songs", v26, 0x16u);
    MEMORY[0x2319033A0](v26, -1, -1);
  }

  else
  {
  }

  return v22;
}

void *CompletionCounter.__allocating_init(count:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = a1;
  v6[4] = v7;
  return v6;
}

void *CompletionCounter.init(count:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = a1;
  v3[4] = v5;
  return v3;
}

Swift::Void __swiftcall CompletionCounter.decrementCounter()()
{
  v1 = v0[4];

  os_unfair_lock_lock(v1 + 8);
  sub_22F1CBE1C(&v1[4], &v6);
  os_unfair_lock_unlock(v1 + 8);
  v2 = v6;

  if (v2 == 1)
  {
    v4 = v0[2];
    v5 = v0[3];
    v4(v3);
  }
}

void sub_22F1CBE1C(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*a1)
  {
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v3 = sub_22F740B90();
    __swift_project_value_buffer(v3, qword_2810B4CB0);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22F0FC000, v4, v5, "CompletionCounter has been terminated", v6, 2u);
      MEMORY[0x2319033A0](v6, -1, -1);
    }

    v7 = 0;
    goto LABEL_11;
  }

  v8 = *(a1 + 8);
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (!v9)
  {
    *(a1 + 8) = v10;
    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1;
      *a1 = 1;
    }

LABEL_11:
    *a2 = v7;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall CompletionCounter.terminate()()
{
  v1 = v0[4];

  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 16))
  {
    os_unfair_lock_unlock((v1 + 32));
  }

  else
  {
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 32));

    v3 = v0[2];
    v4 = v0[3];
    v3(v2);
  }
}

uint64_t CompletionCounter.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t CompletionCounter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CompletionCounter.CompletionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for CompletionCounter.CompletionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id FlexMusicCurationParameters.__allocating_init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, char *a8)
{
  v9 = v8;
  v18 = sub_22F7401D0();
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v9;
  v22 = objc_allocWithZone(v9);
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v23 = &v22[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v23 = a4;
  v23[1] = a5;
  v22[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v24 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *&a8[v24];
    v25 = a7;
    swift_unknownObjectRetain();
    v26 = v22;
    v27 = a3;
    v28 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v29 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v29 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v30 = objc_allocWithZone(v29);
    v25 = a7;
    v31 = v22;
    v32 = a3;
    v33 = [v30 init];
    *&v31[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v33;
    v34 = swift_unknownObjectRetain();
    v28 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v34);
    swift_unknownObjectRelease();
  }

  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v28;
  v35 = &v22[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  sub_22F7401C0();
  sub_22F7401B0();
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = sub_22F740180();
  v36 = sub_22F740170();
  (*(v39 + 8))(v21, v40);
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = v36;
  v42.receiver = v22;
  v42.super_class = v41;
  v37 = objc_msgSendSuper2(&v42, sel_init);

  return v37;
}

id FlexMusicCurationParameters.init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v11 = sub_22F1CD944(a1, a2, a3, a4, a5, a6, a7, a8);

  return v11;
}

id FlexMusicCurationParameters.__allocating_init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:genre:weightByLanguage:weightByRegion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v22 = objc_allocWithZone(v13);
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v23 = &v22[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v23 = a4;
  v23[1] = a5;
  v22[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v24 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *&a8[v24];
    v25 = a7;
    swift_unknownObjectRetain();
    v26 = v22;
    v27 = a3;
    v28 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v29 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v29 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v30 = objc_allocWithZone(v29);
    v25 = a7;
    v31 = v22;
    v32 = a3;
    v33 = [v30 init];
    *&v31[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v33;
    v34 = swift_unknownObjectRetain();
    v28 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v34);
    swift_unknownObjectRelease();
  }

  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v28;
  v35 = &v22[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v35 = a9;
  v35[1] = a10;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = a11;
  *&v22[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = a12;
  v38.receiver = v22;
  v38.super_class = v13;
  v36 = objc_msgSendSuper2(&v38, sel_init);

  return v36;
}

id FlexMusicCurationParameters.init(with:moodKeywords:recentlyUsedSongs:entityUUID:useMoodKeywords:features:musicCuratorContext:genre:weightByLanguage:weightByRegion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = sub_22F1CDBF8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);

  return v15;
}

uint64_t sub_22F1CCA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F15E910(a1, a2, a3);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v11[0] = a1;
    v11[1] = a2;
    MEMORY[0x28223BE20](v7);
    v10[2] = v11;
    v8 = sub_22F1C0E04(sub_22F15A388, v10, a4);
  }

  return v8 & 1;
}

uint64_t static FlexMusicCurator.allFlexSongs(from:)(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    v2 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_22F740B90();
    __swift_project_value_buffer(v3, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38 = v7;
      *v6 = 136315138;
      v8 = [v1 name];
      v9 = sub_22F740E20();
      v11 = v10;

      v12 = sub_22F145F20(v9, v11, &v38);

      *(v6 + 4) = v12;
      v13 = "Using a custom flex song provider: %s";
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v4, v5, v13, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2319033A0](v7, -1, -1);
      MEMORY[0x2319033A0](v6, -1, -1);
    }
  }

  else
  {
    if (sub_22F742040())
    {
      v14 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v14 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v1 = [objc_allocWithZone(v14) init];
    v15 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38 = v7;
      *v6 = 136315138;
      v17 = [v1 name];
      v18 = sub_22F740E20();
      v20 = v19;

      v21 = sub_22F145F20(v18, v20, &v38);

      *(v6 + 4) = v21;
      v13 = "Using the default flex song provider: %s";
      goto LABEL_13;
    }
  }

  v38 = 0;
  v22 = [v1 allFlexSongsAndReturnError_];
  swift_unknownObjectRelease();
  v23 = v38;
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v24 = sub_22F741180();
    v25 = v23;

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v38;
    v27 = sub_22F73F370();

    swift_willThrow();
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4D90);
    v29 = v27;
    v30 = sub_22F740B70();
    v31 = sub_22F7415E0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v27;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_22F0FC000, v30, v31, "(FlexMusicCurator) allFlexSongs failed with error: %@. Returning empty array.", v32, 0xCu);
      sub_22F120ADC(v33, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v33, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v24;
}

id FlexMusicCurator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCurator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_22F1CD128(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0938, &qword_22F770B38);
  result = sub_22F741DC0();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *(*(a1 + 56) + 8 * v13);
      v16 = *v14;
      result = v14[1];
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v16;
      v17[1] = result;
      *(v3[7] + 4 * v13) = v15;
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
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F1CD27C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0938, &qword_22F770B38);
  result = sub_22F741DC0();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      v16 = *(*(a1 + 56) + 8 * v13 + 4);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = (v3[6] + 16 * v13);
      *v17 = v15;
      v17[1] = result;
      *(v3[7] + 4 * v13) = v16;
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
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_22F1CD3D0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_22F1CE3E8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(void *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    v2 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_22F740B90();
    __swift_project_value_buffer(v3, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38[0] = v7;
      *v6 = 136315138;
      v8 = [v1 name];
      v9 = sub_22F740E20();
      v11 = v10;

      v12 = sub_22F145F20(v9, v11, v38);

      *(v6 + 4) = v12;
      v13 = "Using a custom flex song provider: %s";
LABEL_13:
      _os_log_impl(&dword_22F0FC000, v4, v5, v13, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x2319033A0](v7, -1, -1);
      MEMORY[0x2319033A0](v6, -1, -1);
    }
  }

  else
  {
    if (sub_22F742040())
    {
      v14 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v14 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v1 = [objc_allocWithZone(v14) init];
    v15 = qword_2810A9460;
    swift_unknownObjectRetain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);
    v4 = sub_22F740B70();
    v5 = sub_22F7415C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38[0] = v7;
      *v6 = 136315138;
      v17 = [v1 name];
      v18 = sub_22F740E20();
      v20 = v19;

      v21 = sub_22F145F20(v18, v20, v38);

      *(v6 + 4) = v21;
      v13 = "Using the default flex song provider: %s";
      goto LABEL_13;
    }
  }

  v38[0] = 0;
  v22 = [v1 usableFlexSongsAndReturnError_];
  swift_unknownObjectRelease();
  v23 = v38[0];
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v24 = sub_22F741180();
    v25 = v23;

    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v38[0];
    v27 = sub_22F73F370();

    swift_willThrow();
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4D90);
    v29 = v27;
    v30 = sub_22F740B70();
    v31 = sub_22F7415E0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v27;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_22F0FC000, v30, v31, "(FlexMusicCurator) usableFlexSongs failed with error: %@. Returning empty array.", v32, 0xCu);
      sub_22F120ADC(v33, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v33, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v24;
}

id sub_22F1CD944(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v18 = sub_22F7401D0();
  v38 = *(v18 - 8);
  v39 = v18;
  v19 = *(v38 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v22 = &v9[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v22 = a4;
  v22[1] = a5;
  v9[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v23 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *(a8 + v23);
    v24 = a7;
    swift_unknownObjectRetain();
    v25 = v9;
    v26 = a3;
    v27 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v28 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v28 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v29 = objc_allocWithZone(v28);
    v30 = a7;
    v31 = v9;
    v32 = a3;
    v33 = [v29 init];
    *&v31[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v33;
    v34 = swift_unknownObjectRetain();
    v27 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v34);
    swift_unknownObjectRelease();
  }

  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v27;
  v35 = &v9[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  sub_22F7401C0();
  sub_22F7401B0();
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = sub_22F740180();
  v36 = sub_22F740170();
  (*(v38 + 8))(v21, v39);
  *&v9[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = v36;
  v41.receiver = v9;
  v41.super_class = ObjectType;
  return objc_msgSendSuper2(&v41, sel_init);
}

id sub_22F1CDBF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  ObjectType = swift_getObjectType();
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_mood] = a1;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords] = a2;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs] = a3;
  v22 = &v13[OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID];
  *v22 = a4;
  v22[1] = a5;
  v13[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords] = a6;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_features] = a7;
  if (a8)
  {
    v23 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
    swift_beginAccess();
    *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = *(a8 + v23);
    v24 = a7;
    swift_unknownObjectRetain();
    v25 = v13;
    v26 = a3;
    v27 = sub_22F2A8AE4();
  }

  else
  {
    if (sub_22F742040())
    {
      v28 = type metadata accessor for MockFlexSongProvider();
    }

    else
    {
      v28 = type metadata accessor for FlexMusicKitSongProvider();
    }

    v29 = objc_allocWithZone(v28);
    v30 = a7;
    v31 = v13;
    v32 = a3;
    v33 = [v29 init];
    *&v31[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongProvider] = v33;
    v34 = swift_unknownObjectRetain();
    v27 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0(v34);
    swift_unknownObjectRelease();
  }

  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs] = v27;
  v35 = &v13[OBJC_IVAR___PGFlexMusicCurationParameters_genre];
  *v35 = a9;
  v35[1] = a10;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage] = a11;
  *&v13[OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion] = a12;
  v38.receiver = v13;
  v38.super_class = ObjectType;
  return objc_msgSendSuper2(&v38, sel_init);
}

unint64_t sub_22F1CDE24(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v40 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v10 = a1 + 32;

    v31 = a5;

    v30 = a3;

    swift_beginAccess();
    v29 = a4;
    do
    {
      sub_22F15C30C(v10, &v37);
      if (v5 >> 62)
      {
        v32 = sub_22F741A00();
      }

      else
      {
        v32 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v38;
      v12 = v39;
      __swift_project_boxed_opaque_existential_1(&v37, v38);
      v13 = *(v12 + 8);

      v15 = v13(v14, v30, a4, v31, v11, v12);

      v40 = v15;

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v16 = sub_22F740B90();
      __swift_project_value_buffer(v16, qword_2810B4D90);
      sub_22F100260(&v37, v34);
      v17 = sub_22F740B70();
      v18 = sub_22F7415C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = v20;
        *v19 = 136315650;
        v21 = v35;
        v22 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v23 = (*(v22 + 16))(v21, v22);
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(v34);
        v26 = sub_22F145F20(v23, v25, &v33);

        *(v19 + 4) = v26;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v32;
        *(v19 + 22) = 2048;
        if (v15 >> 62)
        {
          v27 = sub_22F741A00();
        }

        else
        {
          v27 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v19 + 24) = v27;
        _os_log_impl(&dword_22F0FC000, v17, v18, "[Flex Filters] Applied %s: %ld -> %ld songs", v19, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x2319033A0](v20, -1, -1);
        MEMORY[0x2319033A0](v19, -1, -1);

        a4 = v29;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      v10 += 40;
      v5 = v15;
      --v6;
    }

    while (v6);

    return v15;
  }

  else
  {
  }

  return v5;
}

unint64_t sub_22F1CE148(uint64_t a1, unint64_t a2, unint64_t a3, int64_t a4, uint64_t a5)
{
  v5 = a2;
  v32 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v10 = a1 + 32;

    swift_beginAccess();
    v11 = &unk_2810A9000;
    v27 = a4;
    v28 = a5;
    v26 = a3;
    do
    {
      sub_22F15C30C(v10, v31);
      if (v5 >> 62)
      {
        v12 = sub_22F741A00();
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = sub_22F2D7594(v13, a3, a4, a5);

      v32 = v14;

      if (v11[140] != -1)
      {
        swift_once();
      }

      v15 = sub_22F740B90();
      __swift_project_value_buffer(v15, qword_2810B4D90);
      sub_22F100260(v31, v30);
      v16 = sub_22F740B70();
      v17 = sub_22F7415C0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315650;
        v20 = __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        v21 = *v20;
        v22 = v20[1];

        __swift_destroy_boxed_opaque_existential_0(v30);
        v23 = sub_22F145F20(v21, v22, &v29);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v12;
        *(v18 + 22) = 2048;
        if (v14 >> 62)
        {
          v24 = sub_22F741A00();
        }

        else
        {
          v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v18 + 24) = v24;
        _os_log_impl(&dword_22F0FC000, v16, v17, "[Flex Padder] Applied %s: %ld -> %ld songs", v18, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x2319033A0](v19, -1, -1);
        MEMORY[0x2319033A0](v18, -1, -1);

        a4 = v27;
        a5 = v28;
        a3 = v26;
        v11 = &unk_2810A9000;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      v10 += 40;
      v5 = v14;
      --v6;
    }

    while (v6);
  }

  else
  {

    return v5;
  }

  return v14;
}

unint64_t *sub_22F1CE3E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    MEMORY[0x28223BE20](result);
    v18[2] = v23;

    v16 = sub_22F1C0E04(sub_22F1D0468, v18, v22);

    if (v16)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_22F1B153C(v20, v19, v21, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22F1B153C(v20, v19, v21, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22F1CE58C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_22F1CD3D0(v13, v7, a1, a2);
      MEMORY[0x2319033A0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_22F1CE3E8((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22F1CE74C(uint64_t isUniquelyReferenced_nonNull_native, unint64_t a2)
{
  v4 = sub_22F73F690();
  v219 = *(v4 - 8);
  v220 = v4;
  v5 = *(v219 + 64);
  MEMORY[0x28223BE20](v4);
  v237 = v216 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_22F740920();
  v241 = *(v243 - 8);
  v7 = *(v241 + 8);
  MEMORY[0x28223BE20](v243);
  v9 = v216 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73F7C0();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v216 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9BD0 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v15 = qword_2810B4E90;
    *&v16 = CACurrentMediaTime();
    v230 = v15;
    sub_22F1B560C("FlexMusicCurator - curateFlexMusicWithCurationParameters", 56, 2u, v16, 0, v15, v255);
    v240 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_mood);
    v17 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_moodKeywords);
    v232 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_recentlyUsedSongs);
    v18 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID + 8);
    v244 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_entityUUID);
    v218 = v18;
    v228 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_features);
    v19 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_genre);
    v238 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_genre + 8);
    v235 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_weightByLanguage);
    v236 = v19;
    v234 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_weightByRegion);
    v245 = v17;

    v20 = sub_22F7416E0();
    v224 = v21;
    v225 = v20;
    v239 = v22;
    v24 = v23;
    v222 = isUniquelyReferenced_nonNull_native;
    v25 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGFlexMusicCurationParameters_flexMusicSongs);
    if (v25 >> 62)
    {
      v26 = sub_22F741A00();
      if (v26 < 1)
      {
LABEL_72:

        sub_22F1D033C();
        swift_allocError();
        *v130 = 0;
        swift_willThrow();

LABEL_73:

        return v10;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26 < 1)
      {
        goto LABEL_72;
      }
    }

    v229 = v26;
    v216[2] = a2;
    v221 = v24;
    sub_22F73F780();
    v27 = sub_22F73F730();
    (*(v11 + 8))(v14, v10);
    v28 = [v27 objectForKey_];

    if (v28)
    {
      sub_22F741920();
      swift_unknownObjectRelease();
    }

    else
    {
      v249 = 0u;
      v250 = 0u;
    }

    v29 = v243;
    v252 = v249;
    v253 = v250;
    v30 = &unk_2810A9000;
    if (!*(&v250 + 1))
    {
      sub_22F120ADC(&v252, &qword_27DAB0C28, &qword_22F778980);
LABEL_17:
      v223 = MEMORY[0x277D84F90];
      goto LABEL_18;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v31 = v246;
    v32 = v247;
    v33 = *MEMORY[0x277D0A980];
    *&v252 = sub_22F740E20();
    *(&v252 + 1) = v34;
    MEMORY[0x231900B10](v31, v32);

    v35 = *(&v252 + 1);
    v233 = v252;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D90);

    v37 = sub_22F740B70();
    v38 = sub_22F7415C0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v252 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_22F145F20(v233, v35, &v252);
      _os_log_impl(&dword_22F0FC000, v37, v38, "placeholderRegion = %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v41 = v40;
      v30 = &unk_2810A9000;
      v29 = v243;
      MEMORY[0x2319033A0](v41, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    v42 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    v223 = v42;
    if (v44 >= v43 >> 1)
    {
      v223 = sub_22F13E1A8((v43 > 1), v44 + 1, 1, v223);
    }

    v45 = v223;
    *(v223 + 2) = v44 + 1;
    v46 = &v45[16 * v44];
    *(v46 + 4) = v233;
    *(v46 + 5) = v35;
LABEL_18:
    sub_22F7408D0();
    v47 = sub_22F7408B0();
    v10 = v48;
    v49 = *(v241 + 1);
    v49(v9, v29);
    v50 = v245[2];
    v243 = v47;
    if (v50)
    {
      v51 = v29;
      v53 = v245[4];
      v52 = v245[5];

      sub_22F7408F0();

      v231 = sub_22F7408B0();
      v55 = v54;
      v49(v9, v51);
      v30 = &unk_2810A9000;
    }

    else
    {

      v55 = v10;
      v231 = v47;
    }

    v56 = v238;

    if (v30[140] != -1)
    {
      swift_once();
    }

    v217 = v25;
    v57 = sub_22F740B90();
    __swift_project_value_buffer(v57, qword_2810B4D90);

    v58 = sub_22F740B70();
    v59 = sub_22F7415C0();

    v60 = os_log_type_enabled(v58, v59);
    v61 = v243;
    v233 = v55;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *&v252 = v241;
      *v62 = 136315906;
      v63 = sub_22F145F20(v231, v55, &v252);

      *(v62 + 4) = v63;
      *(v62 + 12) = 2080;
      v64 = sub_22F145F20(v61, v10, &v252);

      *(v62 + 14) = v64;
      *(v62 + 22) = 2080;
      *(v62 + 24) = sub_22F145F20(v236, v56, &v252);
      *(v62 + 32) = 2080;

      v66 = MEMORY[0x231900D40](v65, MEMORY[0x277D837D0]);
      v68 = v67;

      v10 = sub_22F145F20(v66, v68, &v252);

      *(v62 + 34) = v10;
      _os_log_impl(&dword_22F0FC000, v58, v59, "(FlexMusicCurator) Curating flex music for: mood, %s, moodNameFromPHMemory, %s, genre, %s, regionTagID, %s", v62, 0x2Au);
      v69 = v241;
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v69, -1, -1);
      MEMORY[0x2319033A0](v62, -1, -1);
    }

    else
    {
    }

    v14 = v239;
    v70 = v225;
    isUniquelyReferenced_nonNull_native = v244;
    v71 = v242;
    sub_22F7416A0();
    v9 = v71;
    if (v71)
    {

      goto LABEL_73;
    }

    sub_22F1B560C("FlexMusicCurator - curateFlexMusicWithCurationParameters - scoreSongs", 69, 2u, 0, 1, v230, v256);
    sub_22F73F680();
    if (v222[OBJC_IVAR___PGFlexMusicCurationParameters_useMoodKeywords])
    {
      v72 = &off_2843EA1B8;
      v73 = &type metadata for RandomizedScoreRanker;
      v74 = &off_2843DF8B8;
      v75 = &type metadata for MoodKeywordScoreComputer;
    }

    else
    {

      v75 = type metadata accessor for MaestroKeywordScoreComputer();
      v76 = swift_allocObject();
      v77 = v228;
      v78 = v228;
      v10 = MEMORY[0x277D84F90];
      *(v76 + 24) = sub_22F14EE58(MEMORY[0x277D84F90]);

      v79 = sub_22F14EE58(v10);
      *(v76 + 16) = v77;
      *(v76 + 24) = v79;
      v245 = v76;
      v72 = &off_2843EA0F0;
      v73 = &type metadata for OrderedScoreRanker;
      v74 = &off_2843E9EA0;
    }

    v254 = v74;
    *(&v253 + 1) = v75;
    *&v252 = v245;
    *(&v250 + 1) = v73;
    v251 = v72;
    v216[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB22F8, &qword_22F779480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F770DF0;
    *(inited + 56) = &type metadata for FlexMusicRecentlyUsedFilter;
    *(inited + 64) = &off_2843E3E20;
    strcpy((inited + 32), "RegionalFilter");
    *(inited + 47) = -18;
    *(inited + 96) = &type metadata for FlexMusicRegionalFilter;
    *(inited + 104) = &off_2843E47B0;
    strcpy((inited + 72), "RegionalFilter");
    *(inited + 87) = -18;
    a2 = sub_22F1CDE24(inited, v217, v222, v235, v234);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2300, &qword_22F779488);
    swift_arrayDestroy();
    v216[0] = a2 >> 62;
    if (!(a2 >> 62))
    {
      v81 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v81)
      {
        break;
      }

      goto LABEL_33;
    }

    v81 = sub_22F741A00();
    if (!v81)
    {
      break;
    }

LABEL_33:
    v11 = 0;
    v227 = a2 & 0xFFFFFFFFFFFFFF8;
    v228 = (a2 & 0xC000000000000001);
    v82 = MEMORY[0x277D84F98];
    v245 = MEMORY[0x277D84F98];
    v230 = a2;
    v226 = v81;
    while (1)
    {
      v243 = v82;
      if (!v228)
      {
        break;
      }

      v10 = MEMORY[0x2319016F0](v11, a2);
      v83 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_66;
      }

LABEL_37:
      v240 = v83;
      *&v242 = 0;
      v84 = [v10 uid];
      v241 = sub_22F740E20();
      a2 = v85;

      v86 = *(&v253 + 1);
      v87 = v254;
      __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v88 = (v87[1])(v10, v86, v87);
      v89 = *(&v253 + 1);
      v90 = v254;
      __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v91 = (v90[2])(v10, v89, v90);
      v92 = *(&v253 + 1);
      v93 = v254;
      __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v94 = (v93[3])(v10, v235, v234, v92, v93);
      v96 = v95;
      v97 = *(&v253 + 1);
      v98 = v254;
      __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v99 = (v98[5])(v10, v232, v237, v97, v98);
      v100 = *(&v253 + 1);
      v101 = v254;
      __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
      v102 = (v101[4])(v10, v231, v233, v100, v101);
      v103 = v236;
      v104 = v238;
      if (sub_22F740F10() < 1)
      {
        v107 = 0.0;
      }

      else
      {
        v105 = *(&v253 + 1);
        v106 = v254;
        __swift_project_boxed_opaque_existential_1(&v252, *(&v253 + 1));
        (v106[6])(v10, v103, v104, v105, v106);
        v108 = 0.1;
        if (v102 >= 0.1)
        {
          v108 = v102;
        }

        if (v107 == 1.0)
        {
          v107 = 1.0;
          v102 = v108;
        }
      }

      v109 = (v94 * v96) * ((v99 * ((((v88 * 40.0) + 1.0) * v91) * v99)) * ((v107 * 50.0) + 1.0));
      if ((v102 * v109) > 1.0e-16)
      {
        v110 = v102 * v109;
      }

      else
      {
        v110 = 1.0e-16;
      }

      if (v109 > 1.0e-16)
      {
        v111 = v109;
      }

      else
      {
        v111 = 1.0e-16;
      }

      v112 = v243;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v246 = v112;
      v14 = v241;
      v9 = sub_22F1229E8(v241, a2);
      v114 = *(v112 + 16);
      v115 = (v113 & 1) == 0;
      v116 = v114 + v115;
      if (__OFADD__(v114, v115))
      {
        goto LABEL_68;
      }

      v117 = v113;
      if (*(v112 + 24) >= v116)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F135238();
        }
      }

      else
      {
        sub_22F12730C(v116, isUniquelyReferenced_nonNull_native);
        v118 = sub_22F1229E8(v14, a2);
        if ((v117 & 1) != (v119 & 1))
        {
          goto LABEL_144;
        }

        v9 = v118;
      }

      isUniquelyReferenced_nonNull_native = v244;
      v120 = v246;
      if (v117)
      {
        v82 = v246;
        v121 = (*(v246 + 56) + 8 * v9);
        *v121 = v110;
        v121[1] = v111;
      }

      else
      {
        *(v246 + 8 * (v9 >> 6) + 64) |= 1 << v9;
        v122 = (v120[6] + 16 * v9);
        *v122 = v14;
        v122[1] = a2;
        v123 = (v120[7] + 8 * v9);
        *v123 = v110;
        v123[1] = v111;
        v124 = v120[2];
        v125 = __OFADD__(v124, 1);
        v126 = v124 + 1;
        if (v125)
        {
          goto LABEL_69;
        }

        v82 = v120;
        v120[2] = v126;
      }

      swift_unknownObjectRetain();
      v127 = v245;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v246 = v127;
      sub_22F130EBC(v10, v14, a2, v128);

      v245 = v246;
      v14 = v239;
      v129 = v242;
      sub_22F741680();
      v9 = v129;
      if (v129)
      {

        swift_unknownObjectRelease();

        (*(v219 + 8))(v237, v220);
        __swift_destroy_boxed_opaque_existential_0(&v249);
        __swift_destroy_boxed_opaque_existential_0(&v252);

        goto LABEL_73;
      }

      swift_unknownObjectRelease();
      ++v11;
      a2 = v230;
      if (v240 == v226)
      {
        goto LABEL_77;
      }
    }

    if (v11 >= *(v227 + 16))
    {
      goto LABEL_67;
    }

    v10 = *(a2 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v83 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_37;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v82 = MEMORY[0x277D84F98];
  v245 = MEMORY[0x277D84F98];
LABEL_77:
  v243 = v82;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  v132 = v243;
  v240 = sub_22F1CD128(v243);
  v133 = sub_22F1CD27C(v132);
  v238 = 0;
  v134 = swift_initStackObject();
  v242 = xmmword_22F771340;
  *(v134 + 16) = xmmword_22F771340;
  *(v134 + 56) = &type metadata for FlexMusicCelebrationEventsFilter;
  *(v134 + 64) = &off_2843DFF88;
  *(v134 + 32) = 0xD000000000000017;
  v135 = (v134 + 32);
  *(v134 + 40) = 0x800000022F7911D0;
  v230 = a2;
  v136 = sub_22F1CDE24(v134, a2, v222, v235, v234);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2308, &unk_22F779490);
  v137 = swift_initStackObject();
  *(v137 + 16) = v242;
  *(v137 + 56) = &type metadata for FlexMusicKeywordSongPadder;
  *(v137 + 64) = &off_2843EA898;
  *(v137 + 32) = 0x5064726F7779654BLL;
  v138 = (v137 + 32);
  *(v137 + 40) = 0xED00007265646461;
  v139 = sub_22F1CE148(v137, v136, v217, &unk_2843D97D8, 3);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v138);
  v140 = v139;
  if (v139 >> 62)
  {
    v156 = v139;
    v141 = sub_22F741A00();
    v140 = v156;
    v241 = v133;
    if (!v141)
    {
      goto LABEL_89;
    }

LABEL_79:
    v142 = v140;
    v246 = MEMORY[0x277D84F90];
    sub_22F146454(0, v141 & ~(v141 >> 63), 0);
    if (v141 < 0)
    {
      goto LABEL_142;
    }

    v143 = 0;
    v144 = v246;
    v145 = v142;
    *&v242 = v142 & 0xC000000000000001;
    v146 = v142;
    v147 = v141;
    do
    {
      if (v242)
      {
        v148 = MEMORY[0x2319016F0](v143, v145);
      }

      else
      {
        v148 = *(v145 + 8 * v143 + 32);
        swift_unknownObjectRetain();
      }

      v149 = [v148 uid];
      v150 = sub_22F740E20();
      v152 = v151;
      swift_unknownObjectRelease();

      v246 = v144;
      v154 = *(v144 + 16);
      v153 = *(v144 + 24);
      if (v154 >= v153 >> 1)
      {
        sub_22F146454((v153 > 1), v154 + 1, 1);
        v144 = v246;
      }

      ++v143;
      *(v144 + 16) = v154 + 1;
      v155 = v144 + 16 * v154;
      *(v155 + 32) = v150;
      *(v155 + 40) = v152;
      isUniquelyReferenced_nonNull_native = v244;
      v145 = v146;
    }

    while (v147 != v143);

    v14 = v239;
  }

  else
  {
    v141 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v241 = v133;
    if (v141)
    {
      goto LABEL_79;
    }

LABEL_89:

    v144 = MEMORY[0x277D84F90];
  }

  v157 = v238;
  v10 = sub_22F1CE58C(v240, v144);

  swift_bridgeObjectRelease_n();
  v158 = *(&v250 + 1);
  v159 = v251;
  __swift_project_boxed_opaque_existential_1(&v249, *(&v250 + 1));
  v160 = isUniquelyReferenced_nonNull_native;
  v161 = v224;
  v162 = (v159[1])(v10, v241, 12, v160, v218, v224, v158, v159);
  if (v157)
  {

    (*(v219 + 8))(v237, v220);
    __swift_destroy_boxed_opaque_existential_0(&v249);
    __swift_destroy_boxed_opaque_existential_0(&v252);

    goto LABEL_92;
  }

  v240 = v162;
  *&v242 = 0;

  if (v216[0])
  {
    v163 = sub_22F741A00();
  }

  else
  {
    v163 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v164 = v244;
  if (v163)
  {
    v246 = MEMORY[0x277D84F90];
    sub_22F146454(0, v163 & ~(v163 >> 63), 0);
    if (v163 < 0)
    {
      goto LABEL_143;
    }

    v165 = 0;
    v166 = v246;
    v167 = v230 & 0xC000000000000001;
    do
    {
      if (v167)
      {
        v168 = MEMORY[0x2319016F0](v165, v230);
      }

      else
      {
        v168 = *(v230 + 8 * v165 + 32);
        swift_unknownObjectRetain();
      }

      v169 = [v168 uid];
      v170 = sub_22F740E20();
      v172 = v171;
      swift_unknownObjectRelease();

      v246 = v166;
      v174 = *(v166 + 16);
      v173 = *(v166 + 24);
      if (v174 >= v173 >> 1)
      {
        sub_22F146454((v173 > 1), v174 + 1, 1);
        v166 = v246;
      }

      ++v165;
      *(v166 + 16) = v174 + 1;
      v175 = v166 + 16 * v174;
      *(v175 + 32) = v170;
      *(v175 + 40) = v172;
      v164 = v244;
    }

    while (v163 != v165);

    v14 = v239;
  }

  else
  {

    v166 = MEMORY[0x277D84F90];
  }

  v176 = v240;

  v178 = sub_22F1515F8(v177);

  MEMORY[0x28223BE20](v179);
  v216[-2] = v178;
  v216[-1] = v166;
  v10 = v242;
  v180 = sub_22F3ED474(v241, sub_22F1D0390);

  v181 = *(&v250 + 1);
  v182 = v251;
  __swift_project_boxed_opaque_existential_1(&v249, *(&v250 + 1));
  v183 = v164;
  v184 = v221;
  v185 = (v182[2])(v180, 12, v183, v218, v221, v181, v182);
  *&v242 = v10;
  if (v10)
  {

    (*(v219 + 8))(v237, v220);
    __swift_destroy_boxed_opaque_existential_0(&v249);
    __swift_destroy_boxed_opaque_existential_0(&v252);

    return v10;
  }

  v186 = v185;

  v187 = MEMORY[0x277D84F90];
  v246 = MEMORY[0x277D84F90];
  v188 = *(v176 + 16);
  if (!v188)
  {
    v244 = MEMORY[0x277D84F90];
    v191 = v186;
    goto LABEL_123;
  }

  v189 = 0;
  v190 = v176 + 40;
  v244 = MEMORY[0x277D84F90];
  v191 = v186;
  v241 = v190;
  while (2)
  {
    v192 = (v190 + 16 * v189);
    v193 = v189;
    while (2)
    {
      if (v193 >= v188)
      {
        __break(1u);
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v189 = v193 + 1;
      if (__OFADD__(v193, 1))
      {
        goto LABEL_139;
      }

      if (!v245[2])
      {
LABEL_113:
        ++v193;
        v192 += 2;
        if (v189 == v188)
        {
          goto LABEL_123;
        }

        continue;
      }

      break;
    }

    v194 = *(v192 - 1);
    v195 = *v192;

    v196 = sub_22F1229E8(v194, v195);
    if ((v197 & 1) == 0)
    {

      goto LABEL_113;
    }

    v198 = *(v245[7] + 8 * v196);
    swift_unknownObjectRetain();

    MEMORY[0x231900D00](v199);
    if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v200 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
    v244 = v246;
    v190 = v241;
    if (v189 != v188)
    {
      continue;
    }

    break;
  }

LABEL_123:

  v246 = v187;
  v201 = *(v191 + 16);
  if (!v201)
  {
LABEL_135:

    v213 = type metadata accessor for FlexMusicCuration();
    v214 = objc_allocWithZone(v213);
    *&v214[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = 14;
    *&v214[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = v244;
    *&v214[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = v187;
    v248.receiver = v214;
    v248.super_class = v213;
    v10 = objc_msgSendSuper2(&v248, sel_init);
    v215 = v242;
    sub_22F7416A0();
    if (v215)
    {

      (*(v219 + 8))(v237, v220);
      __swift_destroy_boxed_opaque_existential_0(&v249);
      __swift_destroy_boxed_opaque_existential_0(&v252);

LABEL_92:
    }

    else
    {
      sub_22F1B2BBC(0);

      (*(v219 + 8))(v237, v220);
      __swift_destroy_boxed_opaque_existential_0(&v249);
      __swift_destroy_boxed_opaque_existential_0(&v252);
    }

    return v10;
  }

  v202 = 0;
  v203 = v191 + 40;
  v187 = MEMORY[0x277D84F90];
  v241 = (v191 + 40);
LABEL_125:
  v204 = (v203 + 16 * v202);
  v205 = v202;
  while (v205 < v201)
  {
    v202 = v205 + 1;
    if (__OFADD__(v205, 1))
    {
      goto LABEL_141;
    }

    if (v245[2])
    {
      v206 = *(v204 - 1);
      v207 = *v204;

      v208 = sub_22F1229E8(v206, v207);
      if (v209)
      {
        v210 = *(v245[7] + 8 * v208);
        swift_unknownObjectRetain();

        MEMORY[0x231900D00](v211);
        if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v212 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        sub_22F741220();
        v187 = v246;
        v203 = v241;
        if (v202 != v201)
        {
          goto LABEL_125;
        }

        goto LABEL_135;
      }
    }

    ++v205;
    v204 += 2;
    if (v202 == v201)
    {
      goto LABEL_135;
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}