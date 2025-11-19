char *sub_22F192688(char *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22F73F470();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v27 = a1;
  sub_22F73F410();
  sub_22F73F420();
  v16 = *(v6 + 8);
  v16(v13, v5);
  v17 = OBJC_IVAR___PGMusicCache_cacheURL;
  (*(v6 + 32))(&v3[OBJC_IVAR___PGMusicCache_cacheURL], v15, v5);
  (*(v6 + 16))(v10, &v3[v17], v5);
  v18 = sub_22F1A1BBC(v10);
  if (v2)
  {
    v16(v27, v5);
    v16(v10, v5);
    v16(&v3[v17], v5);
    v19 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v20 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v18;
    v16(v10, v5);
    *&v3[OBJC_IVAR___PGMusicCache_persistentStoreCoordinator] = v21;
    v22 = objc_allocWithZone(MEMORY[0x277CBE440]);
    v23 = v21;
    v24 = [v22 initWithConcurrencyType_];
    [v24 setPersistentStoreCoordinator_];

    *&v3[OBJC_IVAR___PGMusicCache_managedObjectContext] = v24;
    v28.receiver = v3;
    v28.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v28, sel_init);
    v16(v27, v5);
  }

  return v3;
}

void sub_22F192984(uint64_t a1)
{
  v63[3] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v4 = sub_22F740DF0();

  v5 = [v3 initWithEntityName_];

  v6 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v6 setResultType_];
  v7 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v63[0] = 0;
  v8 = [v7 executeRequest:v6 error:v63];
  if (v8)
  {
    v9 = v8;
    v10 = v63[0];

    sub_22F7416A0();
    if (!v1)
    {
      v11 = objc_allocWithZone(MEMORY[0x277CBE428]);

      v12 = sub_22F740DF0();

      v13 = [v11 initWithEntityName_];

      v14 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
      [v14 setResultType_];
      v63[0] = 0;
      v15 = [v7 executeRequest:v14 error:v63];
      if (v15)
      {
        v16 = v15;
        v17 = v63[0];

        sub_22F7416A0();
        v18 = objc_allocWithZone(MEMORY[0x277CBE428]);

        v19 = sub_22F740DF0();

        v20 = [v18 initWithEntityName_];

        v21 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
        [v21 setResultType_];
        v63[0] = 0;
        v22 = [v7 executeRequest:v21 error:v63];
        if (v22)
        {
          v23 = v22;
          v24 = v63[0];

          sub_22F7416A0();
          swift_beginAccess();
          v25 = objc_allocWithZone(MEMORY[0x277CBE428]);

          v26 = sub_22F740DF0();

          v27 = [v25 initWithEntityName_];

          v28 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
          [v28 setResultType_];
          v62 = 0;
          v29 = [v7 executeRequest:v28 error:&v62];
          if (v29)
          {
            v30 = v29;
            v31 = v62;

            sub_22F7416A0();
            v60 = v28;
            v32 = objc_allocWithZone(MEMORY[0x277CBE428]);

            v33 = sub_22F740DF0();

            v34 = [v32 initWithEntityName_];

            v35 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
            [v35 setResultType_];
            v62 = 0;
            v36 = [v7 executeRequest:v35 error:&v62];
            if (v36)
            {
              v37 = v36;
              v38 = v62;

              sub_22F7416A0();
              v45 = objc_allocWithZone(MEMORY[0x277CBE428]);

              v46 = sub_22F740DF0();

              v47 = [v45 initWithEntityName_];

              v48 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
              [v48 setResultType_];
              v62 = 0;
              v49 = [v7 executeRequest:v48 error:&v62];
              if (v49)
              {
                v50 = v49;
                v51 = v62;

                sub_22F7416A0();
                v61 = v21;
                [v7 reset];
                v62 = 0;
                if ([v7 save_])
                {
                  v52 = v62;
                  sub_22F7416A0();

                  goto LABEL_11;
                }

                v54 = v62;
                v55 = sub_22F73F370();

                swift_willThrow();
                swift_getErrorValue();
                v56 = sub_22F7420F0();
                v58 = v57;
                sub_22F1A297C();
                swift_allocError();
                *v59 = v56;
                *(v59 + 8) = v58;
                *(v59 + 16) = 0;
                swift_willThrow();
              }

              else
              {
                v53 = v62;
                sub_22F73F370();

                swift_willThrow();
              }

              v6 = v48;
            }

            else
            {
              v44 = v62;
              sub_22F73F370();

              swift_willThrow();
              v6 = v35;
            }
          }

          else
          {
            v43 = v62;
            sub_22F73F370();

            swift_willThrow();
            v6 = v28;
          }
        }

        else
        {
          v42 = v63[0];
          sub_22F73F370();

          swift_willThrow();
          v6 = v21;
        }
      }

      else
      {
        v40 = v63[0];
        sub_22F73F370();

        swift_willThrow();
        v6 = v14;
      }
    }
  }

  else
  {
    v39 = v63[0];
    sub_22F73F370();

    swift_willThrow();
  }

LABEL_11:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_22F193238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v10 = sub_22F740DF0();

  v11 = [v9 initWithEntityName_];

  [v11 setPredicate_];
  v12 = *(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongSourceEntry();
  v13 = sub_22F7417B0();
  if (v6)
  {
  }

  else
  {
    v14 = v13;
    sub_22F7416A0();
    v28 = v11;
    if (v14 >> 62)
    {
      goto LABEL_22;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v16 = a6;
    if (v15)
    {
      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2319016F0](v17, v14);
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            sub_22F741A00();
            v15 = sub_22F741A00();
            goto LABEL_5;
          }

          v18 = *(v14 + 8 * v17 + 32);
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_15;
          }
        }

        [v12 deleteObject_];
        sub_22F741680();

        ++v17;
        v19 = v16 == v15;
        v16 = a6;
      }

      while (!v19);
    }

    sub_22F1A3370(v16, v12);
    sub_22F1A35D0();
    v30[0] = 0;
    if ([v12 save_])
    {
      v20 = v30[0];
      sub_22F7416A0();
    }

    else
    {
      v21 = v30[0];
      v22 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v23 = sub_22F7420F0();
      v25 = v24;
      sub_22F1A297C();
      swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v25;
      *(v26 + 16) = 0;
      swift_willThrow();
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22F1935BC()
{
  result = sub_22F741690();
  if (!v1)
  {
    v9 = MEMORY[0x277D84F90];
    v3 = sub_22F7416D0();
    v5 = v4;
    v7 = v6;
    v8 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v3);
    sub_22F7417A0();

    return v9;
  }

  return result;
}

void sub_22F1936EC(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v45 = a4;
  v46 = a5;
  v43 = a3;
  v9 = type metadata accessor for SongSource();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v38 - v14);
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v17 = sub_22F740DF0();

  v18 = [v16 initWithEntityName_];

  [v18 setPredicate_];
  v19 = *(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongSourceEntry();
  v20 = sub_22F7417B0();
  if (v6)
  {
  }

  else
  {
    v21 = v20;
    v42 = v13;
    sub_22F7416A0();
    v41 = v21 >> 62;
    if (v21 >> 62)
    {
      goto LABEL_27;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v38[0] = v18;
    if (v22)
    {
      v23 = 0;
      v39 = v22;
      v40 = v21 & 0xC000000000000001;
      v24 = (v21 & 0xFFFFFFFFFFFFFF8);
      v43 = v21 & 0xFFFFFFFFFFFFFF8;
      if (v21 < 0)
      {
        v24 = v21;
      }

      v38[1] = v24;
      v18 = v42;
      do
      {
        if (v40)
        {
          v26 = MEMORY[0x2319016F0](v23, v21);
          v25 = v45;
          v27 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v25 = v45;
          if (v23 >= *(v43 + 16))
          {
            goto LABEL_26;
          }

          v26 = *(v21 + 8 * v23 + 32);
          v27 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v22 = sub_22F741A00();
            goto LABEL_5;
          }
        }

        v28 = v21;
        v29 = v26;
        sub_22F193B18(v29, v15);
        sub_22F1A39E0(v15, v18, type metadata accessor for SongSource);
        v30 = *v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v25 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_22F13E508(0, v30[2] + 1, 1, v30);
          *v25 = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        v34 = v44;
        if (v33 >= v32 >> 1)
        {
          v37 = sub_22F13E508(v32 > 1, v33 + 1, 1, v30);
          v34 = v44;
          v30 = v37;
          *v45 = v37;
        }

        v30[2] = v33 + 1;
        v35 = v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33;
        v18 = v42;
        sub_22F1A3A48(v42, v35, type metadata accessor for SongSource);
        if (v41)
        {
          sub_22F741A00();
        }

        else
        {
          v36 = *(v43 + 16);
        }

        sub_22F741680();
        sub_22F1A3AB0(v15, type metadata accessor for SongSource);

        ++v23;
        v21 = v28;
      }

      while (v27 != v39);
    }

    sub_22F7416A0();
    sub_22F7416A0();
  }
}

void sub_22F193B18(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v69 - v10;
  v12 = [a1 identifier];
  if (!v12)
  {
    sub_22F1A297C();
    swift_allocError();
    *v22 = xmmword_22F777150;
    *(v22 + 16) = 2;
    swift_willThrow();

    return;
  }

  v13 = v12;
  v14 = sub_22F740E20();
  v16 = v15;

  *a2 = v14;
  a2[1] = v16;
  v69[3] = v16;
  v17 = [a1 version];
  v70 = v2;
  if (v17)
  {
    v18 = v17;
    v19 = sub_22F740E20();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v23 = type metadata accessor for SongSource();
  v24 = (a2 + v23[11]);
  *v24 = v19;
  v24[1] = v21;
  v25 = [a1 category];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22F740E20();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = (a2 + v23[12]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [a1 dateLastUpdated];
  if (v31)
  {
    v32 = v31;
    sub_22F73F640();

    v33 = sub_22F73F690();
    (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
  }

  else
  {
    v34 = sub_22F73F690();
    (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  }

  v69[0] = v23[5];
  sub_22F1207AC(v11, a2 + v69[0], &qword_27DAB0920, &qword_22F770B20);
  v35 = [a1 songs];
  if (v35)
  {
    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
    v36 = sub_22F741420();

    if ((v36 & 0xC000000000000001) != 0)
    {
      v35 = sub_22F741A00();
    }

    else
    {
      v35 = *(v36 + 16);
    }
  }

  *(a2 + v23[6]) = v35;
  v37 = [a1 date];
  v69[1] = v29;
  v69[2] = v21;
  if (v37)
  {
    v38 = v37;
    sub_22F73F640();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = sub_22F73F690();
  (*(*(v40 - 8) + 56))(v9, v39, 1, v40);
  v41 = v23[7];
  sub_22F1207AC(v9, a2 + v41, &qword_27DAB0920, &qword_22F770B20);
  v42 = [a1 geohash];
  if (v42)
  {
    v43 = sub_22F740E20();
    v45 = v44;

    v46 = (a2 + v23[8]);
    *v46 = v43;
    v46[1] = v45;
    *(a2 + v23[13]) = 1;
    type metadata accessor for Geohash();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;

    v48 = v70;
    sub_22F34B9D8(v43, v45);
    if (v48)
    {

      swift_setDeallocating();
      v53 = *(inited + 16);

      v54 = *(inited + 24);

      sub_22F120ADC(a2 + v69[0], &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(a2 + v41, &qword_27DAB0920, &qword_22F770B20);

      return;
    }

    v58 = v49;
    v59 = v50;
    v60 = v51;
    v61 = v52;

    v62 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:(v58 + v59) * 0.5 longitude:(v60 + v61) * 0.5];
    swift_setDeallocating();
    v63 = *(inited + 16);

    v64 = *(inited + 24);

    [v62 coordinate];
    v65 = a2 + v23[9];
    *v65 = v66;
    v65[8] = 0;
    [v62 coordinate];
    v68 = v67;

    v57 = v23[10];
    *(a2 + v57) = v68;
  }

  else
  {

    v55 = (a2 + v23[8]);
    *v55 = 0;
    v55[1] = 0;
    *(a2 + v23[13]) = 1;
    v56 = a2 + v23[9];
    *v56 = 0;
    v56[8] = 1;
    v57 = v23[10];
    *(a2 + v57) = 0;
  }

  *(a2 + v57 + 8) = v42 == 0;
}

uint64_t static MusicCache.temporaryCacheDirectoryURL()@<X0>(uint64_t a1@<X8>)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22F73F6D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22F73F470();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = NSTemporaryDirectory();
  sub_22F740E20();

  sub_22F73F3C0();

  sub_22F73F6C0();
  sub_22F73F6A0();
  (*(v3 + 8))(v6, v2);
  sub_22F73F410();

  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_22F73F450();
  v14 = sub_22F740DF0();

  LOBYTE(v6) = [v13 fileExistsAtPath_];

  if (v6)
  {
    result = (*(v7 + 8))(v10, v26);
  }

  else
  {
    v16 = v26;
    v17 = [v12 defaultManager];
    v18 = sub_22F73F3F0();
    v27[0] = 0;
    v19 = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v27];

    if (v19)
    {
      v20 = *(v7 + 8);
      v21 = v27[0];
      result = v20(v10, v16);
    }

    else
    {
      v22 = v27[0];
      sub_22F73F370();

      swift_willThrow();
      v23 = *(v7 + 8);
      v23(a1, v16);
      result = (v23)(v10, v16);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

id MusicCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MusicCache.removeSongSources(songSourceCategory:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771340;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(v6, a3);
}

void MusicCache.removeSongSources(songSourceCategories:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v3 = swift_allocObject();
  v19 = xmmword_22F770DF0;
  *(v3 + 16) = xmmword_22F770DF0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22F153470();
  *(v3 + 64) = v4;
  *(v3 + 32) = 0x79726F6765746163;
  *(v3 + 40) = 0xE800000000000000;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v3 + 96) = v5;
  v6 = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v3 + 104) = v6;
  *(v3 + 72) = a1;

  v7 = sub_22F741560();
  v8 = swift_allocObject();
  *(v8 + 16) = v19;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = v4;
  *(v8 + 32) = 0x79726F6765746163;
  *(v8 + 40) = 0xE800000000000000;
  *(v8 + 96) = v5;
  *(v8 + 104) = v6;
  *(v8 + 72) = a1;

  v9 = sub_22F741560();
  v10 = v7;
  sub_22F741690();
  if (v26)
  {
  }

  else
  {
    v11 = sub_22F7416F0();
    v26 = v18;
    v12 = v21;
    v13 = v22;
    v15 = v23;
    v14 = v24;
    v16 = v25;
    v17 = *(v18[1] + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v11);
    sub_22F7417A0();
  }
}

uint64_t MusicCache.readSongSources(songSourceCategory:progressReporter:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F770DF0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22F153470();
  *(v5 + 32) = 0x79726F6765746163;
  *(v5 + 40) = 0xE800000000000000;
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v5 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v5 + 72) = v4;

  v6 = sub_22F741560();
  v7 = sub_22F1935BC();

  return v7;
}

void sub_22F194CB0(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v6 = sub_22F740DF0();

  v7 = [v5 initWithEntityName_];

  v8 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for MusicCacheInfoEntry();
  v9 = sub_22F7417B0();
  if (v2)
  {

    return;
  }

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  v26 = v9;
  v27 = sub_22F741A00();
  v9 = v26;
  if (!v27)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x2319016F0](0);
LABEL_8:
    v11 = v10;

    if (v11)
    {
      sub_22F1A3B10(v30);
      v12 = v11;
      v13 = [v12 musicBagContentsAsData];
      if (v13)
      {
        v14 = v13;
        v15 = sub_22F73F510();
        v17 = v16;

        v18 = sub_22F73F310();
        v19 = *(v18 + 48);
        v20 = *(v18 + 52);
        swift_allocObject();
        sub_22F73F300();
        sub_22F1A3B3C();
        sub_22F73F2F0();
        sub_22F133BF0(v15, v17);

        memcpy(v28, __src, sizeof(v28));
        GEOLocationCoordinate2DMake(v28);
        v21 = v28;
      }

      else
      {
        v21 = v30;
      }

      memcpy(__dst, v21, sizeof(__dst));
      v22 = [v12 version];
      v23 = sub_22F740E20();
      v25 = v24;

      __src[0] = v23;
      __src[1] = v25;
      memcpy(&__src[2], __dst, 0x120uLL);
      GEOLocationCoordinate2DMake(__src);
      memcpy(v32, __src, sizeof(v32));
      goto LABEL_16;
    }

LABEL_15:

    sub_22F1A2878(v32);
LABEL_16:
    memcpy(__src, a2, sizeof(__src));
    memcpy(a2, v32, 0x130uLL);
    sub_22F120ADC(__src, &unk_27DAB1D90, &qword_22F7771A8);
    return;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_22F194FB0(uint64_t a1, const void *a2)
{
  __dst[38] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v6 = sub_22F740DF0();

  v7 = [v5 initWithEntityName_];

  v8 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for MusicCacheInfoEntry();
  v9 = sub_22F7417B0();
  if (!v2)
  {
    v10 = v9;
    if (v9 >> 62)
    {
      v11 = sub_22F741A00();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        if (v11 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v11; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x2319016F0](i, v10);
          }

          else
          {
            v13 = *(v10 + 8 * i + 32);
          }

          v14 = v13;
          [v8 deleteObject_];
        }
      }
    }

    memcpy(__dst, a2, 0x130uLL);

    __dst[0] = 0;
    if ([v8 save_])
    {
      v15 = __dst[0];
    }

    else
    {
      v16 = __dst[0];
      v17 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v18 = sub_22F7420F0();
      v20 = v19;
      sub_22F1A297C();
      swift_allocError();
      *v21 = v18;
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      swift_willThrow();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22F19530C(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v4 = sub_22F740DF0();

  v5 = [v3 initWithEntityName_];

  v6 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for MusicCacheInfoEntry();
  v7 = sub_22F7417B0();
  if (!v1)
  {
    v8 = v7;
    if (v7 >> 62)
    {
      v9 = sub_22F741A00();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_4:
        if (v9 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x2319016F0](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          [v6 deleteObject_];
        }
      }
    }

    v21[0] = 0;
    if ([v6 save_])
    {
      v13 = v21[0];
    }

    else
    {
      v14 = v21[0];
      v15 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v16 = sub_22F7420F0();
      v18 = v17;
      sub_22F1A297C();
      swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v18;
      *(v19 + 16) = 0;
      swift_willThrow();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t MusicCache.readCacherStatus(category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v6 = sub_22F740AD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v11 = *(v7 + 8);
  v11(v10, v6);
  v12 = type metadata accessor for CacherStatus(0);
  v13 = (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  v14 = *(v3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v13);
  v15 = v19;
  *(&v18 - 4) = a1;
  *(&v18 - 3) = v15;
  *(&v18 - 2) = v3;
  *(&v18 - 1) = a3;
  v16 = v20;
  sub_22F7417A0();
  if (v16)
  {
    return sub_22F120ADC(a3, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  return (v11)(v10, v6);
}

void sub_22F1957C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v30 - v10);
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v13 = sub_22F740DF0();

  v14 = [v12 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22F770DF0;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = sub_22F153470();
  *(v15 + 32) = 0x79726F6765746163;
  *(v15 + 40) = 0xE800000000000000;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = a1;
  *(v15 + 80) = a2;

  v18 = sub_22F741560();
  [v14 setPredicate_];

  v19 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for CacherStatusEntry();
  v20 = sub_22F7417B0();
  if (v4)
  {

    return;
  }

  v21 = v31;
  if (!(v20 >> 62))
  {
    v22 = v31;
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  v27 = v20;
  v28 = sub_22F741A00();
  v20 = v27;
  v22 = v21;
  if (!v28)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2319016F0](0);
LABEL_8:
    v24 = v23;

    if (v24)
    {
      v25 = v24;
      sub_22F1F05C0(v11);

      v26 = type metadata accessor for CacherStatus(0);
      (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
LABEL_13:
      sub_22F1A394C(v11, v22);
      return;
    }

LABEL_12:

    v29 = type metadata accessor for CacherStatus(0);
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    goto LABEL_13;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v20 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t MusicCache.readAllCacherStatus(progressReporter:)()
{
  v1 = v0;
  v2 = sub_22F740AD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v7 = *(v3 + 8);
  v7(v6, v2);
  v8 = sub_22F7416B0();
  v10 = v9;
  v15[0] = v2;
  v16 = MEMORY[0x277D84F90];
  v11 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v12 = MEMORY[0x28223BE20](v8);
  v15[-4] = v1;
  v15[-3] = v12;
  v15[-2] = &v16;
  v15[-1] = v10;
  v13 = v15[1];
  sub_22F7417A0();
  if (v13)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v7(v6, v15[0]);
    return v16;
  }
}

void sub_22F195D50(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4)
{
  v52 = a4;
  v61 = a3;
  v62 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for CacherStatus(0);
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v18 = sub_22F740DF0();

  v19 = [v17 initWithEntityName_];

  v20 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for CacherStatusEntry();
  v21 = sub_22F7417B0();
  if (v4)
  {

    return;
  }

  v22 = v21;
  v51 = v19;
  v56 = v16;
  v57 = v13;
  v58 = v10;
  v59 = v12;
  sub_22F7416A0();
  v50 = 0;
  v23 = v51;
  if (!(v22 >> 62))
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_25:

LABEL_26:
    sub_22F7416A0();

    return;
  }

  v24 = sub_22F741A00();
  if (!v24)
  {
    goto LABEL_25;
  }

LABEL_5:
  if (v24 >= 1)
  {
    v25 = 0;
    v53 = v22 & 0xC000000000000001;
    v54 = v24;
    v26 = v59;
    v55 = v22;
    do
    {
      if (v53)
      {
        v27 = MEMORY[0x2319016F0](v25, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v27 category];
      if (v29)
      {
        v30 = v29;
        v62 = sub_22F740E20();
        v32 = v31;
      }

      else
      {
        v62 = 0;
        v32 = 0;
      }

      v33 = [v28 lastSuccessfulFetchedDate];
      if (v33)
      {
        v34 = v33;
        sub_22F73F640();

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v36 = sub_22F73F690();
      v37 = *(*(v36 - 8) + 56);
      v38 = 1;
      v37(v26, v35, 1, v36);
      v39 = [v28 lastFailedFetchedDate];
      v40 = v58;
      if (v39)
      {
        v41 = v39;
        sub_22F73F640();

        v38 = 0;
      }

      v37(v40, v38, 1, v36);
      v43 = v56;
      v42 = v57;
      *v56 = v62;
      *(v43 + 8) = v32;
      v26 = v59;
      sub_22F1207AC(v59, v43 + *(v42 + 20), &qword_27DAB0920, &qword_22F770B20);
      sub_22F1207AC(v40, v43 + *(v42 + 24), &qword_27DAB0920, &qword_22F770B20);
      v44 = v61;
      v45 = *v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_22F13E530(0, v45[2] + 1, 1, v45);
        *v44 = v45;
      }

      v48 = v45[2];
      v47 = v45[3];
      if (v48 >= v47 >> 1)
      {
        *v44 = sub_22F13E530(v47 > 1, v48 + 1, 1, v45);
      }

      ++v25;

      v49 = *v44;
      *(v49 + 16) = v48 + 1;
      sub_22F1A3A48(v43, v49 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v48, type metadata accessor for CacherStatus);
      v22 = v55;
    }

    while (v54 != v25);

    v23 = v51;
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t MusicCache.write(cacherStatus:)(uint64_t *a1)
{
  v4 = sub_22F740AD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  if (v9)
  {
    v19 = v2;
    v10 = *a1;
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v11 = qword_2810A8E88;
    sub_22F740AC0();
    v18[1] = v11;
    sub_22F740A90();
    v12 = *(v5 + 8);
    v13 = v12(v8, v4);
    v14 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v13);
    v18[-4] = v10;
    v18[-3] = v9;
    v18[-2] = v1;
    v18[-1] = a1;
    v15 = v19;
    result = sub_22F7417A0();
    if (!v15)
    {
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      return v12(v8, v4);
    }
  }

  else
  {
    sub_22F1A297C();
    swift_allocError();
    *v17 = xmmword_22F777160;
    *(v17 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

void sub_22F196484(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v10 = sub_22F740DF0();

  v11 = [v9 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F770DF0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22F153470();
  *(v12 + 32) = 0x79726F6765746163;
  *(v12 + 40) = 0xE800000000000000;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  v15 = sub_22F741560();
  [v11 setPredicate_];

  v16 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for CacherStatusEntry();
  v17 = sub_22F7417B0();
  if (!v4)
  {
    if (v17 >> 62)
    {
      v21 = v17;
      v22 = sub_22F741A00();
      v17 = v21;
      if (v22)
      {
        goto LABEL_5;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2319016F0](0);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v19 = *(v17 + 32);
      }

      v20 = v19;

      sub_22F1F0818(a4);
      goto LABEL_11;
    }

    v20 = sub_22F1F220C(v16, a4);
LABEL_11:

    v30[0] = 0;
    if ([v16 save_])
    {
      v23 = v30[0];
    }

    else
    {
      v24 = v30[0];
      v25 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v26 = sub_22F7420F0();
      v28 = v27;
      sub_22F1A297C();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      swift_willThrow();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void MusicCache.removeCacherStatus(songSourceCategories:progressReporter:)(uint64_t a1)
{
  v3 = v1;
  if (a1)
  {
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22F770DF0;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_22F153470();
    *(v5 + 32) = 0x79726F6765746163;
    *(v5 + 40) = 0xE800000000000000;
    *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v5 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
    *(v5 + 72) = a1;

    v6 = sub_22F741560();
  }

  else
  {
    v6 = 0;
  }

  sub_22F741690();
  if (!v2)
  {
    v7 = sub_22F7416B0();
    v9 = v8;
    v10 = *(v3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v7);
    sub_22F7417A0();
  }
}

void sub_22F1969BC(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  sub_22F1A3370(a2, v3);
  if (!v2)
  {
    v12[0] = 0;
    if ([v3 save_])
    {
      v4 = v12[0];
      sub_22F7416A0();
    }

    else
    {
      v5 = v12[0];
      v6 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v7 = sub_22F7420F0();
      v9 = v8;
      sub_22F1A297C();
      swift_allocError();
      *v10 = v7;
      *(v10 + 8) = v9;
      *(v10 + 16) = 0;
      swift_willThrow();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t MusicCache.read(readOptions:progressReporter:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return sub_22F196B2C(0, &v5, a2);
}

uint64_t sub_22F196B2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = a3;
  v21 = a1;
  v5 = sub_22F740AD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v20 = *(a2 + 17);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v13 = *(v6 + 8);
  v14 = v13(v9, v5);
  v19 = v5;
  v24 = MEMORY[0x277D84F90];
  v15 = *(v3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v14);
  *(&v18 - 8) = &v24;
  *(&v18 - 7) = v3;
  *(&v18 - 6) = v21;
  *(&v18 - 5) = v10;
  *(&v18 - 4) = v11;
  *(&v18 - 24) = v12;
  *(&v18 - 23) = v20;
  v16 = v23;
  *(&v18 - 2) = v22;
  sub_22F7417A0();
  if (v16)
  {
  }

  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  v13(v9, v19);
  return v24;
}

uint64_t MusicCache.read(adamIDs:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F770DF0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22F153470();
  *(v8 + 32) = 0x44496D616461;
  *(v8 + 40) = 0xE600000000000000;
  *(v8 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v8 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v8 + 72) = a1;

  v9 = sub_22F741560();
  v13[0] = v5;
  v13[1] = v4;
  v14 = v6;
  v15 = v7;
  v10 = sub_22F196B2C(v9, v13, a3);

  return v10;
}

uint64_t MusicCache.read(songSourceCategories:progressReporter:)(uint64_t a1)
{
  v2 = sub_22F740AD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F770DF0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22F153470();
  *(v7 + 32) = 0x79726F6765746163;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v7 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v7 + 72) = a1;

  v8 = sub_22F741560();
  v21 = v8;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = sub_22F7416B0();
  v12 = v11;
  v20 = v2;
  v24 = MEMORY[0x277D84F90];
  v13 = *(v22 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v14 = MEMORY[0x28223BE20](v10);
  *(&v20 - 10) = v8;
  *(&v20 - 9) = v15;
  *(&v20 - 8) = v14;
  *(&v20 - 7) = v12;
  *(&v20 - 6) = 0;
  *(&v20 - 5) = &v24;
  *(&v20 - 4) = 0;
  *(&v20 - 3) = 0;
  *(&v20 - 8) = 1;
  v16 = v23;
  sub_22F7417A0();
  if (v16)
  {

    v17 = v21;
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v19 = v21;

    v9(v6, v20);
    return v24;
  }
}

uint64_t MusicCache.read(adamIDs:songSourceCategories:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_22F740AD0();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v9 = swift_allocObject();
  v30 = xmmword_22F770DF0;
  *(v9 + 16) = xmmword_22F770DF0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v10 = sub_22F153470();
  *(v9 + 64) = v10;
  *(v9 + 32) = 0x79726F6765746163;
  *(v9 + 40) = 0xE800000000000000;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v9 + 96) = v11;
  v12 = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v9 + 104) = v12;
  *(v9 + 72) = a2;

  v13 = sub_22F741560();
  v14 = swift_allocObject();
  *(v14 + 16) = v30;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = v10;
  *(v14 + 32) = 0x44496D616461;
  *(v14 + 40) = 0xE600000000000000;
  *(v14 + 96) = v11;
  *(v14 + 104) = v12;
  *(v14 + 72) = a1;

  v15 = sub_22F741560();
  v16 = v13;
  *&v30 = v15;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v17 = v34;
  sub_22F740AC0();
  sub_22F740A90();
  v18 = *(v36 + 8);
  v36 += 8;
  v18(v17, v35);
  v19 = sub_22F7416B0();
  v21 = v20;
  v37 = MEMORY[0x277D84F90];
  v22 = *(v32 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v23 = MEMORY[0x28223BE20](v19);
  *(&v30 - 10) = v13;
  *(&v30 - 9) = v24;
  *(&v30 - 8) = v23;
  *(&v30 - 7) = v21;
  *(&v30 - 6) = v15;
  *(&v30 - 5) = &v37;
  *(&v30 - 4) = 0;
  *(&v30 - 3) = 0;
  *(&v30 - 8) = 1;
  v25 = v33;
  sub_22F7417A0();
  if (v25)
  {

    v26 = v30;
  }

  else
  {
    sub_22F741730();
    v28 = v34;
    sub_22F740AC0();
    sub_22F740A90();

    v29 = v30;

    v18(v28, v35);
    return v37;
  }
}

uint64_t MusicCache.readSongsWithoutALastRefreshAttemptDate(progressReporter:)(uint64_t a1)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F771340;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22F153470();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000022F790200;
  v3 = sub_22F741560();
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v4 = v3;
  v5 = sub_22F196B2C(v3, v7, a1);

  return v5;
}

uint64_t MusicCache.readSongsOrderedByLastRefreshAttemptDate(before:limit:ascending:progressReporter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F7707D0;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_22F153470();
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x800000022F790200;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = 0xD000000000000016;
  *(v6 + 80) = 0x800000022F790200;
  v9 = sub_22F73F5B0();
  *(v6 + 136) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v6 + 144) = sub_22F15FD58();
  *(v6 + 112) = v9;
  v10 = sub_22F741560();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F771EB0;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22F740DF0();
  v14 = [v12 initWithKey:v13 ascending:a3 & 1];

  *(v11 + 32) = v14;
  v19[0] = v11;
  v19[1] = a2;
  v20 = 0;
  v15 = v10;
  v16 = sub_22F196B2C(v10, v19, a4);

  return v16;
}

void sub_22F1979DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v10[0] = a4;
  v10[1] = a5;
  v11 = a6;
  sub_22F197A4C(*(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext), a3, v10);
  if (!v6)
  {
    v9 = *a1;
    *a1 = v8;
  }
}

void sub_22F197A4C(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = a2;
  v116 = a1;
  v5 = type metadata accessor for Song();
  v101 = *(v5 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F740AD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 8);
  v109 = *a3;
  v15 = *(a3 + 16);
  v16 = *(a3 + 17);
  sub_22F741690();
  if (!v3)
  {
    LODWORD(v104) = v15;
    v108 = v14;
    v103 = v16;
    v107 = v13;
    v105 = v9;
    v99 = v8;
    v95 = sub_22F7416B0();
    v94 = v17;
    v18 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v19 = sub_22F740DF0();

    v20 = [v18 initWithEntityName_];

    [v20 setPredicate_];
    [v20 setReturnsObjectsAsFaults_];
    if (v109)
    {
      sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
      v21 = sub_22F741160();
    }

    else
    {
      v21 = 0;
    }

    v22 = v107;
    v23 = v108;
    v24 = v104;
    [v20 setSortDescriptors_];

    v25 = v106;
    if ((v24 & 1) == 0)
    {
      [v20 setFetchLimit_];
    }

    v26 = type metadata accessor for SongEntry();
    v27 = sub_22F7417B0();
    v92 = v26;
    v28 = v27;
    sub_22F7416A0();
    v29 = v28 >> 62;
    v86 = v20;
    v30 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
      goto LABEL_68;
    }

    v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v32 = v28;
    v28 = v105;
    v33 = v10;
    if (v32 < 0)
    {
      v34 = v32;
    }

    else
    {
      v34 = v30;
    }

    v85 = v34;
    v87 = v32;
    if (v31)
    {
      v84 = v29;
      v10 = 0;
      v98 = v32 & 0xC000000000000001;
      v97 = v32 + 32;
      v93 = (v33 + 8);
      *(&v35 + 1) = 4;
      v91 = xmmword_22F770DF0;
      *&v35 = 138412290;
      v90 = v35;
      v88 = MEMORY[0x277D84F90];
      v96 = v31;
      v104 = OBJC_IVAR___PGMusicCache_managedObjectContext;
      v100 = v30;
      while (1)
      {
        if (v98)
        {
          v36 = MEMORY[0x2319016F0](v10, v87);
        }

        else
        {
          v29 = *(v30 + 16);
          if (v10 >= v29)
          {
            goto LABEL_67;
          }

          v36 = *(v97 + 8 * v10);
        }

        v116 = v36;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v83 = v29;
          v31 = sub_22F741A00();
          v29 = v83;
          goto LABEL_9;
        }

        if (v103)
        {
          v38 = v25;
          sub_22F741740();
          if (qword_2810A8E80 != -1)
          {
            swift_once();
          }

          v39 = qword_2810A8E88;
          sub_22F740AC0();
          sub_22F740A90();
          v40 = *v93;
          (*v93)(v22, v28);
          swift_beginAccess();
          v41 = objc_allocWithZone(MEMORY[0x277CBE428]);

          v42 = sub_22F740DF0();

          v43 = [v41 initWithEntityName_];

          sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
          v44 = swift_allocObject();
          *(v44 + 16) = v91;
          *(v44 + 56) = MEMORY[0x277D837D0];
          *(v44 + 64) = sub_22F153470();
          *(v44 + 32) = 1735290739;
          *(v44 + 40) = 0xE400000000000000;
          *(v44 + 96) = v92;
          *(v44 + 104) = sub_22F1A3328(&qword_27DAB1E50, type metadata accessor for SongEntry);
          v45 = v116;
          *(v44 + 72) = v116;
          v46 = v45;
          v47 = sub_22F741560();
          [v43 setPredicate_];

          v48 = *(v38 + v104);
          type metadata accessor for SongPlaybackInfoEntry();
          v49 = sub_22F7417B0();
          v51 = v49;
          v89 = v43;
          v109 = v40;
          v110 = v39;
          if (v49 >> 62)
          {
            v52 = sub_22F741A00();
          }

          else
          {
            v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v53 = v109;
          v102 = v10;
          if (v52)
          {
            v54 = 0;
            v108 = v51 & 0xC000000000000001;
            v50 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v108)
              {
                v55 = MEMORY[0x2319016F0](v54, v51);
              }

              else
              {
                if (v54 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_65;
                }

                v55 = *(v51 + 8 * v54 + 32);
              }

              v56 = v55;
              v57 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                __break(1u);
LABEL_65:
                __break(1u);

                return;
              }

              SongPlaybackInfoEntry.playbackInfo()(&v115);
              if (v58)
              {
                break;
              }

              v113 = *&v115.playCount;
              *v114 = v115.lastEndReason;
              *&v114[9] = *(&v115.lastEndReason._object + 1);
              v112 = *&v115.hoursUTC._rawValue;
              dateUTC = v115.dateUTC;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_22F13E580(0, *(v50 + 2) + 1, 1, v50);
              }

              v60 = *(v50 + 2);
              v59 = *(v50 + 3);
              if (v60 >= v59 >> 1)
              {
                v50 = sub_22F13E580((v59 > 1), v60 + 1, 1, v50);
              }

              *(v50 + 2) = v60 + 1;
              v61 = &v50[80 * v60];
              *(v61 + 2) = dateUTC;
              v62 = v112;
              v63 = v113;
              v64 = *v114;
              *(v61 + 89) = *&v114[9];
              *(v61 + 4) = v63;
              *(v61 + 5) = v64;
              *(v61 + 3) = v62;
              ++v54;
              v65 = v57 == v52;
              v53 = v109;
              if (v65)
              {
                goto LABEL_41;
              }
            }

            v25 = v106;
            v22 = v107;
            v10 = v102;
            v75 = v104;
            v66 = sub_22F7415E0();
            if (qword_2810A8E80 != -1)
            {
              swift_once();
            }

            v67 = qword_2810A8E88;
            if (os_log_type_enabled(qword_2810A8E88, v66))
            {
              v68 = v10;
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *v69 = v90;
              v71 = v116;
              *(v69 + 4) = v116;
              *v70 = v71;
              v72 = v71;
              _os_log_impl(&dword_22F0FC000, v67, v66, "[MemoriesMusic] MusicCuration - song entry %@ is corrupted - removing from cache", v69, 0xCu);
              sub_22F120ADC(v70, &qword_27DAB07D0, &qword_22F779400);
              v73 = v70;
              v22 = v107;
              MEMORY[0x2319033A0](v73, -1, -1);
              v74 = v69;
              v10 = v68;
              v75 = v104;
              MEMORY[0x2319033A0](v74, -1, -1);
            }

            v76 = v116;
            [*(v25 + v75) deleteObject_];

            goto LABEL_48;
          }

          v50 = MEMORY[0x277D84F90];
LABEL_41:

          sub_22F741730();
          v22 = v107;
          sub_22F740AC0();
          sub_22F740A90();

          v53(v22, v105);
          v25 = v106;
        }

        else
        {
          v102 = v10;
          v50 = 0;
        }

        sub_22F35420C(v50, v99);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_22F13E558(0, v88[2] + 1, 1, v88);
        }

        v10 = v102;
        v77 = v88;
        v79 = v88[2];
        v78 = v88[3];
        if (v79 >= v78 >> 1)
        {
          v77 = sub_22F13E558(v78 > 1, v79 + 1, 1, v88);
        }

        v77[2] = v79 + 1;
        v80 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v88 = v77;
        sub_22F1A3A48(v99, v77 + v80 + *(v101 + 72) * v79, type metadata accessor for Song);
        if (v84)
        {
          sub_22F741A00();
        }

        else
        {
          v81 = *(v100 + 16);
        }

        sub_22F741680();

LABEL_48:
        v28 = v105;
        v30 = v100;
        if (v10 == v96)
        {
          goto LABEL_62;
        }
      }
    }

    v88 = MEMORY[0x277D84F90];
LABEL_62:

    v82 = v94;
    sub_22F7416A0();
  }
}

void sub_22F198724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v40 = a6;
  v14 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v15 = sub_22F740DF0();

  v16 = [v14 initWithEntityName_];

  [v16 setIncludesPropertyValues_];
  [v16 setResultType_];
  [v16 setPredicate_];
  v17 = *(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
  v18 = sub_22F7417B0();
  if (v10)
  {
    goto LABEL_2;
  }

  v19 = v18;
  v20 = v40;
  sub_22F7416A0();
  if (v19 >> 62)
  {
    v21 = sub_22F741A00();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 < 1)
  {

    sub_22F7416A0();
LABEL_2:

    return;
  }

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22F770DF0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_22F153470();
  *(v22 + 32) = 0x73656372756F73;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E38, &unk_22F7774D0);
  *(v22 + 104) = sub_22F16BC6C(&unk_27DAB1E40, &qword_27DAB1E38, &unk_22F7774D0);
  *(v22 + 72) = v19;
  v23 = sub_22F741560();
  v24 = v23;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22F771350;
    *(v25 + 32) = v24;
    *(v25 + 40) = a5;
    v26 = a5;
    v27 = v24;
    v28 = v26;
    v29 = sub_22F741160();

    v30 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v30 = v23;
  }

  v31 = v30;
  v37[0] = a7;
  v37[1] = a8;
  v38 = a9 & 1;
  v39 = a10 & 1;
  sub_22F197A4C(v17, v31, v37);
  v33 = v32;

  v34 = *v20;
  *v20 = v33;
}

void sub_22F198AF4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v172 = a2;
  v176 = a1;
  v184[15] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v174 = v155 - v8;
  v173 = type metadata accessor for Song();
  v178 = *(v173 - 8);
  v9 = *(v178 + 64);
  v10 = MEMORY[0x28223BE20](v173);
  v170 = v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v171 = (v155 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v175 = (v155 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v155 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v155 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v155 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = (v155 - v25);
  v27 = *a3;
  v28 = a3[1];
  v29 = a3[2];
  v30 = a3[3];
  v31 = v180;
  sub_22F741690();
  if (v31)
  {
    goto LABEL_2;
  }

  v179 = v26;
  v180 = v24;
  v162 = v18;
  v163 = v21;
  LODWORD(v164) = v29;
  v159 = v30;
  v160 = v28;
  v165 = v27;
  v177 = 0;
  v161 = a4;
  v166 = sub_22F7416B0();
  v167 = v33;
  v34 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v35 = sub_22F740DF0();

  v168 = [v34 initWithEntityName_];

  v36 = *(v176 + 16);
  if (v36)
  {
    v37 = v176 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
    v38 = *(v178 + 72);
    v39 = MEMORY[0x277D84F98];
    v40 = v179;
    v41 = v180;
    do
    {
      sub_22F1A39E0(v37, v40, type metadata accessor for Song);
      v43 = *v40;
      v42 = v40[1];
      sub_22F1A39E0(v40, v41, type metadata accessor for Song);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184[0] = v39;
      v46 = sub_22F1229E8(v43, v42);
      v47 = v39[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        __break(1u);
        goto LABEL_104;
      }

      v50 = v45;
      if (v39[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F134A90();
        }
      }

      else
      {
        sub_22F126640(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_22F1229E8(v43, v42);
        if ((v50 & 1) != (v52 & 1))
        {
          sub_22F7420C0();
          __break(1u);
          return;
        }

        v46 = v51;
      }

      v41 = v180;
      v39 = v184[0];
      if (v50)
      {
        sub_22F1A2A44(v180, *(v184[0] + 7) + v46 * v38);
      }

      else
      {
        *(v184[0] + (v46 >> 6) + 8) |= 1 << v46;
        v53 = (v39[6] + 16 * v46);
        *v53 = v43;
        v53[1] = v42;
        sub_22F1A3A48(v41, v39[7] + v46 * v38, type metadata accessor for Song);
        v54 = v39[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          __break(1u);
LABEL_106:

          sub_22F0FF590();
          sub_22F1A3AB0(v50, type metadata accessor for Song);

          goto LABEL_101;
        }

        v39[2] = v56;
      }

      v40 = v179;
      sub_22F1A3AB0(v179, type metadata accessor for Song);
      v37 += v38;
      --v36;
    }

    while (v36);
  }

  else
  {
    v39 = MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v57 = v39;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_22F770DF0;
  *(v58 + 56) = MEMORY[0x277D837D0];
  *(v58 + 64) = sub_22F153470();
  *(v58 + 32) = 0x44496D616461;
  *(v58 + 40) = 0xE600000000000000;
  v59 = *(v57 + 16);
  v180 = v57;
  if (!v59)
  {
    goto LABEL_20;
  }

  v60 = sub_22F10B348(v59, 0);
  v61 = sub_22F120B3C(v184, v60 + 4, v59, v57);

  sub_22F0FF590();
  if (v61 != v59)
  {
    __break(1u);
LABEL_20:
    v60 = MEMORY[0x277D84F90];
  }

  v62 = v168;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v58 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v58 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v58 + 72) = v60;
  v63 = sub_22F741560();
  [v62 setPredicate_];

  v184[0] = 0;
  v64 = [v62 execute_];
  v65 = v184[0];
  if (!v64)
  {
    v72 = v184[0];
    sub_22F73F370();

    swift_willThrow();

    goto LABEL_2;
  }

  v66 = v64;
  v67 = type metadata accessor for SongEntry();
  v68 = sub_22F741180();
  v69 = v65;

  v70 = v166;
  v71 = v177;
  sub_22F7416A0();
  v177 = v71;
  if (v71)
  {

    goto LABEL_2;
  }

  v73 = sub_22F151908(v68);

  v184[0] = v73;
  v74 = v180;

  v183 = sub_22F1534D0(v74);
  v176 = v67;
  v155[1] = v73;
  if ((v73 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
    sub_22F741470();
    v75 = v184[5];
    v76 = v184[6];
    v77 = v184[7];
    v78 = v184[8];
    v79 = v184[9];
  }

  else
  {
    v78 = 0;
    v80 = -1 << *(v73 + 32);
    v77 = ~v80;
    v76 = (v73 + 56);
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v79 = (v82 & *(v73 + 56));
    v75 = v73;
  }

  v157 = v77;
  v83 = (v77 + 64) >> 6;
  v158 = v75;
  while ((v75 & 0x8000000000000000) == 0)
  {
    v84 = v78;
    v85 = v79;
    if (!v79)
    {
      while (1)
      {
        v78 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v78 >= v83)
        {
          goto LABEL_50;
        }

        v85 = v76[v78];
        ++v84;
        if (v85)
        {
          goto LABEL_40;
        }
      }

LABEL_108:
      __break(1u);
LABEL_109:

      sub_22F0FF590();
      goto LABEL_101;
    }

LABEL_40:
    v79 = ((v85 - 1) & v85);
    v42 = *(*(v75 + 48) + ((v78 << 9) | (8 * __clz(__rbit64(v85)))));
    if (!v42)
    {
      goto LABEL_50;
    }

LABEL_44:
    v87 = [v42 adamID];
    if (v87)
    {
      v179 = v79;
      v88 = v87;
      v89 = sub_22F740E20();
      v91 = v90;

      sub_22F164408(v89, v91);

      if (v165 && (v92 = v180, *(v180 + 2)))
      {
        v156 = sub_22F1229E8(v89, v91);
        v94 = v93;

        if (v94)
        {
          v95 = v162;
          sub_22F1A39E0(*(v92 + 56) + *(v178 + 72) * v156, v162, type metadata accessor for Song);
          v96 = v95;
          v50 = v163;
          sub_22F1A3A48(v96, v163, type metadata accessor for Song);
          v97 = v177;
          sub_22F354A34(v50);
          v177 = v97;
          if (v97)
          {
            goto LABEL_106;
          }

          sub_22F1A3AB0(v50, type metadata accessor for Song);
        }
      }

      else
      {
      }

      v75 = v158;
      v79 = v179;
    }
  }

  v86 = sub_22F741A40();
  if (v86)
  {
    v181 = v86;
    swift_dynamicCast();
    v42 = v182;
    if (v182)
    {
      goto LABEL_44;
    }
  }

LABEL_50:
  sub_22F0FF590();
  v98 = 0;
  v99 = 0;
  v100 = v183;
  v101 = 1 << *(v183 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v183 + 56;
  v104 = v102 & *(v183 + 56);
  v179 = *(v183 + 16);
  v105 = (v101 + 63) >> 6;
LABEL_53:
  if (v104)
  {
    v106 = v104;
    v107 = v180;
    v55 = __OFADD__(v98++, 1);
    if (!v55)
    {
      goto LABEL_62;
    }

LABEL_111:
    __break(1u);
  }

  v107 = v180;
  v108 = v164;
  while (1)
  {
    v109 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      __break(1u);
      goto LABEL_108;
    }

    if (v109 >= v105)
    {
      break;
    }

    v106 = *(v103 + 8 * v109);
    ++v99;
    if (v106)
    {
      v99 = v109;
      v55 = __OFADD__(v98++, 1);
      if (v55)
      {
        goto LABEL_111;
      }

LABEL_62:
      v104 = (v106 - 1) & v106;
      if (*(v107 + 16))
      {
        v110 = (*(v100 + 48) + ((v99 << 10) | (16 * __clz(__rbit64(v106)))));
        v111 = *v110;
        v112 = v110[1];

        v113 = sub_22F1229E8(v111, v112);
        v83 = v114;

        if (v83)
        {
          v115 = *(v180 + 7) + *(v178 + 72) * v113;
          v116 = v171;
          sub_22F1A39E0(v115, v171, type metadata accessor for Song);
          v117 = v116;
          v39 = v175;
          sub_22F1A3A48(v117, v175, type metadata accessor for Song);
          v118 = v177;
          v119 = sub_22F3551DC(v172, v39);
          if (!v118)
          {
            v83 = v119;
            sub_22F10C6E4(&v182, v83);

            sub_22F741680();
            v177 = 0;
            sub_22F1A3AB0(v175, type metadata accessor for Song);

            goto LABEL_53;
          }

LABEL_104:

          sub_22F1A3AB0(v39, type metadata accessor for Song);

          goto LABEL_2;
        }
      }

      goto LABEL_53;
    }
  }

  if ((v108 & 1) == 0)
  {
    v126 = v177;
    v127 = v167;
    v120 = v168;
    goto LABEL_100;
  }

  v120 = v168;
  v162 = v184[0];
  if ((v184[0] & 0xC000000000000001) != 0)
  {

    sub_22F7419C0();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
    sub_22F741470();
    v122 = v184[10];
    v121 = v184[11];
    v123 = v184[12];
    v124 = v184[13];
    v125 = v184[14];
  }

  else
  {
    v128 = -1 << *(v184[0] + 32);
    v121 = v184[0] + 56;
    v123 = ~v128;
    v129 = -v128;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    else
    {
      v130 = -1;
    }

    v125 = (v130 & *(v184[0] + 7));
    v124 = 0;
  }

  v163 = v123;
  v131 = (v123 + 64) >> 6;
  v171 = (v178 + 56);
  v164 = (v178 + 48);
  v172 = v122;
  while (2)
  {
    v175 = v124;
    if ((v122 & 0x8000000000000000) == 0)
    {
      v132 = v124;
      v133 = v125;
      if (!v125)
      {
        while (1)
        {
          v124 = v132 + 1;
          if (__OFADD__(v132, 1))
          {
            break;
          }

          if (v124 >= v131)
          {
            goto LABEL_99;
          }

          v133 = *&v121[8 * v124];
          ++v132;
          if (v133)
          {
            goto LABEL_81;
          }
        }

        __break(1u);
        goto LABEL_111;
      }

LABEL_81:
      v134 = (v133 - 1) & v133;
      v83 = *(*(v122 + 48) + ((v124 << 9) | (8 * __clz(__rbit64(v133)))));
      if (!v83)
      {
        goto LABEL_99;
      }

LABEL_85:
      v136 = [v83 adamID];
      if (!v136)
      {

        v125 = v134;
        continue;
      }

      v179 = v134;
      v137 = v136;
      v138 = sub_22F740E20();
      v140 = v139;

      v141 = v180;
      if (*(v180 + 2))
      {
        v142 = sub_22F1229E8(v138, v140);
        v144 = v143;

        if (v144)
        {
          v145 = *(v141 + 56) + *(v178 + 72) * v142;
          v146 = v174;
          sub_22F1A39E0(v145, v174, type metadata accessor for Song);
          v147 = 0;
LABEL_91:
          v148 = v179;
          v149 = v173;
          (*v171)(v146, v147, 1, v173);
          v150 = (*v164)(v146, 1, v149);
          v120 = v168;
          if (v150)
          {

            sub_22F120ADC(v146, &qword_27DAB1250, &qword_22F781A10);
            v125 = v148;
          }

          else
          {
            v151 = v170;
            sub_22F1A39E0(v146, v170, type metadata accessor for Song);
            sub_22F120ADC(v146, &qword_27DAB1250, &qword_22F781A10);
            v152 = *(v151 + *(v149 + 68));

            sub_22F1A3AB0(v151, type metadata accessor for Song);
            if (v152)
            {
              LOBYTE(v182) = v165;
              BYTE1(v182) = v160;
              BYTE2(v182) = 1;
              BYTE3(v182) = v159;
              v153 = v177;
              sub_22F2C5E90(v83, v152, &v182, *(v169 + OBJC_IVAR___PGMusicCache_managedObjectContext), v161);
              v177 = v153;
              if (v153)
              {
                goto LABEL_109;
              }

              type metadata accessor for SongPlaybackInfoEntry();
              sub_22F1A3328(&qword_27DAB1E10, type metadata accessor for SongPlaybackInfoEntry);
              v154 = sub_22F741410();

              [v83 setPlaybackInfo_];
            }

            else
            {
            }

            v125 = v179;
            v120 = v168;
          }

          v122 = v172;
          continue;
        }
      }

      else
      {
      }

      v147 = 1;
      v146 = v174;
      goto LABEL_91;
    }

    break;
  }

  v135 = sub_22F741A40();
  if (v135)
  {
    v181 = v135;
    swift_dynamicCast();
    v83 = v182;
    v134 = v125;
    if (v182)
    {
      goto LABEL_85;
    }
  }

LABEL_99:
  sub_22F0FF590();
  v126 = v177;
  v127 = v167;
LABEL_100:
  sub_22F7416A0();

  if (v126)
  {
LABEL_101:
  }

LABEL_2:
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t MusicCache.update(songs:progressReporter:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = (&v40 - v9);
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  isUniquelyReferenced_nonNull_native = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_24:
    swift_once();
  }

  v15 = qword_2810A8E88;
  sub_22F740AC0();
  v45 = v15;
  sub_22F740A90();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v16 = v18;
  v18(isUniquelyReferenced_nonNull_native, v10);
  v19 = a1[2];
  if (v19)
  {
    v40 = v16;
    v41 = isUniquelyReferenced_nonNull_native;
    v43 = v10;
    v44 = v2;
    v42 = v17;
    v2 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    v21 = MEMORY[0x277D84F98];
    v22 = v47;
    while (1)
    {
      v48 = v19;
      sub_22F1A39E0(v2, v22, type metadata accessor for Song);
      v11 = *v22;
      v5 = v22[1];
      sub_22F1A39E0(v22, v49, type metadata accessor for Song);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v21;
      a1 = v21;
      v10 = sub_22F1229E8(v11, v5);
      v25 = v21[2];
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v28 = v24;
      if (v21[3] >= v27)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v50;
          if ((v24 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          a1 = &v50;
          sub_22F134A90();
          v21 = v50;
          if ((v28 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        sub_22F126640(v27, isUniquelyReferenced_nonNull_native);
        a1 = v50;
        v29 = sub_22F1229E8(v11, v5);
        if ((v28 & 1) != (v30 & 1))
        {
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v10 = v29;
        v21 = v50;
        if ((v28 & 1) == 0)
        {
LABEL_13:
          v21[(v10 >> 6) + 8] |= 1 << v10;
          v31 = (v21[6] + 16 * v10);
          *v31 = v11;
          v31[1] = v5;
          sub_22F1A3A48(v49, v21[7] + v10 * v20, type metadata accessor for Song);
          v32 = v21[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_23;
          }

          v21[2] = v34;

          goto LABEL_5;
        }
      }

      sub_22F1A2A44(v49, v21[7] + v10 * v20);
LABEL_5:
      v22 = v47;
      v23 = sub_22F1A3AB0(v47, type metadata accessor for Song);
      v2 += v20;
      v19 = v48 - 1;
      if (v48 == 1)
      {
        v35 = *(v46 + OBJC_IVAR___PGMusicCache_managedObjectContext);
        MEMORY[0x28223BE20](v23);
        *(&v40 - 2) = v21;
        *(&v40 - 1) = v36;
        v37 = v44;
        sub_22F7417A0();

        if (!v37)
        {
          sub_22F741730();
          v39 = v41;
          sub_22F740AC0();
          sub_22F740A90();
          return v40(v39, v43);
        }

        return result;
      }
    }
  }

  result = sub_22F7416A0();
  if (!v2)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    return v16(isUniquelyReferenced_nonNull_native, v10);
  }

  return result;
}

void sub_22F19A328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Song();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v47 - v10;
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v12 = sub_22F740DF0();

  v13 = [v11 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F770DF0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_22F153470();
  *(v14 + 32) = 0x44496D616461;
  *(v14 + 40) = 0xE600000000000000;

  v55 = a1;
  v16 = sub_22F1534D0(v15);
  *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v14 + 104) = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0);
  *(v14 + 72) = v16;
  v17 = sub_22F741560();
  [v13 setPredicate_];

  v57[0] = 0;
  v18 = [v13 execute_];
  v19 = v57[0];
  if (!v18)
  {
    v42 = v57[0];
    sub_22F73F370();

    swift_willThrow();
LABEL_26:

    goto LABEL_27;
  }

  v20 = v18;
  v48 = a2;
  v49 = v13;
  type metadata accessor for SongEntry();
  v21 = sub_22F741180();
  v22 = v19;

  if (v21 >> 62)
  {
    goto LABEL_22;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v23; i = v3)
  {
    v24 = 0;
    v56 = v21 & 0xC000000000000001;
    v53 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v56)
      {
        v25 = MEMORY[0x2319016F0](v24, v21);
      }

      else
      {
        if (v24 >= *(v53 + 16))
        {
          goto LABEL_21;
        }

        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 adamID];
      if (v28)
      {
        v29 = v28;
        v3 = v23;
        v30 = sub_22F740E20();
        v32 = v31;

        if (*(v55 + 16))
        {
          v33 = v30;
          v34 = v55;
          v35 = sub_22F1229E8(v33, v32);
          v37 = v36;

          if (v37)
          {
            v38 = *(v34 + 56) + *(v52 + 72) * v35;
            v39 = v51;
            sub_22F1A39E0(v38, v51, type metadata accessor for Song);
            v40 = v50;
            sub_22F1A3A48(v39, v50, type metadata accessor for Song);
            v41 = i;
            sub_22F354A34(v40);
            sub_22F1A3AB0(v40, type metadata accessor for Song);
            if (v41)
            {

              v13 = v26;
              goto LABEL_26;
            }

            i = 0;
          }
        }

        else
        {
        }

        v23 = v3;
      }

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v23 = sub_22F741A00();
  }

LABEL_23:

  v43 = *(v48 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v57[0] = 0;
  if (([v43 save_] & 1) == 0)
  {
    v45 = v57[0];
    sub_22F73F370();

    swift_willThrow();
    v13 = v49;
    goto LABEL_26;
  }

  v44 = v57[0];

LABEL_27:
  v46 = *MEMORY[0x277D85DE8];
}

void MusicCache.removeSongs(withAdamIDs:progressReporter:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22F740AD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v10 = *(v6 + 8);
  v10(v9, v5);
  sub_22F741690();
  if (!v2)
  {
    v11 = sub_22F7416D0();
    v18[1] = v18;
    v12 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v11);
    v18[-6] = a1;
    v18[-5] = v3;
    v14 = v13;
    v18[-4] = v13;
    v18[-3] = v15;
    v19 = v15;
    v17 = v16;
    v18[-2] = v16;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v10(v9, v5);
  }
}

void sub_22F19AAC4(uint64_t a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v6 = sub_22F740DF0();

  v7 = [v5 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F770DF0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22F153470();
  *(v8 + 32) = 0x44496D616461;
  *(v8 + 40) = 0xE600000000000000;
  *(v8 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v8 + 104) = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0);
  *(v8 + 72) = a1;

  v9 = sub_22F741560();
  [v7 setPredicate_];

  v10 = *(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongEntry();
  v11 = sub_22F7417B0();
  if (v2)
  {

    goto LABEL_22;
  }

  v12 = v11;
  sub_22F7416A0();
  v25 = v7;
  if (v12 >> 62)
  {
LABEL_17:
    sub_22F741A00();
    v13 = sub_22F741A00();
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_5:
      v14 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2319016F0](v14, v12);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v15 = *(v12 + 8 * v14 + 32);
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_14:
            __break(1u);

            goto LABEL_22;
          }
        }

        [v10 deleteObject_];
        sub_22F741680();

        ++v14;
      }

      while (v16 != v13);
    }
  }

  v26[0] = 0;
  if ([v10 save_])
  {
    v17 = v26[0];
    sub_22F7416A0();
  }

  else
  {
    v18 = v26[0];
    v19 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v20 = sub_22F7420F0();
    v22 = v21;
    sub_22F1A297C();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0;
    swift_willThrow();
  }

LABEL_22:
  v24 = *MEMORY[0x277D85DE8];
}

void MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, unsigned __int8 *a8)
{
  v10 = v8;
  v44 = a7;
  v42 = a1;
  v43 = a6;
  v40 = a4;
  v41 = a5;
  v38 = a2;
  v39 = a3;
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a8;
  v36 = a8[1];
  v37 = v17;
  v18 = a8[2];
  v34 = a8[3];
  v35 = v18;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(v13 + 8);
  v19(v16, v12);
  sub_22F741690();
  if (!v9)
  {
    v20 = sub_22F7416E0();
    v22 = v21;
    v33[1] = v33;
    v23 = *(v8 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v24 = MEMORY[0x28223BE20](v20);
    v25 = v39;
    v33[-14] = v38;
    v33[-13] = v25;
    v26 = v40;
    v27 = v41;
    v33[-12] = v10;
    v33[-11] = v26;
    v28 = v43;
    v33[-10] = v27;
    v33[-9] = v28;
    v33[-8] = v44;
    v33[-7] = v24;
    v44 = v24;
    v33[-6] = v42;
    LOBYTE(v28) = v36;
    LOBYTE(v33[-5]) = v37;
    BYTE1(v33[-5]) = v28;
    LOBYTE(v28) = v34;
    BYTE2(v33[-5]) = v35;
    BYTE3(v33[-5]) = v28;
    v43 = v29;
    v33[-4] = v29;
    v33[-3] = v30;
    v31 = v30;
    v33[-2] = v32;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v19(v16, v12);
  }
}

void sub_22F19B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, uint64_t a12)
{
  v89 = a8;
  v83 = a6;
  v84 = a7;
  v81 = a4;
  v82 = a5;
  v90[1] = *MEMORY[0x277D85DE8];
  v15 = sub_22F73F690();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v86 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v85 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22F770DF0;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_22F153470();
  *(v24 + 32) = 0x696669746E656469;
  *(v24 + 40) = 0xEA00000000007265;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = a1;
  v27 = a1;
  *(v24 + 80) = a2;

  v28 = sub_22F741560();
  v29 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  (*(v88 + 56))(v23, 1, 1, v15);
  v30 = v87;
  sub_22F741690();
  if (v30)
  {
    v31 = v23;
LABEL_24:

    sub_22F120ADC(v31, &qword_27DAB0920, &qword_22F770B20);
    goto LABEL_25;
  }

  v78 = v27;
  v79 = a2;
  v87 = v23;
  v80 = a3;
  v32 = v29;
  v33 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v34 = sub_22F740DF0();

  v35 = [v33 initWithEntityName_];

  [v35 setPredicate_];
  v36 = type metadata accessor for SongSourceEntry();
  v37 = sub_22F7417B0();
  v38 = v35;
  v77 = v32;
  v39 = v28;
  sub_22F741690();
  v28 = v38;
  v76 = 0;
  if (v37 >> 62)
  {
    if (sub_22F741A00())
    {
      goto LABEL_5;
    }
  }

  else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x2319016F0](0, v37);
    }

    else
    {
      if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v40 = *(v37 + 32);
    }

    v41 = v40;

    v42 = v15;
    v31 = v87;
    v43 = v88;
    v44 = v86;
    goto LABEL_22;
  }

  v45 = objc_opt_self();

  v46 = sub_22F740DF0();

  v47 = v45;
  v48 = v77;
  v49 = [v47 entityForName:v46 inManagedObjectContext:v77];

  if (!v49)
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();

    v31 = v87;
    goto LABEL_24;
  }

  v41 = [objc_allocWithZone(v36) initWithEntity:v49 insertIntoManagedObjectContext:v48];

  v50 = sub_22F740DF0();
  [v41 setIdentifier_];

  if (v82)
  {
    v51 = sub_22F740DF0();
  }

  else
  {
    v51 = 0;
  }

  v52 = v85;
  [v41 setVersion_];

  v31 = v87;
  if (v84)
  {
    v53 = sub_22F740DF0();
  }

  else
  {
    v53 = 0;
  }

  v42 = v15;
  v43 = v88;
  [v41 setCategory_];

  sub_22F13BA9C(v31, v52, &qword_27DAB0920, &qword_22F770B20);
  v54 = (*(v43 + 48))(v52, 1, v15);
  v44 = v86;
  if (v54 == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_22F73F5B0();
    (*(v43 + 8))(v52, v42);
  }

  [v41 setDate_];

  [v41 setGeohash_];
LABEL_22:
  sub_22F73F680();
  v56 = sub_22F73F5B0();
  (*(v43 + 8))(v44, v42);
  [v41 setDateLastUpdated_];

  v57 = v76;
  sub_22F7416A0();
  if (v57)
  {

    v28 = v38;
    goto LABEL_24;
  }

  sub_22F120ADC(v31, &qword_27DAB0920, &qword_22F770B20);
  if (*(a9 + 16))
  {
    LOBYTE(v90[0]) = a10 & 1;
    BYTE1(v90[0]) = (a10 & 0x100) >> 8;
    WORD1(v90[0]) = a11 & 0x101;
    sub_22F198AF4(a9, v77, v90, a12);
    v60 = v59;
    if ((a10 & 0x100) != 0 || (v61 = [v41 songs]) == 0)
    {
      type metadata accessor for SongEntry();
      sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
      v66 = sub_22F741410();

      [v41 setSongs_];
    }

    else
    {

      v62 = [v41 songs];
      if (v62)
      {
        v63 = v62;
        type metadata accessor for SongEntry();
        sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
        v64 = sub_22F741420();

        v90[0] = v64;
        sub_22F2EA398(v60);
        if (v90[0])
        {
          v65 = sub_22F741410();
        }

        else
        {
          v65 = 0;
        }

        [v41 setSongs_];
      }

      else
      {

        [v41 setSongs_];
      }
    }
  }

  sub_22F1A35D0();
  v90[0] = 0;
  if ([v77 save_])
  {
    v67 = v90[0];
    sub_22F7416A0();
  }

  else
  {
    v68 = v90[0];
    v69 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v70 = sub_22F7420F0();
    v71 = v39;
    v73 = v72;
    sub_22F1A297C();
    swift_allocError();
    *v74 = v70;
    *(v74 + 8) = v73;
    *(v74 + 16) = 0;
    swift_willThrow();
  }

LABEL_25:
  v58 = *MEMORY[0x277D85DE8];
}

uint64_t MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22F740AD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v29 = a2[1];
  v30 = v9;
  LODWORD(v9) = *(a2 + 16);
  v27 = *(a2 + 17);
  v28 = v9;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F770DF0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_22F153470();
  *(v10 + 32) = 0x696669746E656469;
  *(v10 + 40) = 0xEA00000000007265;
  *(v10 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v10 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v10 + 72) = a1;

  v11 = sub_22F741560();
  v26 = v11;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = sub_22F7416B0();
  v15 = v14;
  v25 = v4;
  v33 = MEMORY[0x277D84F90];
  v16 = *(v31 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v17 = MEMORY[0x28223BE20](v13);
  *(&v24 - 10) = v11;
  *(&v24 - 9) = v18;
  *(&v24 - 8) = v17;
  *(&v24 - 7) = v15;
  *(&v24 - 6) = 0;
  *(&v24 - 5) = &v33;
  v19 = v29;
  *(&v24 - 4) = v30;
  *(&v24 - 3) = v19;
  LOBYTE(v19) = v27;
  *(&v24 - 16) = v28;
  *(&v24 - 15) = v19;
  v20 = v32;
  sub_22F7417A0();
  if (v20)
  {

    v21 = v26;
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v23 = v26;

    v12(v8, v25);
    return v33;
  }
}

uint64_t sub_22F19BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F770DF0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22F153470();
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v7 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
  *(v7 + 72) = a1;

  v8 = sub_22F741560();
  v9 = sub_22F1935BC();

  return v9;
}

uint64_t MusicCache.readSongSourceIdentifiers(for:progressReporter:)()
{
  v4 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  sub_22F7417A0();
  if (v1)
  {
  }

  sub_22F7416A0();
  return v4;
}

void sub_22F19C14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v10 = sub_22F740DF0();

  v11 = [v9 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F770DF0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22F153470();
  *(v12 + 32) = 0x44496D616461;
  *(v12 + 40) = 0xE600000000000000;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  v15 = sub_22F741560();
  [v11 setPredicate_];

  v16 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongEntry();
  v17 = sub_22F7417B0();
  if (v5)
  {
    goto LABEL_2;
  }

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_22F1A297C();
    swift_allocError();
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = 1;
    swift_willThrow();

LABEL_2:

    return;
  }

  v25 = v17;
  v26 = sub_22F741A00();
  v17 = v25;
  if (!v26)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x2319016F0](0);
    v18 = a5;
    goto LABEL_8;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = a5;
    v19 = *(v17 + 32);
LABEL_8:

    sub_22F741690();
    v20 = [v19 sources];
    type metadata accessor for SongSourceEntry();
    sub_22F1A3328(&unk_27DAB1E28, type metadata accessor for SongSourceEntry);
    v21 = sub_22F741420();

    sub_22F191AA8(v21);
    v23 = v22;

    v24 = *v18;
    *v18 = v23;

    return;
  }

  __break(1u);
}

void MusicCache.removeSongSources(songSourceIdentifiers:progressReporter:)(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = v1;
    if (v3 == 1)
    {
      v6 = a1[4];
      v5 = a1[5];
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22F770DF0;
      v8 = MEMORY[0x277D837D0];
      *(v7 + 56) = MEMORY[0x277D837D0];
      v9 = sub_22F153470();
      *(v7 + 32) = 0x696669746E656469;
      *(v7 + 40) = 0xEA00000000007265;
      *(v7 + 96) = v8;
      *(v7 + 104) = v9;
      *(v7 + 64) = v9;
      *(v7 + 72) = v6;
      *(v7 + 80) = v5;
    }

    else
    {
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_22F770DF0;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_22F153470();
      *(v11 + 32) = 0x696669746E656469;
      *(v11 + 40) = 0xEA00000000007265;
      *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v11 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0);
      *(v11 + 72) = a1;
    }

    v12 = sub_22F741560();
    sub_22F741690();
    if (v2)
    {
    }

    else
    {
      v13 = sub_22F7416F0();
      v20[7] = v20;
      v14 = v20[1];
      v15 = v20[2];
      v17 = v20[3];
      v16 = v20[4];
      v18 = v20[5];
      v19 = *(v4 + OBJC_IVAR___PGMusicCache_managedObjectContext);
      MEMORY[0x28223BE20](v13);
      sub_22F7417A0();
    }
  }
}

void MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:date:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, unsigned __int8 *a9)
{
  v11 = v9;
  v42 = a8;
  v43 = a5;
  v46 = a7;
  v44 = a1;
  v45 = a6;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a9;
  v37 = a9[1];
  v38 = v17;
  v18 = a9[2];
  v35 = a9[3];
  v36 = v18;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(v13 + 8);
  v19(v16, v12);
  sub_22F741690();
  if (!v10)
  {
    v20 = sub_22F7416E0();
    v22 = v21;
    v34 = &v34;
    v23 = *(v9 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v24 = MEMORY[0x28223BE20](v20);
    v25 = v40;
    *(&v34 - 14) = v39;
    *(&v34 - 13) = v25;
    v26 = v41;
    *(&v34 - 12) = v42;
    *(&v34 - 11) = v11;
    v27 = v24;
    v28 = v43;
    *(&v34 - 10) = v26;
    *(&v34 - 9) = v28;
    v29 = v46;
    *(&v34 - 8) = v45;
    *(&v34 - 7) = v29;
    v30 = v44;
    *(&v34 - 6) = v24;
    *(&v34 - 5) = v30;
    LOBYTE(v30) = v37;
    *(&v34 - 32) = v38;
    *(&v34 - 31) = v30;
    LOBYTE(v30) = v35;
    *(&v34 - 30) = v36;
    *(&v34 - 29) = v30;
    v46 = v31;
    *(&v34 - 3) = v31;
    *(&v34 - 2) = v32;
    v45 = v32;
    *(&v34 - 1) = v33;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v19(v16, v12);
  }
}

void sub_22F19CAA4(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  v82 = a4;
  v76 = a6;
  v77 = a8;
  v72 = a5;
  v73 = a7;
  v80 = a3;
  v83 = a9;
  v84[1] = *MEMORY[0x277D85DE8];
  v14 = sub_22F73F690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v78 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22F7727B0;
  v25 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v26 = sub_22F153470();
  *(v24 + 32) = 0x696669746E656469;
  *(v24 + 40) = 0xEA00000000007265;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = a1;
  v74 = a1;
  v75 = a2;
  *(v24 + 80) = a2;
  *(v24 + 136) = v25;
  *(v24 + 144) = v26;
  *(v24 + 112) = 1702125924;
  *(v24 + 120) = 0xE400000000000000;

  v27 = v80;
  v28 = sub_22F73F5B0();
  *(v24 + 176) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v24 + 184) = sub_22F15FD58();
  *(v24 + 152) = v28;
  v29 = v82;
  v30 = sub_22F741560();
  v31 = *(v29 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  (*(v15 + 16))(v23, v27, v14);
  (*(v15 + 56))(v23, 0, 1, v14);
  v32 = v81;
  sub_22F741690();
  if (v32)
  {
    goto LABEL_3;
  }

  v70 = v14;
  v71 = v15;
  v80 = v23;
  v33 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v81 = v31;
  v34 = v33;

  v35 = sub_22F740DF0();

  v36 = v34;
  v37 = v81;
  v38 = [v36 initWithEntityName_];

  [v38 setPredicate_];
  v39 = type metadata accessor for SongSourceEntry();
  v40 = sub_22F7417B0();
  sub_22F741690();
  if (v40 >> 62)
  {
    v47 = sub_22F741A00();
    v42 = v79;
    if (v47)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v42 = v79;
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v69 = v38;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x2319016F0](0, v40);

        v45 = v70;
        v43 = v80;
      }

      else
      {
        v43 = v80;
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v44 = *(v40 + 32);

        v45 = v70;
      }

      v46 = v71;
      goto LABEL_24;
    }
  }

  v48 = objc_opt_self();

  v49 = v37;
  v50 = sub_22F740DF0();

  v51 = [v48 entityForName:v50 inManagedObjectContext:v49];

  if (!v51)
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();

    v30 = v38;
    v23 = v80;
LABEL_3:

    sub_22F120ADC(v23, &qword_27DAB0920, &qword_22F770B20);
    goto LABEL_4;
  }

  v52 = [objc_allocWithZone(v39) initWithEntity:v51 insertIntoManagedObjectContext:v49];

  v53 = sub_22F740DF0();
  v75 = v52;
  [v52 setIdentifier_];

  if (v76)
  {
    v54 = sub_22F740DF0();
  }

  else
  {
    v54 = 0;
  }

  v55 = v78;
  [v75 setVersion_];

  v45 = v70;
  v46 = v71;
  v43 = v80;
  if (v77)
  {
    v56 = sub_22F740DF0();
  }

  else
  {
    v56 = 0;
  }

  [v75 setCategory_];

  sub_22F13BA9C(v43, v55, &qword_27DAB0920, &qword_22F770B20);
  v57 = (*(v46 + 48))(v55, 1, v45);
  v69 = v38;
  if (v57 == 1)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_22F73F5B0();
    (*(v46 + 8))(v55, v45);
  }

  v42 = v79;
  v44 = v75;
  [v75 setDate_];

  [v44 setGeohash_];
LABEL_24:
  sub_22F73F680();
  v59 = sub_22F73F5B0();
  (*(v46 + 8))(v42, v45);
  [v44 setDateLastUpdated_];

  sub_22F7416A0();
  sub_22F120ADC(v43, &qword_27DAB0920, &qword_22F770B20);
  if (*(a10 + 16))
  {
    LODWORD(v84[0]) = a11 & 0x1010101;
    sub_22F198AF4(a10, v81, v84, a12);
    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
    v60 = sub_22F741410();

    [v44 setSongs_];
  }

  v61 = v81;
  sub_22F1A35D0();
  v84[0] = 0;
  if ([v61 save_])
  {
    v62 = v84[0];
    sub_22F7416A0();
  }

  else
  {
    v63 = v84[0];
    v64 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v65 = sub_22F7420F0();
    v67 = v66;
    sub_22F1A297C();
    swift_allocError();
    *v68 = v65;
    *(v68 + 8) = v67;
    *(v68 + 16) = 0;
    swift_willThrow();
  }

LABEL_4:
  v41 = *MEMORY[0x277D85DE8];
}

void MusicCache.write(songsByDateMap:songSourceIdentifier:songSourceVersion:songSourceCategory:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, unsigned __int8 *a8)
{
  v10 = v8;
  v44 = a7;
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a8;
  v36 = a8[1];
  v37 = v17;
  v18 = a8[2];
  v34 = a8[3];
  v35 = v18;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(v13 + 8);
  v19(v16, v12);
  sub_22F741690();
  if (!v9)
  {
    v20 = sub_22F7416E0();
    v22 = v21;
    v33[1] = v33;
    v23 = *(v8 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v24 = MEMORY[0x28223BE20](v20);
    v25 = v39;
    v33[-14] = v38;
    v33[-13] = v25;
    v26 = v41;
    v33[-12] = v40;
    v33[-11] = v10;
    v28 = v42;
    v27 = v43;
    v33[-10] = v26;
    v33[-9] = v28;
    v33[-8] = v27;
    v33[-7] = v44;
    v33[-6] = v24;
    v44 = v24;
    LOBYTE(v27) = v36;
    LOBYTE(v33[-5]) = v37;
    BYTE1(v33[-5]) = v27;
    LOBYTE(v27) = v34;
    BYTE2(v33[-5]) = v35;
    BYTE3(v33[-5]) = v27;
    v43 = v29;
    v33[-4] = v29;
    v33[-3] = v30;
    v31 = v30;
    v33[-2] = v32;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v19(v16, v12);
  }
}

void sub_22F19D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v104 = a8;
  v100 = a7;
  v103 = a6;
  v99 = a5;
  v121 = a4;
  v120 = a3;
  v119 = a2;
  v97 = a13;
  v98 = a12;
  v111 = a11;
  v132 = a9;
  v134[5] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v101 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v131 = &v97 - v20;
  v133 = sub_22F73F690();
  v21 = *(v133 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v133);
  v129 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v124 = &v97 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E18, &qword_22F7774C0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v117 = &v97 - v31;
  v32 = *(a1 + 64);
  v106 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v118 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v105 = (v33 + 63) >> 6;
  v127 = (v21 + 32);
  v128 = (v21 + 16);
  v115 = "%K == %@ && %K IN %@";
  v114 = (v21 + 56);
  v110 = (a10 >> 8) & 1;
  v102 = (v21 + 48);
  v112 = v21;
  v130 = (v21 + 8);
  v109 = a10 & 1;
  v108 = HIWORD(a10) & 1;
  v107 = HIBYTE(a10) & 1;
  v116 = a1;

  v36 = 0;
  v113 = xmmword_22F7727B0;
  for (i = v30; ; v30 = i)
  {
    if (v35)
    {
      v126 = v14;
      v37 = v36;
      goto LABEL_16;
    }

    if (v105 <= v36 + 1)
    {
      v38 = v36 + 1;
    }

    else
    {
      v38 = v105;
    }

    v39 = v38 - 1;
    do
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v37 >= v105)
      {
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E20, &qword_22F7774C8);
        (*(*(v69 - 8) + 56))(v30, 1, 1, v69);
        v35 = 0;
        goto LABEL_17;
      }

      v35 = *(v106 + 8 * v37);
      ++v36;
    }

    while (!v35);
    v126 = v14;
LABEL_16:
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = v40 | (v37 << 6);
    v42 = v116;
    v43 = v112;
    v44 = v124;
    v45 = v133;
    (*(v112 + 16))(v124, *(v116 + 48) + *(v112 + 72) * v41, v133);
    v46 = *(*(v42 + 56) + 8 * v41);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E20, &qword_22F7774C8);
    v48 = *(v47 + 48);
    v49 = *(v43 + 32);
    v30 = i;
    v49(i, v44, v45);
    *&v30[v48] = v46;
    (*(*(v47 - 8) + 56))(v30, 0, 1, v47);

    v39 = v37;
    v14 = v126;
LABEL_17:
    v50 = v117;
    sub_22F1207AC(v30, v117, &qword_27DAB1E18, &qword_22F7774C0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E20, &qword_22F7774C8);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {

      v88 = *(v121 + v118);
      sub_22F1A35D0();
      if (!v14)
      {
        v134[0] = 0;
        if ([v88 save_])
        {
          v89 = v134[0];
          sub_22F7416A0();
        }

        else
        {
          v91 = v134[0];
          v92 = sub_22F73F370();

          swift_willThrow();
          swift_getErrorValue();
          v93 = sub_22F7420F0();
          v95 = v94;
          sub_22F1A297C();
          swift_allocError();
          *v96 = v93;
          *(v96 + 8) = v95;
          *(v96 + 16) = 0;
          swift_willThrow();
        }
      }

      goto LABEL_48;
    }

    v122 = v39;
    v126 = *(v50 + *(v51 + 48));
    v52 = v129;
    v53 = v133;
    (*v127)(v129, v50, v133);
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v54 = swift_allocObject();
    *(v54 + 16) = v113;
    v55 = MEMORY[0x277D837D0];
    *(v54 + 56) = MEMORY[0x277D837D0];
    v56 = sub_22F153470();
    *(v54 + 32) = 0x696669746E656469;
    *(v54 + 40) = 0xEA00000000007265;
    *(v54 + 96) = v55;
    *(v54 + 104) = v56;
    v57 = v119;
    *(v54 + 64) = v56;
    *(v54 + 72) = v57;
    *(v54 + 80) = v120;
    *(v54 + 136) = v55;
    *(v54 + 144) = v56;
    *(v54 + 112) = 1702125924;
    *(v54 + 120) = 0xE400000000000000;

    v58 = sub_22F73F5B0();
    *(v54 + 176) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
    *(v54 + 184) = sub_22F15FD58();
    *(v54 + 152) = v58;
    v59 = sub_22F741560();
    v60 = *(v121 + v118);
    v61 = v131;
    (*v128)(v131, v52, v53);
    (*v114)(v61, 0, 1, v53);
    sub_22F741690();
    if (v14)
    {

      goto LABEL_47;
    }

    v62 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v63 = sub_22F740DF0();

    v64 = [v62 initWithEntityName_];

    v125 = v59;
    [v64 setPredicate_];
    v65 = type metadata accessor for SongSourceEntry();
    v66 = sub_22F7417B0();
    sub_22F741690();
    v14 = 0;
    if (v66 >> 62)
    {
      if (!sub_22F741A00())
      {
        goto LABEL_27;
      }

LABEL_21:
      if ((v66 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x2319016F0](0, v66);
        goto LABEL_24;
      }

      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v67 = *(v66 + 32);
LABEL_24:
        v68 = v67;

        goto LABEL_38;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_27:

    v70 = objc_opt_self();

    v71 = sub_22F740DF0();

    v72 = [v70 entityForName:v71 inManagedObjectContext:v60];

    if (!v72)
    {
      break;
    }

    v68 = [objc_allocWithZone(v65) initWithEntity:v72 insertIntoManagedObjectContext:v60];

    v73 = sub_22F740DF0();
    [v68 setIdentifier_];

    if (v103)
    {
      v74 = sub_22F740DF0();
    }

    else
    {
      v74 = 0;
    }

    v75 = v101;
    [v68 setVersion_];

    if (v104)
    {
      v76 = sub_22F740DF0();
    }

    else
    {
      v76 = 0;
    }

    [v68 setCategory_];

    sub_22F13BA9C(v131, v75, &qword_27DAB0920, &qword_22F770B20);
    v77 = v133;
    if ((*v102)(v75, 1, v133) == 1)
    {
      v78 = 0;
    }

    else
    {
      v78 = sub_22F73F5B0();
      (*v130)(v75, v77);
    }

    [v68 setDate_];

    [v68 setGeohash_];
LABEL_38:
    v79 = v124;
    sub_22F73F680();
    v80 = sub_22F73F5B0();
    v81 = *v130;
    (*v130)(v79, v133);
    [v68 setDateLastUpdated_];

    sub_22F7416A0();
    sub_22F120ADC(v131, &qword_27DAB0920, &qword_22F770B20);
    v82 = v126;
    v83 = *(v126 + 16);
    if (!v83)
    {
      v81(v129, v133);

      goto LABEL_5;
    }

    v84 = sub_22F10B35C(*(v126 + 16), 0);
    v85 = *(type metadata accessor for Song() - 8);
    v86 = sub_22F11A7BC(v134, v84 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v83, v82);
    sub_22F0FF590();
    if (v86 != v83)
    {
      goto LABEL_52;
    }

    LOBYTE(v134[0]) = v109;
    BYTE1(v134[0]) = v110;
    BYTE2(v134[0]) = v108;
    BYTE3(v134[0]) = v107;
    sub_22F198AF4(v84, v60, v134, v111);

    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
    v87 = sub_22F741410();

    [v68 setSongs_];

    v81(v129, v133);
LABEL_5:
    v36 = v122;
  }

  sub_22F162D98();
  swift_allocError();
  swift_willThrow();

  v59 = v64;
  v53 = v133;
LABEL_47:

  sub_22F120ADC(v131, &qword_27DAB0920, &qword_22F770B20);
  (*v130)(v129, v53);
LABEL_48:
  v90 = *MEMORY[0x277D85DE8];
}

uint64_t MusicCache.read(songSourceIdentifier:dates:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v35 = a5;
  v38 = sub_22F740AD0();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v33 = a4[1];
  v34 = v13;
  LODWORD(v13) = *(a4 + 16);
  v31 = *(a4 + 17);
  v32 = v13;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F7727B0;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v16 = sub_22F153470();
  *(v14 + 32) = 0x696669746E656469;
  *(v14 + 40) = 0xEA00000000007265;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 64) = v16;
  *(v14 + 72) = a1;
  *(v14 + 80) = a2;
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  *(v14 + 112) = 1702125924;
  *(v14 + 120) = 0xE400000000000000;

  v17 = sub_22F161070(a3);
  *(v14 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DB8, &unk_22F7771C0);
  *(v14 + 184) = sub_22F16BC6C(&qword_2810A92A0, &qword_27DAB1DB8, &unk_22F7771C0);
  *(v14 + 152) = v17;
  v18 = sub_22F741560();
  v19 = v18;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v20 = *(v9 + 8);
  v30 = v9 + 8;
  v20(v12, v38);
  v21 = sub_22F7416B0();
  v23 = v22;
  v39 = MEMORY[0x277D84F90];
  v24 = *(v36 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v25 = MEMORY[0x28223BE20](v21);
  *(&v30 - 10) = v18;
  *(&v30 - 9) = v26;
  *(&v30 - 8) = v25;
  *(&v30 - 7) = v23;
  *(&v30 - 6) = 0;
  *(&v30 - 5) = &v39;
  v27 = v33;
  *(&v30 - 4) = v34;
  *(&v30 - 3) = v27;
  LOBYTE(v27) = v31;
  *(&v30 - 16) = v32;
  *(&v30 - 15) = v27;
  v28 = v37;
  sub_22F7417A0();
  if (v28)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v20(v12, v38);
    return v39;
  }
}

uint64_t MusicCache.read(songSourceIdentifier:date:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v37 = a1;
  v8 = sub_22F740AD0();
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v40 = *(a4 + 8);
  v41 = v13;
  LODWORD(v13) = *(a4 + 16);
  v38 = *(a4 + 17);
  v39 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06E0, &qword_22F7711B0);
  v14 = sub_22F73F690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22F771340;
  (*(v15 + 16))(v18 + v17, a3, v14);
  v36 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22F7727B0;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22F153470();
  *(v19 + 32) = 0x696669746E656469;
  *(v19 + 40) = 0xEA00000000007265;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  v22 = v37;
  *(v19 + 64) = v21;
  *(v19 + 72) = v22;
  *(v19 + 80) = a2;
  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  *(v19 + 112) = 1702125924;
  *(v19 + 120) = 0xE400000000000000;

  v23 = sub_22F161070(v18);
  swift_setDeallocating();
  (*(v15 + 8))(v18 + v17, v14);
  swift_deallocClassInstance();
  *(v19 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DB8, &unk_22F7771C0);
  *(v19 + 184) = sub_22F16BC6C(&qword_2810A92A0, &qword_27DAB1DB8, &unk_22F7771C0);
  *(v19 + 152) = v23;
  v24 = sub_22F741560();
  v25 = v24;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v26 = *(v46 + 8);
  v46 += 8;
  v26(v12, v45);
  v27 = sub_22F7416B0();
  v29 = v28;
  v47 = MEMORY[0x277D84F90];
  v30 = *(v43 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v31 = MEMORY[0x28223BE20](v27);
  *(&v36 - 10) = v24;
  *(&v36 - 9) = v32;
  *(&v36 - 8) = v31;
  *(&v36 - 7) = v29;
  *(&v36 - 6) = 0;
  *(&v36 - 5) = &v47;
  v33 = v40;
  *(&v36 - 4) = v41;
  *(&v36 - 3) = v33;
  LOBYTE(v33) = v38;
  *(&v36 - 16) = v39;
  *(&v36 - 15) = v33;
  v34 = v44;
  sub_22F7417A0();
  if (v34)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v26(v12, v45);
    return v47;
  }
}

void MusicCache.removeSongSource(songSourceIdentifier:date:progressReporter:)(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F7727B0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v7 = sub_22F153470();
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = 1702125924;
  *(v5 + 120) = 0xE400000000000000;

  v8 = sub_22F73F5B0();
  *(v5 + 176) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v5 + 184) = sub_22F15FD58();
  *(v5 + 152) = v8;
  v9 = sub_22F741560();
  sub_22F741690();
  if (v2)
  {
  }

  else
  {
    v10 = sub_22F7416F0();
    v11 = *(v17 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v10);
    sub_22F7417A0();
  }
}

uint64_t MusicCache.readSongSources(identifiersAndDates:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v36[1] = a2;
  v3 = sub_22F73F690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC0, &qword_22F7711C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = v36 - v15;
  v17 = MEMORY[0x277D84FA0];
  v44 = MEMORY[0x277D84FA0];
  v43 = MEMORY[0x277D84FA0];
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v39 = (v4 + 8);
    v40 = v20;
    v37 = v13;
    v38 = v7;
    do
    {
      v41 = v18;
      sub_22F13BA9C(v19, v16, &qword_27DAB1DC0, &qword_22F7711C0);
      sub_22F13BA9C(v16, v11, &qword_27DAB1DC0, &qword_22F7711C0);
      v21 = v3;
      v22 = v37;
      v23 = *(v37 + 48);
      sub_22F10BBDC(&v42, *v11, v11[1]);

      v24 = *v39;
      v25 = v11 + v23;
      v3 = v21;
      v26 = v38;
      (*v39)(v25, v3);
      sub_22F13BA9C(v16, v11, &qword_27DAB1DC0, &qword_22F7711C0);
      v27 = v11[1];

      sub_22F10C984(v26, v11 + *(v22 + 48));
      v24(v26, v3);
      sub_22F120ADC(v16, &qword_27DAB1DC0, &qword_22F7711C0);
      v19 += v40;
      v18 = v41 - 1;
    }

    while (v41 != 1);
    v28 = v44;
    v17 = v43;
  }

  else
  {
    v28 = MEMORY[0x277D84FA0];
  }

  v41 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22F7727B0;
  v30 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  v31 = sub_22F153470();
  *(v29 + 64) = v31;
  *(v29 + 32) = 0x696669746E656469;
  *(v29 + 40) = 0xEA00000000007265;
  *(v29 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  v32 = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0);
  *(v29 + 72) = v28;
  *(v29 + 136) = v30;
  *(v29 + 144) = v31;
  *(v29 + 104) = v32;
  *(v29 + 112) = 1702125924;
  *(v29 + 120) = 0xE400000000000000;
  *(v29 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC8, &unk_22F7771D0);
  *(v29 + 184) = sub_22F16BC6C(&qword_2810A9260, &qword_27DAB1DC8, &unk_22F7771D0);
  *(v29 + 152) = v17;

  v33 = sub_22F741560();
  v34 = sub_22F1935BC();

  return v34;
}

PhotosGraph::MusicCache::LocationTolerance_optional __swiftcall MusicCache.LocationTolerance.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22F19F418()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1 + 1);
  return sub_22F7421D0();
}

uint64_t sub_22F19F490()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1 + 1);
  return sub_22F7421D0();
}

uint64_t MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:location:date:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, unsigned __int8 *a10)
{
  v60 = a4;
  v63 = a6;
  v64 = a7;
  v61 = a5;
  v62 = a1;
  v57 = a2;
  v58 = a3;
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a10;
  v55 = a10[1];
  v56 = v17;
  v18 = a10[2];
  v53 = a10[3];
  v54 = v18;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(v13 + 8);
  v19(v16, v12);
  result = sub_22F741690();
  if (!v10)
  {
    v48[0] = v19;
    v52 = a9;
    v65 = 0;
    v49 = sub_22F7416E0();
    v50 = v21;
    v23 = v22;
    v51 = v24;
    type metadata accessor for Geohash();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;
    [a8 coordinate];
    v27 = v26;
    [a8 coordinate];
    v29 = a8;
    v30 = sub_22F34AF8C(7, v27, v28);
    v32 = v31;
    swift_setDeallocating();
    v33 = *(inited + 16);

    v34 = *(inited + 24);

    v48[1] = v48;
    v36 = *(v59 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v35);
    v38 = v57;
    v37 = v58;
    v48[-18] = v39;
    v48[-17] = v38;
    v48[-16] = v37;
    v48[-15] = v30;
    v40 = v52;
    v48[-14] = v32;
    v48[-13] = v40;
    v41 = v61;
    v48[-12] = v60;
    v48[-11] = v41;
    v42 = v64;
    v48[-10] = v63;
    v48[-9] = v42;
    v48[-8] = v29;
    v43 = v49;
    v44 = v62;
    v48[-7] = v49;
    v48[-6] = v44;
    LOBYTE(v44) = v55;
    LOBYTE(v48[-5]) = v56;
    BYTE1(v48[-5]) = v44;
    LOBYTE(v44) = v53;
    BYTE2(v48[-5]) = v54;
    BYTE3(v48[-5]) = v44;
    v64 = v23;
    v48[-4] = v23;
    v45 = v51;
    v48[-3] = v51;
    v46 = v50;
    v48[-2] = v50;
    v47 = v65;
    sub_22F7417A0();
    v65 = v47;
    if (v47)
    {
    }

    else
    {

      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();

      return (v48[0])(v16, v12);
    }
  }

  return result;
}

uint64_t MusicCache.write(songs:songSourceIdentifier:songSourceVersion:songSourceCategory:location:locationTolerance:date:writeOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned __int8 *a9, uint64_t a10, unsigned __int8 *a11)
{
  v63 = a4;
  v67 = a7;
  v68 = a8;
  v65 = a1;
  v66 = a6;
  v64 = a5;
  v60 = a2;
  v61 = a3;
  v12 = sub_22F740AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a9;
  v18 = *a11;
  v58 = a11[1];
  v59 = v18;
  v19 = a11[2];
  v56 = a11[3];
  v57 = v19;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v20 = *(v13 + 8);
  v20(v16, v12);
  result = sub_22F741690();
  if (!v11)
  {
    v50 = v20;
    v55 = a10;
    v69 = 0;
    v52 = sub_22F7416E0();
    v53 = v22;
    v24 = v23;
    v54 = v25;
    type metadata accessor for Geohash();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;
    v27 = v68;
    [v68 coordinate];
    v29 = v28;
    [v27 coordinate];
    v31 = sub_22F34AF8C(v17 + 1, v29, v30);
    v33 = v32;
    swift_setDeallocating();
    v34 = *(inited + 16);

    v35 = *(inited + 24);

    v51 = &v49;
    v37 = *(v62 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v36);
    v39 = v60;
    v38 = v61;
    *(&v49 - 18) = v40;
    *(&v49 - 17) = v39;
    *(&v49 - 16) = v38;
    *(&v49 - 15) = v31;
    v41 = v55;
    *(&v49 - 14) = v33;
    *(&v49 - 13) = v41;
    v42 = v64;
    *(&v49 - 12) = v63;
    *(&v49 - 11) = v42;
    v43 = v67;
    *(&v49 - 10) = v66;
    *(&v49 - 9) = v43;
    *(&v49 - 8) = v27;
    v44 = v52;
    v45 = v65;
    *(&v49 - 7) = v52;
    *(&v49 - 6) = v45;
    LOBYTE(v45) = v58;
    *(&v49 - 40) = v59;
    *(&v49 - 39) = v45;
    LOBYTE(v45) = v56;
    *(&v49 - 38) = v57;
    *(&v49 - 37) = v45;
    v68 = v24;
    *(&v49 - 4) = v24;
    v46 = v54;
    *(&v49 - 3) = v54;
    v47 = v53;
    *(&v49 - 2) = v53;
    v48 = v69;
    sub_22F7417A0();
    v69 = v48;
    if (v48)
    {
    }

    else
    {

      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();

      return v50(v16, v12);
    }
  }

  return result;
}

void sub_22F19FC60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15)
{
  v88 = a5;
  v81 = a8;
  v78 = a7;
  v89 = a1;
  v90 = a12;
  v91[1] = *MEMORY[0x277D85DE8];
  v19 = sub_22F73F690();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v84 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v82 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v74 - v27;
  v29 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v85 = "N %@ && %K IN %@";
  v86 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22F777170;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  v32 = sub_22F153470();
  *(v30 + 32) = 0x696669746E656469;
  *(v30 + 40) = 0xEA00000000007265;
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 64) = v32;
  *(v30 + 72) = a2;
  v79 = a2;
  *(v30 + 80) = a3;
  *(v30 + 136) = v31;
  *(v30 + 144) = v32;
  *(v30 + 112) = 0x687361686F6567;
  *(v30 + 120) = 0xE700000000000000;
  *(v30 + 176) = v31;
  *(v30 + 184) = v32;
  v83 = a4;
  v33 = v88;
  *(v30 + 152) = a4;
  *(v30 + 160) = v33;
  *(v30 + 216) = v31;
  *(v30 + 224) = v32;
  *(v30 + 192) = 1702125924;
  *(v30 + 200) = 0xE400000000000000;
  v80 = a3;

  v34 = sub_22F73F5B0();
  *(v30 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v30 + 264) = sub_22F15FD58();
  *(v30 + 232) = v34;
  v35 = sub_22F741560();
  v36 = *(v89 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  (*(v20 + 16))(v28, a6, v19);
  (*(v20 + 56))(v28, 0, 1, v19);
  v37 = v87;
  sub_22F741690();
  if (v37)
  {
    v38 = v28;
LABEL_4:

    sub_22F120ADC(v38, &qword_27DAB0920, &qword_22F770B20);
    goto LABEL_5;
  }

  v86 = v20;
  v87 = v28;
  v85 = v19;
  v39 = v35;
  v40 = v36;
  v41 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v42 = sub_22F740DF0();

  v43 = [v41 initWithEntityName_];

  [v43 setPredicate_];
  v44 = type metadata accessor for SongSourceEntry();
  v45 = sub_22F7417B0();
  sub_22F741690();
  v47 = v45;
  if (v45 >> 62)
  {
    v53 = sub_22F741A00();
    v47 = v45;
    v48 = v84;
    if (v53)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v48 = v84;
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      v77 = v43;
      if ((v47 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x2319016F0](0, v47);

        v51 = v85;
        v49 = v87;
      }

      else
      {
        v49 = v87;
        if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v50 = *(v47 + 32);

        v51 = v85;
      }

      v52 = v86;
      goto LABEL_25;
    }
  }

  v76 = v39;

  v54 = objc_opt_self();

  v55 = sub_22F740DF0();

  v56 = [v54 entityForName:v55 inManagedObjectContext:v40];

  if (!v56)
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();

    v35 = v43;
    v38 = v87;
    goto LABEL_4;
  }

  v75 = a10;
  v57 = [objc_allocWithZone(v44) initWithEntity:v56 insertIntoManagedObjectContext:v40];

  v58 = sub_22F740DF0();
  v80 = v57;
  [v57 setIdentifier_];

  v49 = v87;
  v39 = v76;
  if (v81)
  {
    v59 = sub_22F740DF0();
  }

  else
  {
    v59 = 0;
  }

  v60 = v82;
  [v80 setVersion_];

  v51 = v85;
  v52 = v86;
  if (v75)
  {
    v61 = sub_22F740DF0();
  }

  else
  {
    v61 = 0;
  }

  [v80 setCategory_];

  sub_22F13BA9C(v49, v60, &qword_27DAB0920, &qword_22F770B20);
  v62 = (*(v52 + 48))(v60, 1, v51);
  v77 = v43;
  if (v62 == 1)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_22F73F5B0();
    (*(v52 + 8))(v60, v51);
  }

  v48 = v84;
  v50 = v80;
  [v80 setDate_];

  v64 = sub_22F740DF0();
  [v50 setGeohash_];

LABEL_25:
  sub_22F73F680();
  v65 = sub_22F73F5B0();
  (*(v52 + 8))(v48, v51);
  [v50 setDateLastUpdated_];

  sub_22F7416A0();
  sub_22F120ADC(v49, &qword_27DAB0920, &qword_22F770B20);
  if (*(a13 + 16))
  {
    LODWORD(v91[0]) = a14 & 0x1010101;
    sub_22F198AF4(a13, v40, v91, a15);
    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
    v66 = sub_22F741410();

    [v50 setSongs_];
  }

  sub_22F1A35D0();
  v91[0] = 0;
  if ([v40 save_])
  {
    v67 = v91[0];
    sub_22F7416A0();
  }

  else
  {
    v68 = v91[0];
    v69 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v70 = sub_22F7420F0();
    v72 = v71;
    sub_22F1A297C();
    swift_allocError();
    *v73 = v70;
    *(v73 + 8) = v72;
    *(v73 + 16) = 0;
    swift_willThrow();
  }

LABEL_5:
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t MusicCache.read(songSourceIdentifier:location:date:progressReporter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [a3 coordinate];
  v12 = v11;
  [a3 coordinate];
  v14 = sub_22F34AF8C(7, v12, v13);
  v16 = v15;
  swift_setDeallocating();
  v17 = *(inited + 16);

  v18 = *(inited + 24);

  v19 = MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(a1, a2, v14, v16, a4, a5);

  return v19;
}

uint64_t MusicCache.read(songSourceIdentifier:location:locationTolerance:date:progressReporter:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [a3 coordinate];
  v14 = v13;
  [a3 coordinate];
  v16 = sub_22F34AF8C(v11 + 1, v14, v15);
  v18 = v17;
  swift_setDeallocating();
  v19 = *(inited + 16);

  v20 = *(inited + 24);

  v21 = MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(a1, a2, v16, v18, a5, a6);

  return v21;
}

uint64_t MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[0] = a5;
  v30[1] = a6;
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22F777170;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = sub_22F153470();
  *(v15 + 32) = 0x696669746E656469;
  *(v15 + 40) = 0xEA00000000007265;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = a1;
  *(v15 + 80) = a2;
  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = 0x687361686F6567;
  *(v15 + 120) = 0xE700000000000000;
  *(v15 + 176) = v16;
  *(v15 + 184) = v17;
  *(v15 + 152) = a3;
  *(v15 + 160) = a4;
  *(v15 + 216) = v16;
  *(v15 + 224) = v17;
  *(v15 + 192) = 1702125924;
  *(v15 + 200) = 0xE400000000000000;

  v18 = sub_22F73F5B0();
  *(v15 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v15 + 264) = sub_22F15FD58();
  *(v15 + 232) = v18;
  v19 = sub_22F741560();
  v20 = v19;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v21 = *(v32 + 8);
  v32 += 8;
  v21(v14, v31);
  v22 = sub_22F7416B0();
  v24 = v23;
  v33 = MEMORY[0x277D84F90];
  v25 = *(v30[2] + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v26 = MEMORY[0x28223BE20](v22);
  v30[-10] = v19;
  v30[-9] = v27;
  v30[-8] = v26;
  v30[-7] = v24;
  v30[-6] = 0;
  v30[-5] = &v33;
  v30[-4] = 0;
  v30[-3] = 0;
  LOWORD(v30[-2]) = 1;
  v28 = v30[3];
  sub_22F7417A0();
  if (v28)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v21(v14, v31);
    return v33;
  }
}

uint64_t MusicCache.readSongSources(identifiersDatesAndLocations:locationTolerance:progressReporter:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v39[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1018, &qword_22F771448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v10 = (v39 - v9);
  v11 = *a2;
  v12 = MEMORY[0x277D84FA0];
  v44 = MEMORY[0x277D84FA0];
  v45 = MEMORY[0x277D84FA0];
  v43 = MEMORY[0x277D84FA0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    v40 = v7;
    v41 = v15;
    do
    {
      sub_22F13BA9C(v14, v10, &qword_27DAB1018, &qword_22F771448);
      v16 = *v10;
      v17 = v10[1];
      v18 = *(v40 + 48);
      v19 = *(v10 + *(v40 + 64));

      sub_22F10BBDC(&v42, v16, v17);

      v20 = sub_22F73F5B0();
      sub_22F10CC64(&v42, v20);

      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [v19 coordinate];
      v23 = v22;
      [v19 coordinate];
      v25 = sub_22F34AF8C(v11 + 1, v23, v24);
      v27 = v26;
      swift_setDeallocating();
      v28 = *(inited + 16);

      v29 = *(inited + 24);

      sub_22F10BBDC(&v42, v25, v27);

      sub_22F120ADC(v10, &qword_27DAB1018, &qword_22F771448);
      v14 += v41;
      --v13;
    }

    while (v13);
    v30 = v45;
    v41 = v44;
    v12 = v43;
  }

  else
  {
    v41 = MEMORY[0x277D84FA0];
    v30 = MEMORY[0x277D84FA0];
  }

  v40 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v39[1] = "EGINSWITH %@ && %K == %@";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22F777170;
  v32 = MEMORY[0x277D837D0];
  *(v31 + 56) = MEMORY[0x277D837D0];
  v33 = sub_22F153470();
  *(v31 + 64) = v33;
  *(v31 + 32) = 0x696669746E656469;
  *(v31 + 40) = 0xEA00000000007265;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v31 + 96) = v34;
  v35 = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0);
  *(v31 + 72) = v30;
  *(v31 + 136) = v32;
  *(v31 + 144) = v33;
  *(v31 + 104) = v35;
  *(v31 + 112) = 0x687361686F6567;
  *(v31 + 120) = 0xE700000000000000;
  *(v31 + 176) = v34;
  *(v31 + 184) = v35;
  *(v31 + 152) = v41;
  *(v31 + 216) = v32;
  *(v31 + 224) = v33;
  *(v31 + 192) = 1702125924;
  *(v31 + 200) = 0xE400000000000000;
  *(v31 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1DD0, &qword_22F7771E0);
  *(v31 + 264) = sub_22F16BC6C(&unk_2810A9228, &unk_27DAB1DD0, &qword_22F7771E0);
  *(v31 + 232) = v12;

  v36 = sub_22F741560();
  v37 = sub_22F1935BC();

  return v37;
}

void MusicCache.removeSongSource(songSourceIdentifier:location:locationTolerance:date:progressReporter:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v7 = *a4;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [a3 coordinate];
  v10 = v9;
  [a3 coordinate];
  v12 = sub_22F34AF8C(v7 + 1, v10, v11);
  v14 = v13;
  swift_setDeallocating();
  v15 = *(inited + 16);

  v16 = *(inited + 24);

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F777170;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = sub_22F153470();
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 64) = v19;
  *(v17 + 72) = a1;
  *(v17 + 80) = a2;
  *(v17 + 136) = v18;
  *(v17 + 144) = v19;
  *(v17 + 112) = 0x687361686F6567;
  *(v17 + 120) = 0xE700000000000000;
  *(v17 + 176) = v18;
  *(v17 + 184) = v19;
  *(v17 + 152) = v12;
  *(v17 + 160) = v14;
  *(v17 + 216) = v18;
  *(v17 + 224) = v19;
  *(v17 + 192) = 1702125924;
  *(v17 + 200) = 0xE400000000000000;

  v20 = sub_22F73F5B0();
  *(v17 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v17 + 264) = sub_22F15FD58();
  *(v17 + 232) = v20;
  v21 = sub_22F741560();
  sub_22F741690();
  if (v25)
  {
  }

  else
  {
    v22 = sub_22F7416F0();
    v23 = *(v24 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v22);
    sub_22F7417A0();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicCache.status()()
{
  v2 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  sub_22F7417A0();
  if (v1)
  {
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_22F1A1314(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v4 = sub_22F740DF0();

  v5 = [v3 initWithEntityName_];

  v6 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongSourceEntry();
  v7 = sub_22F7417B0();
  v8 = v1;
  if (v1)
  {

    return;
  }

  v9 = v7;
  sub_22F741B00();

  v47 = 0xD000000000000012;
  v48 = 0x800000022F790420;
  v45 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_55;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v11 = sub_22F742010();
  MEMORY[0x231900B10](v11);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  MEMORY[0x231900B10](v47, v48);

  type metadata accessor for SongEntry();
  v12 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DF8, &qword_22F7774B8);
  v13 = sub_22F7417B0();
  if (v8)
  {

    return;
  }

  v14 = v13;
  v46 = v9;
  v9 = v13 >> 62;
  v43 = v12;
  if (v13 >> 62)
  {
    sub_22F741A00();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22F741B00();

  v48 = 0x800000022F790440;
  v16 = sub_22F742010();
  MEMORY[0x231900B10](v16);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F790440);

  if (v9)
  {

    v18 = sub_22F741D50();
    swift_bridgeObjectRelease_n();
    v14 = v18;
  }

  else
  {
    v17 = v14 & 0xFFFFFFFFFFFFFF8;

    sub_22F742060();
    if (swift_dynamicCastMetatype() || (v41 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_11:
    }

    else
    {
      v9 = v17 + 32;
      while (1)
      {
        v42 = *v9;
        if (!swift_dynamicCastClass())
        {
          break;
        }

        v9 += 8;
        if (!--v41)
        {
          goto LABEL_11;
        }
      }

      v14 = v17 | 1;
    }
  }

  v44 = v5;
  v47 = MEMORY[0x277D84F90];
  v5 = (v14 & 0xFFFFFFFFFFFFFF8);
  if (v14 >> 62)
  {
    v19 = sub_22F741A00();
  }

  else
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (v19 != v20)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x2319016F0](v20, v14);
    }

    else
    {
      if (v20 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v22 = *(v14 + 8 * v20 + 32);
    }

    v9 = v22;
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_22F741A00();
      goto LABEL_5;
    }

    v23 = [v22 preferenceScore];

    ++v20;
    if (v23)
    {
      MEMORY[0x231900D00]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      v21 = v47;
      v20 = v8;
    }
  }

  if (v21 >> 62)
  {
    sub_22F741A00();
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F790460);
  sub_22F7413B0();
  MEMORY[0x231900B10](657957, 0xE300000000000000);
  MEMORY[0x231900B10](0, 0xE000000000000000);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F790480);
  if (v45)
  {
    v25 = v46;
    v26 = sub_22F741A00();
    if (!v26)
    {
LABEL_46:

      return;
    }
  }

  else
  {
    v25 = v46;
    v26 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_46;
    }
  }

  if (v26 >= 1)
  {
    v27 = 0;
    v28 = v25 & 0xC000000000000001;
    do
    {
      if (v28)
      {
        v29 = MEMORY[0x2319016F0](v27, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 identifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_22F740E20();
        v35 = v34;

        v36 = [v30 songs];
        if (v36)
        {
          v37 = v36;
          sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry);
          v38 = sub_22F741420();

          if ((v38 & 0xC000000000000001) != 0)
          {
            sub_22F741A00();
          }

          else
          {
            v39 = *(v38 + 16);
          }

          MEMORY[0x231900B10](v33, v35);

          MEMORY[0x231900B10](8250, 0xE200000000000000);
          v40 = sub_22F742010();
          MEMORY[0x231900B10](v40);

          MEMORY[0x231900B10](10, 0xE100000000000000);
          MEMORY[0x231900B10](9, 0xE100000000000000);

          v25 = v46;
        }

        else
        {

          v25 = v46;
        }
      }

      else
      {
      }

      ++v27;
    }

    while (v26 != v27);
    goto LABEL_46;
  }

  __break(1u);
}

id sub_22F1A1BBC(uint64_t a1)
{
  v29 = a1;
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22F73F470();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  type metadata accessor for MusicCache();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_22F740DF0();
  v13 = sub_22F740DF0();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (v14)
  {
    sub_22F73F430();

    (*(v3 + 32))(v9, v7, v2);
    v14 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v15 = sub_22F73F3F0();
    v16 = [v14 initWithContentsOfURL_];

    if (v16)
    {
      v27[1] = v1;
      v28 = v2;
      v14 = [objc_allocWithZone(MEMORY[0x277CBE4D8]) initWithManagedObjectModel_];
      v17 = *MEMORY[0x277CBE2E8];
      v18 = sub_22F73F3F0();
      if (qword_2810AC288 != -1)
      {
        swift_once();
      }

      sub_22F213728(qword_2810AC290);
      v19 = sub_22F740C80();

      v30[0] = 0;
      v20 = [v14 addPersistentStoreWithType:v17 configuration:0 URL:v18 options:v19 error:v30];

      if (v20)
      {
        v21 = v30[0];
      }

      else
      {
        v24 = v30[0];
        sub_22F73F370();

        swift_willThrow();
      }

      (*(v3 + 8))(v9, v28);
    }

    else
    {
      sub_22F1A297C();
      swift_allocError();
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v23 + 16) = 2;
      swift_willThrow();

      (*(v3 + 8))(v9, v2);
    }
  }

  else
  {
    sub_22F1A297C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 2;
    swift_willThrow();
  }

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

char *sub_22F1A1FCC(uint64_t a1)
{
  v3 = sub_22F73F470();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6, a1);
  v8 = objc_allocWithZone(type metadata accessor for MusicCache());
  v9 = sub_22F192688(v6);
  if (!v1)
  {
    if (qword_2810A9BF8[0] != -1)
    {
      swift_once();
    }

    v10 = qword_2810B4EA8;
    *&v11 = CACurrentMediaTime();
    v29 = v10;
    sub_22F1B560C("MusicCacheReadInfo", 18, 2u, v11, 0, v10, &v34);
    sub_22F1A2878(v33);
    v12 = memcpy(v32, v33, sizeof(v32));
    v28 = OBJC_IVAR___PGMusicCache_managedObjectContext;
    v13 = *&v9[OBJC_IVAR___PGMusicCache_managedObjectContext];
    MEMORY[0x28223BE20](v12);
    *&v27[-16] = v9;
    *&v27[-8] = v32;
    sub_22F7417A0();
    sub_22F1B2BBC(0);

    memcpy(v30, v32, 0x130uLL);
    memcpy(v31, v32, sizeof(v31));
    if (sub_22F1A3BE4(v31) == 1)
    {
      v14 = 0x6E776F6E6B6E55;
      v15 = 0xE700000000000000;
    }

    else
    {
      v14 = v31[0];
      v15 = v31[1];

      sub_22F120ADC(v30, &unk_27DAB1D90, &qword_22F7771A8);
      if (v14 == 56 && v15 == 0xE100000000000000)
      {
        goto LABEL_7;
      }
    }

    if (sub_22F742040())
    {
LABEL_7:

      return v9;
    }

    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4DC0);

    v17 = sub_22F740B70();
    v18 = sub_22F7415E0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v32[0] = v20;
      *v19 = 136315394;
      v21 = sub_22F145F20(v14, v15, v32);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_22F145F20(56, 0xE100000000000000, v32);
      _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] Cache version on disk %s does not equal version in code %s: removing all content from the cache.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v20, -1, -1);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    else
    {
    }

    v22 = [objc_opt_self() ignoreProgress];
    MusicCache.removeAll(progressReporter:)();

    sub_22F1A3B10(v32);
    memcpy(v37, v32, sizeof(v37));
    v36[0] = 56;
    v36[1] = 0xE100000000000000;
    *&v23 = CACurrentMediaTime();
    v24 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v23, 0, v29, &v35);
    v25 = *&v9[v28];
    MEMORY[0x28223BE20](v24);
    *&v27[-16] = v9;
    *&v27[-8] = v36;
    sub_22F7417A0();
    sub_22F1B2BBC(0);

    sub_22F1A3B90(v36);
  }

  return v9;
}

char *sub_22F1A26E0(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22F73F470();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0;
  v8 = [a1 urlForApplicationDataFolderIdentifier:1 error:v16];
  v9 = v16[0];
  if (v8)
  {
    v10 = v8;
    sub_22F73F430();
    v11 = v9;

    v12 = sub_22F1A1FCC(v7);
    if (!v1)
    {
      v9 = v12;
    }

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v13 = v16[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

double sub_22F1A2878(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_22F1A28C4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  sub_22F192984(v0[2]);
}

unint64_t sub_22F1A297C()
{
  result = qword_27DAB1DA8;
  if (!qword_27DAB1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1DA8);
  }

  return result;
}

void sub_22F1A29F0()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_22F1969BC(v0[2], v0[3]);
}

uint64_t sub_22F1A2A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F1A2AA8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  sub_22F19AAC4(v0[2], v0[3]);
}

void sub_22F1A2B1C()
{
  if (*(v0 + 99))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 98))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 97))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 120);
  sub_22F19CAA4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v3 | *(v0 + 96) | v2 | v1, *(v0 + 104));
}

uint64_t sub_22F1A2BD4(uint64_t (*a1)(void, void, void, void, void, void, void, void, void, unsigned int, void, void, void))
{
  if (*(v1 + 91))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 90))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 89))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), v4 | *(v1 + 88) | v3 | v2, *(v1 + 96), *(v1 + 104), *(v1 + 112));
}

void sub_22F1A2C80()
{
  if (*(v0 + 123))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 122))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 121))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 144);
  sub_22F19FC60(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), v3 | *(v0 + 120) | v2 | v1, *(v0 + 128));
}

void sub_22F1A2D14()
{
  if (*(v0 + 81))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  sub_22F198724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1 | *(v0 + 80), SHIBYTE(v1));
}

void sub_22F1A2D60()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_22F193238(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

unint64_t sub_22F1A2DB8()
{
  result = qword_27DAB1DE0;
  if (!qword_27DAB1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1DE0);
  }

  return result;
}

unint64_t sub_22F1A2E10()
{
  result = qword_27DAB1DE8;
  if (!qword_27DAB1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1DE8);
  }

  return result;
}

uint64_t type metadata accessor for MusicCache()
{
  result = qword_2810AC268;
  if (!qword_2810AC268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1A2EB8()
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

uint64_t get_enum_tag_for_layout_string_11PhotosGraph10MusicCacheC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22F1A2FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F1A2FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_22F1A302C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_22F1A3078(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F1A30D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCache.WriteOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicCache.WriteOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicCache.LocationTolerance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicCache.LocationTolerance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22F1A3328(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22F1A3370(uint64_t a1, void *a2)
{
  v5 = sub_22F7416B0();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v9 = sub_22F740DF0();

  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for CacherStatusEntry();
  v11 = sub_22F7417B0();
  if (v2)
  {
  }

  else
  {
    v12 = v11;
    sub_22F7416A0();
    if (v12 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v14 = v7;
      v19 = v5;
      if (!i)
      {
        break;
      }

      v15 = 0;
      v20 = i;
      v5 = (v12 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2319016F0](v15, v12);
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        v7 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        [a2 deleteObject_];
        if (v12 >> 62)
        {
          sub_22F741A00();
        }

        else
        {
          v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_22F741680();

        ++v15;
        if (v7 == v20)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_17:
  }
}

void sub_22F1A35D0()
{
  sub_22F741690();
  if (!v1)
  {
    v2 = sub_22F7416B0();
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v6 = sub_22F740DF0();

    v7 = [v5 initWithEntityName_];

    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22F771340;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_22F153470();
    *(v8 + 32) = 0x73656372756F73;
    *(v8 + 40) = 0xE700000000000000;
    v9 = sub_22F741560();
    [v7 setPredicate_];

    v10 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    type metadata accessor for SongEntry();
    v11 = sub_22F7417B0();
    sub_22F7416A0();
    if (v11 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v16 = v2;
      v17 = v7;
      v13 = v4;
      if (!i)
      {
        break;
      }

      v4 = 0;
      v2 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2319016F0](v4, v11);
        }

        else
        {
          if (v4 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v14 = *(v11 + 8 * v4 + 32);
        }

        v15 = v14;
        v7 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v10 deleteObject_];
        sub_22F741680();

        ++v4;
        if (v7 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_22F741A00();
    }

LABEL_13:

    sub_22F7416A0();
  }
}

void sub_22F1A3904()
{
  if (*(v0 + 57))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 64);
  sub_22F1979DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 | *(v0 + 56));
}

uint64_t sub_22F1A394C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1A39E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1A3A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1A3AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_22F1A3B10(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_22F1A3B3C()
{
  result = qword_2810AB5C0;
  if (!qword_2810AB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5C0);
  }

  return result;
}

uint64_t sub_22F1A3BE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *EventLabeler.label(events:progressReporter:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27DAAFD80 != -1)
  {
LABEL_37:
    swift_once();
  }

  v8 = qword_27DAD0E70;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("LabelEvents", 11, 2u, v9, 0, v8, v36);
  v10 = *(a1 + 16);
  v11 = sub_22F741670();

  if (v10)
  {
    v12 = 0;
    v13 = a1 + 32;
    v14 = MEMORY[0x277D84F90];
    v29 = a2;
    v28 = a1 + 32;
    do
    {
      v30 = v14;
      v15 = v13 + 40 * v12;
      a1 = v12;
      while (1)
      {
        if (a1 >= v10)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_22F15C30C(v15, &v33);
        v16 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_35;
        }

        if (v11 >> 62)
        {
          a2 = a1 + 1;
          v20 = sub_22F741A00();
          v16 = a1 + 1;
          if (a1 == v20)
          {
LABEL_26:

            __swift_destroy_boxed_opaque_existential_0(&v33);
            v14 = v30;
            goto LABEL_29;
          }
        }

        else if (a1 == *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v37 = v16;
        if ((v11 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2319016F0](a1, v11);
        }

        else
        {
          if (a1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v17 = *(v11 + 8 * a1 + 32);
        }

        v18 = v17;
        sub_22F100260(&v33, v35);
        v35[5] = v18;
        sub_22F1A4024(v35, v18, a3, a4, &v33);
        if (v5)
        {

          sub_22F1A4394(v35);
          v14 = v30;

          v26 = 1;
          goto LABEL_33;
        }

        sub_22F1A4394(v35);
        v19 = v33;
        a2 = v34;
        if (*(&v33 + 1))
        {
          break;
        }

        sub_22F1A43FC(v33, 0);
        ++a1;
        v15 += 40;
        v5 = 0;
        if (v37 == v10)
        {
          v14 = v30;
          goto LABEL_28;
        }
      }

      v21 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_22F13E7A0(0, *(v30 + 2) + 1, 1, v30);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      v24 = v21;
      if (v23 >= v22 >> 1)
      {
        v24 = sub_22F13E7A0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v24 + 2) = v23 + 1;
      v14 = v24;
      v25 = &v24[24 * v23];
      *(v25 + 2) = v19;
      *(v25 + 6) = a2;
      v12 = v37;
      a2 = v29;
      v5 = 0;
      v13 = v28;
    }

    while (v37 != v10);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_28:

LABEL_29:
  sub_22F7416A0();
  if (v5)
  {
  }

  v26 = 0;
LABEL_33:
  sub_22F1B2BBC(v26);

  return v14;
}

void sub_22F1A4024(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = objc_autoreleasePoolPush();
  sub_22F1A40C4(a1, a2, a3, a4, &v11, a5);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_22F1A40C4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  v36 = a6;
  v12 = sub_22F740B90();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a4 + 8))(a1, a2, a3, a4);
  if (v6)
  {
    goto LABEL_9;
  }

  v17 = result;
  v34 = v12;
  v35 = 0;
  if (qword_27DAAFD80 != -1)
  {
    swift_once();
  }

  sub_22F1B3158(v15);

  v18 = sub_22F740B70();
  v19 = sub_22F7415D0();

  v20 = os_log_type_enabled(v18, v19);
  v21 = a1;
  v33 = a5;
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x231900D40](v17, &type metadata for EventLabelConfidence);
    v25 = v15;
    v27 = sub_22F145F20(v24, v26, &v38);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_22F0FC000, v18, v19, "[EventLabeling] Inferred scores: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x2319033A0](v23, -1, -1);
    MEMORY[0x2319033A0](v22, -1, -1);

    (*(v37 + 8))(v25, v34);
  }

  else
  {

    (*(v37 + 8))(v15, v34);
  }

  v28 = v21[3];
  v29 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v28);
  v6 = v35;
  result = (*(v29 + 24))(v28, v29);
  v31 = v36;
  if (v6)
  {

    a5 = v33;
LABEL_9:
    *a5 = v6;
    return result;
  }

  *v36 = result;
  v31[1] = v30;
  v31[2] = v17;
  return result;
}

uint64_t sub_22F1A4394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E70, &unk_22F781120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F1A43FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22F1A4494(uint64_t *a1, uint64_t a2)
{
  v4 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  if (*(a2 + v4) == 1 && (v5 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs), v6 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap, swift_beginAccess(), *(*(v5 + v6) + 16)))
  {
    v7 = RecentlyUsedSongs.songIdsRecommendedForExclusion()();
    v8 = sub_22F15E910(*a1, a1[1], v7);

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_22F1A4590(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F73EFE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];

  v12 = sub_22F740F10();

  if (v12 < 2)
  {
    return 1;
  }

  v13 = v9[1];
  v57 = *v9;
  v58 = v13;

  sub_22F73EFD0();
  v53 = sub_22F160DE4();
  sub_22F7418D0();
  (*(v5 + 8))(v8, v4);

  v54 = sub_22F740EA0();
  v15 = v14;

  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v17 + 40;
      v52 = *(v17 + 16);
      v49 = v18 - 1;
      v51 = MEMORY[0x277D84F90];
      v50 = v17 + 40;
      do
      {
        v21 = (v20 + 16 * v19);
        v22 = v19;
        while (1)
        {
          if (v22 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v24 = *(v21 - 1);
          v23 = *v21;
          v19 = v22 + 1;
          v57 = sub_22F740EA0();
          v58 = v25;
          v55 = v54;
          v56 = v15;
          v26 = v15;

          v27 = sub_22F741910();

          if (v27)
          {
            break;
          }

          v21 += 2;
          ++v22;
          v15 = v26;
          if (v52 == v19)
          {
            goto LABEL_19;
          }
        }

        v28 = v51;
        result = swift_isUniquelyReferenced_nonNull_native();
        v59 = v28;
        if ((result & 1) == 0)
        {
          result = sub_22F146454(0, *(v28 + 16) + 1, 1);
          v28 = v59;
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_22F146454((v29 > 1), v30 + 1, 1);
          v28 = v59;
        }

        *(v28 + 16) = v30 + 1;
        v51 = v28;
        v31 = v28 + 16 * v30;
        *(v31 + 32) = v24;
        *(v31 + 40) = v23;
        v20 = v50;
        v15 = v26;
      }

      while (v49 != v22);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v32 = v51;
    v33 = *(v51 + 16);
    if (v33)
    {
      v34 = 0;
      v35 = v51 + 40;
      v52 = v33 - 1;
      v53 = v51 + 40;
      v54 = MEMORY[0x277D84F90];
LABEL_21:
      v36 = (v35 + 16 * v34);
      v37 = v34;
      while (v37 < *(v32 + 16))
      {
        v39 = *(v36 - 1);
        v38 = *v36;
        if (sub_22F740EA0() == 0x636973756DLL && v40 == 0xE500000000000000)
        {
        }

        else
        {
          v42 = sub_22F742040();

          if ((v42 & 1) == 0)
          {
            v43 = v54;
            result = swift_isUniquelyReferenced_nonNull_native();
            v57 = v43;
            if ((result & 1) == 0)
            {
              result = sub_22F146454(0, *(v54 + 16) + 1, 1);
              v54 = v57;
            }

            v45 = *(v54 + 16);
            v44 = *(v54 + 24);
            if (v45 >= v44 >> 1)
            {
              result = sub_22F146454((v44 > 1), v45 + 1, 1);
              v54 = v57;
            }

            v34 = v37 + 1;
            v35 = v53;
            v46 = v54;
            *(v54 + 16) = v45 + 1;
            v47 = v46 + 16 * v45;
            *(v47 + 32) = v39;
            *(v47 + 40) = v38;
            v32 = v51;
            if (v52 != v37)
            {
              goto LABEL_21;
            }

            goto LABEL_38;
          }

          v32 = v51;
        }

        ++v37;
        v36 += 2;
        if (v33 == v37)
        {
          goto LABEL_38;
        }
      }

LABEL_40:
      __break(1u);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
LABEL_38:

      v48 = *(v54 + 16);

      return v48 != 0;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t ExtendedTokenCollectionGenerator.__allocating_init(graph:storyPhotoLibraryContext:safeTokenAnalyzer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v11 = sub_22F740620();
  (*(*(v11 - 8) + 32))(v9 + v10, a2, v11);
  *(v9 + OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer) = a3;
  return v9;
}

uint64_t ExtendedTokenCollectionGenerator.init(graph:storyPhotoLibraryContext:safeTokenAnalyzer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v7 = sub_22F740620();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  *(v3 + OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer) = a3;
  return v3;
}

uint64_t ExtendedTokenCollectionGenerator.generateExtendedTokenCollection(representativeAssetUUIDsByMomentUUID:queryTokens:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v127 = a3;
  v8 = sub_22F740510();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v123 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v125 = v106 - v13;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  v124 = __swift_project_value_buffer(v14, qword_2810B4D00);
  v15 = sub_22F740B70();
  v16 = sub_22F7415C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22F0FC000, v15, v16, "generateExtendedTokenCollection has started.", v17, 2u);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  if (qword_2810A9410 != -1)
  {
    swift_once();
  }

  v18 = qword_2810B4CF8;
  result = sub_22F741690();
  if (!v4)
  {
    v121 = v9;
    v122 = v8;
    v120 = a4;
    if (qword_2810A9B10 != -1)
    {
      swift_once();
    }

    v20 = qword_2810B4E10;
    *&v21 = CACurrentMediaTime();
    sub_22F1B560C("ExtendedTokenCollectionGenerator", 32, 2u, v21, 0, v20, v130);
    v22 = sub_22F740200();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = v18;
    v26 = sub_22F7401F0();
    v27 = objc_opt_self();

    sub_22F1534D0(v28);
    v29 = sub_22F741410();

    v30 = [v27 momentNodesForUUIDs:v29 inGraph:*(v126 + 16)];

    sub_22F7401E0();
    sub_22F1A6060(a2, v131);
    sub_22F741690();
    v117 = v26;
    v31 = *(v22 + 48);
    v32 = *(v22 + 52);
    swift_allocObject();
    v33 = v25;
    v118 = sub_22F7401F0();
    v34 = v131[0];
    v35 = ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:momentNodes:)(v131[0], v30);
    v36 = v135;
    v37 = ExtendedTokenCollectionGenerator.generatePersonExtendedTokens(for:using:isTrip:)(v30, v35, *(v135 + 16) != 0);
    v119 = 0;
    v38 = v37;
    v115 = v33;
    v116 = v34;
    v114 = v36;
    v129[0] = v35;

    sub_22F144F60(v39);
    v40 = v129[0];
    v41 = v119;
    sub_22F741690();
    v119 = v41;
    if (v41)
    {

      sub_22F1A78EC(v131);
    }

    else
    {
      v111 = v38;
      v112 = v35;
      v113 = v40;
      sub_22F7401E0();
      v42 = *(v22 + 48);
      v43 = *(v22 + 52);
      swift_allocObject();
      v44 = v115;
      v45 = sub_22F7401F0();
      v46 = ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:momentNodes:)(v116, v30);
      v47 = v119;
      v48 = ExtendedTokenCollectionGenerator.generatePetExtendedTokens(for:using:)(v30, v46);
      if (v47)
      {

        sub_22F1A78EC(v131);

        sub_22F1B2BBC(0);
      }

      v49 = v48;
      v116 = v45;
      v129[0] = v46;

      sub_22F144F34(v49);
      v115 = v129[0];
      sub_22F741690();
      v119 = 0;
      v110 = v49;
      sub_22F7401E0();
      v50 = *(v22 + 48);
      v51 = *(v22 + 52);
      swift_allocObject();
      v109 = v44;
      v52 = sub_22F7401F0();
      v53 = objc_opt_self();
      v54 = v30;
      v55 = [v53 addressOfMoment];
      v56 = [objc_msgSend(v54 graph)];
      swift_unknownObjectRelease();
      v57 = [v56 concreteGraph];

      if (!v57)
      {
        result = sub_22F741D40();
        __break(1u);
        return result;
      }

      v58 = [v54 elementIdentifiers];
      v59 = [v57 adjacencyWithSources:v58 relation:v55];

      v108 = v59;
      v129[0] = v59;
      v129[1] = v57;
      v60 = _s11PhotosGraph32ExtendedTokenCollectionGeneratorC23generateCityAndAreaInfo3for36representativeAssetUUIDsByMomentUUIDSDySo19KGElementIdentifierVAC0hK0VG_SDyAhC0jK0VGtAA04NodeE15BinaryAdjacencyVySo07PGGraphquE0CSo0x7AddressuE0CG_SDySSSaySSGGtF_0(v129, a1);
      graphReference = v138.super.super.super._graphReference;
      v138.super.super.super.super.isa = v54;
      v110 = v54;
      v62 = ExtendedTokenCollectionGenerator.generateHomeCityNodes(for:)(v138);
      sub_22F7401E0();
      v63 = *(v22 + 48);
      v64 = *(v22 + 52);
      swift_allocObject();
      v65 = v109;
      v109 = v52;
      v66 = v65;
      v112 = sub_22F7401F0();
      D0VG_tF_0 = _s11PhotosGraph32ExtendedTokenCollectionGeneratorC016generateLocationC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(v131[1]);
      v107 = v60;
      v111 = v62;
      v68 = ExtendedTokenCollectionGenerator.generateLocationExtendedTokens(for:areaInfoByAreaNodeIdentifier:homeCityNodes:)(v60, graphReference, v62);
      v69 = v57;
      v70 = v68;

      v129[0] = D0VG_tF_0;
      sub_22F144B08(v70);
      v71 = v129[0];
      v72 = v119;
      sub_22F741690();
      if (v72)
      {

        swift_unknownObjectRelease();

        sub_22F1A78EC(v131);

        sub_22F1B2BBC(0);
      }

      v106[5] = v71;
      v106[6] = v69;
      sub_22F7401E0();
      v73 = *(v22 + 48);
      v74 = *(v22 + 52);
      swift_allocObject();
      v75 = v66;
      v76 = sub_22F7401F0();
      v77 = ExtendedTokenCollectionGenerator.generateHomeExtendedTokens(for:cityInfoByCityNodeIdentifier:)(v111, v107);

      sub_22F741690();
      v107 = v77;
      sub_22F7401E0();
      v78 = *(v22 + 48);
      v79 = *(v22 + 52);
      swift_allocObject();
      v80 = v75;
      v81 = sub_22F7401F0();
      v82 = sub_22F266A70(v131[2]);
      sub_22F741690();
      v106[1] = v82;
      v106[3] = v76;
      v106[2] = v81;
      sub_22F7401E0();
      v83 = *(v22 + 48);
      v84 = *(v22 + 52);
      swift_allocObject();
      v85 = v80;
      v106[4] = sub_22F7401F0();
      v137 = v132;
      v129[0] = v132;
      sub_22F1A791C(&v137, v128);

      sub_22F144F08(v86);
      v87 = v110;
      v88 = ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:momentNodes:)(v129[0], v110);

      ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:timeQueryExtendedTokens:)(v87, v88);

      sub_22F741690();
      sub_22F7401E0();
      _s11PhotosGraph32ExtendedTokenCollectionGeneratorC017generatePartOfDayC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(v133);
      _s11PhotosGraph32ExtendedTokenCollectionGeneratorC018generatePartOfWeekC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(v134);
      v89 = *(v22 + 48);
      v90 = *(v22 + 52);
      swift_allocObject();
      v91 = v85;
      sub_22F7401F0();
      ExtendedTokenCollectionGenerator.generateTripExtendedTokens(for:)(v114);
      sub_22F7401E0();
      _s11PhotosGraph32ExtendedTokenCollectionGeneratorC013generateEventC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(v136);
      sub_22F1A78EC(v131);
      sub_22F7416A0();
      v119 = 0;
      v92 = sub_22F740B70();
      v93 = sub_22F7415C0();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_22F0FC000, v92, v93, "generateExtendedTokenCollection complete.", v94, 2u);
        MEMORY[0x2319033A0](v94, -1, -1);
      }

      v95 = v125;
      sub_22F740500();
      (*(v121 + 16))(v123, v95, v122);
      v96 = sub_22F740B70();
      v97 = sub_22F7415C0();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v129[0] = v99;
        *v98 = 136380675;
        sub_22F1A798C();
        v100 = v123;
        v101 = v122;
        v102 = sub_22F742010();
        v104 = v103;
        (*(v121 + 8))(v100, v101);
        v105 = sub_22F145F20(v102, v104, v129);

        *(v98 + 4) = v105;
        _os_log_impl(&dword_22F0FC000, v96, v97, "Extended token collection: %{private}s)", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x2319033A0](v99, -1, -1);
        MEMORY[0x2319033A0](v98, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        (*(v121 + 8))(v123, v122);
      }

      (*(v121 + 32))(v120, v125, v122);
    }

    sub_22F1B2BBC(0);
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v2 = sub_22F740620();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer);

  return v0;
}

uint64_t ExtendedTokenCollectionGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_storyPhotoLibraryContext;
  v2 = sub_22F740620();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph32ExtendedTokenCollectionGenerator_safeTokenAnalyzer);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_22F1A6060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v166 = a2;
  v3 = sub_22F7404D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22F7403B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v208 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73FDA0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v168 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v176 = &v145 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v182 = &v145 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v186 = &v145 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v169 = &v145 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v172 = &v145 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v192 = &v145 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v30 = MEMORY[0x28223BE20](v29);
  v219 = &v145 - v31;
  result = MEMORY[0x28223BE20](v30);
  v179 = *(a1 + 16);
  if (!v179)
  {
    v202 = MEMORY[0x277D84F98];
    v167 = MEMORY[0x277D84F90];
    v178 = MEMORY[0x277D84F90];
    v183 = MEMORY[0x277D84F90];
    v189 = MEMORY[0x277D84F90];
    v194 = MEMORY[0x277D84F90];
    v173 = MEMORY[0x277D84F90];
    v171 = MEMORY[0x277D84F90];
    v175 = MEMORY[0x277D84F90];
LABEL_123:
    v140 = v166;
    v141 = v175;
    *v166 = v202;
    v140[1] = v141;
    v142 = v194;
    v140[2] = v173;
    v140[3] = v142;
    v143 = v183;
    v140[4] = v189;
    v140[5] = v143;
    v144 = v167;
    v140[6] = v178;
    v140[7] = v144;
    v140[8] = v171;
    return result;
  }

  v162 = v36;
  v159 = v35;
  v37 = 0;
  v39 = *(v33 + 16);
  v38 = v33 + 16;
  v215 = v39;
  v190 = (*(v38 + 64) + 32) & ~*(v38 + 64);
  v180 = a1 + v190;
  v207 = (v4 + 88);
  v206 = *MEMORY[0x277D3C4F8];
  v197 = *MEMORY[0x277D3C498];
  v191 = *MEMORY[0x277D3C4D8];
  v185 = *MEMORY[0x277D3C520];
  v181 = *MEMORY[0x277D3C4B0];
  v193 = (v4 + 8);
  v199 = (v4 + 96);
  v174 = *MEMORY[0x277D3C500];
  v170 = *MEMORY[0x277D3C510];
  v165 = *MEMORY[0x277D3C4D0];
  v164 = *MEMORY[0x277D3C4C0];
  v163 = *MEMORY[0x277D3C4C8];
  v161 = *MEMORY[0x277D3C4E0];
  v160 = *MEMORY[0x277D3C508];
  v158 = *MEMORY[0x277D3C4F0];
  v157 = *MEMORY[0x277D3C528];
  v156 = *MEMORY[0x277D3C4E8];
  v155 = *MEMORY[0x277D3C4A8];
  v154 = *MEMORY[0x277D3C4B8];
  v153 = *MEMORY[0x277D3C4A0];
  v152 = *MEMORY[0x277D3C518];
  v204 = v9 + 8;
  v205 = v9 + 16;
  v198 = (v38 + 16);
  v195 = (v38 + 24);
  v177 = (v38 - 8);
  v167 = MEMORY[0x277D84F90];
  v178 = MEMORY[0x277D84F90];
  v183 = MEMORY[0x277D84F90];
  v189 = MEMORY[0x277D84F90];
  v216 = v38;
  v214 = *(v38 + 56);
  v194 = MEMORY[0x277D84F90];
  v173 = MEMORY[0x277D84F90];
  v171 = MEMORY[0x277D84F90];
  v175 = MEMORY[0x277D84F90];
  v40 = &v145 - v34;
  v218 = MEMORY[0x277D84F98];
  v202 = MEMORY[0x277D84F98];
  v200 = v9;
  v188 = v3;
  v187 = v7;
  v196 = v8;
  v217 = v12;
  v213 = &v145 - v34;
  while (1)
  {
    v184 = v37;
    v215(v40, v180 + v214 * v37, v12);
    v44 = sub_22F73FD40();
    v45 = v44;
    v212 = *(v44 + 16);
    if (v212)
    {
      break;
    }

LABEL_3:
    v41 = v9;

    v42 = v184 + 1;
    v40 = v213;
    result = (*v177)(v213, v12);
    v37 = v42;
    v43 = v42 == v179;
    v9 = v41;
    if (v43)
    {
      goto LABEL_123;
    }
  }

  v46 = 0;
  v211 = v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v201 = v44;
  while (v46 < *(v45 + 16))
  {
    v47 = v208;
    (*(v9 + 16))(v208, v211 + *(v9 + 72) * v46, v8);
    sub_22F7403A0();
    (*(v9 + 8))(v47, v8);
    v48 = (*v207)(v7, v3);
    if (v48 != v206)
    {
      if (v48 == v197)
      {
        goto LABEL_17;
      }

      if (v48 == v191)
      {
        (*v199)(v7, v3);
        v215(v192, v213, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = sub_22F13E8C0(0, v194[2] + 1, 1, v194);
        }

        v109 = v194[2];
        v108 = v194[3];
        if (v109 >= v108 >> 1)
        {
          v194 = sub_22F13E8C0(v108 > 1, v109 + 1, 1, v194);
        }

        v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB0, &unk_22F777710) + 48);
        v111 = v194;
        v194[2] = v109 + 1;
        (*v198)(&v111[v190 + v109 * v214], v192, v12);
        sub_22F120ADC(v7 + v110, &qword_27DAB1EB8, &unk_22F77A2D0);
        sub_22F120ADC(v7, &qword_27DAB1EB8, &unk_22F77A2D0);
        v9 = v200;
        v45 = v201;
        goto LABEL_7;
      }

      if (v48 == v185)
      {
        (*v193)(v7, v3);
        v215(v186, v213, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v189 = sub_22F13E8C0(0, *(v189 + 2) + 1, 1, v189);
        }

        v113 = *(v189 + 2);
        v112 = *(v189 + 3);
        if (v113 >= v112 >> 1)
        {
          v189 = sub_22F13E8C0(v112 > 1, v113 + 1, 1, v189);
        }

        v114 = v189;
        *(v189 + 2) = v113 + 1;
        (*v198)(&v114[v190 + v113 * v214], v186, v12);
        goto LABEL_84;
      }

      if (v48 == v181)
      {
        (*v199)(v7, v3);
        v215(v182, v213, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v183 = sub_22F13E8C0(0, v183[2] + 1, 1, v183);
        }

        v116 = v183[2];
        v115 = v183[3];
        if (v116 >= v115 >> 1)
        {
          v183 = sub_22F13E8C0(v115 > 1, v116 + 1, 1, v183);
        }

        v117 = v183;
        v183[2] = v116 + 1;
        (*v198)(&v117[v190 + v116 * v214], v182, v12);
        v118 = sub_22F740A20();
        goto LABEL_83;
      }

      if (v48 == v174)
      {
        (*v199)(v7, v3);
        v215(v176, v213, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_22F13E8C0(0, *(v178 + 2) + 1, 1, v178);
        }

        v120 = *(v178 + 2);
        v119 = *(v178 + 3);
        if (v120 >= v119 >> 1)
        {
          v178 = sub_22F13E8C0(v119 > 1, v120 + 1, 1, v178);
        }

        v121 = v178;
        *(v178 + 2) = v120 + 1;
        (*v198)(&v121[v190 + v120 * v214], v176, v12);
        v118 = sub_22F740A70();
        goto LABEL_83;
      }

      if (v48 == v170)
      {
        (*v193)(v7, v3);
        v215(v172, v213, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_22F13E8C0(0, v175[2] + 1, 1, v175);
        }

        v123 = v175[2];
        v122 = v175[3];
        if (v123 >= v122 >> 1)
        {
          v175 = sub_22F13E8C0(v122 > 1, v123 + 1, 1, v175);
        }

        v124 = v175;
        v175[2] = v123 + 1;
        (*v198)(&v124[v190 + v123 * v214], v172, v12);
        goto LABEL_84;
      }

      if (v48 == v165)
      {
        (*v199)(v7, v3);
        v215(v169, v213, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_22F13E8C0(0, *(v173 + 2) + 1, 1, v173);
        }

        v126 = *(v173 + 2);
        v125 = *(v173 + 3);
        if (v126 >= v125 >> 1)
        {
          v173 = sub_22F13E8C0(v125 > 1, v126 + 1, 1, v173);
        }

        v127 = v173;
        *(v173 + 2) = v126 + 1;
        (*v198)(&v127[v190 + v126 * v214], v169, v12);
        v118 = sub_22F740520();
LABEL_83:
        (*(*(v118 - 8) + 8))(v7, v118);
      }

      else
      {
        if (v48 == v164)
        {
          (*v199)(v7, v3);
          v128 = v7;
          v129 = &unk_27DAB1EA8;
          v130 = &unk_22F777708;
        }

        else
        {
          if (v48 != v163)
          {
            if (v48 == v161)
            {
              goto LABEL_17;
            }

            if (v48 == v160)
            {
              goto LABEL_18;
            }

            if (v48 != v158)
            {
              if (v48 == v157)
              {
                (*v199)(v7, v3);
                v139 = sub_22F73FFD0();
                (*(*(v139 - 8) + 8))(v7, v139);
              }

              else if (v48 != v156 && v48 != v155 && v48 != v154 && v48 != v153 && v48 != v152)
              {
LABEL_17:
                (*v193)(v7, v3);
              }

LABEL_18:
              v62 = v9;
              v63 = v3;
              v64 = v46;
              if (qword_2810A9418 != -1)
              {
                swift_once();
              }

              v65 = sub_22F740B90();
              __swift_project_value_buffer(v65, qword_2810B4D00);
              v66 = sub_22F740B70();
              v67 = sub_22F7415E0();
              if (os_log_type_enabled(v66, v67))
              {
                v68 = v7;
                v69 = swift_slowAlloc();
                *v69 = 0;
                _os_log_impl(&dword_22F0FC000, v66, v67, "New query token needs to be accounted for in extended token generation.", v69, 2u);
                v70 = v69;
                v7 = v68;
                MEMORY[0x2319033A0](v70, -1, -1);
              }

              v46 = v64;
              v3 = v63;
              v8 = v196;
              v9 = v62;
              v12 = v217;
              goto LABEL_7;
            }

            (*v193)(v7, v3);
            v12 = v217;
            v215(v159, v213, v217);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v167 = sub_22F13E8C0(0, v167[2] + 1, 1, v167);
            }

            v8 = v196;
            v137 = v167[2];
            v136 = v167[3];
            if (v137 >= v136 >> 1)
            {
              v167 = sub_22F13E8C0(v136 > 1, v137 + 1, 1, v167);
            }

            v138 = v167;
            v167[2] = v137 + 1;
            (*v198)(&v138[v190 + v137 * v214], v159, v12);
            goto LABEL_84;
          }

          (*v199)(v7, v3);
          v131 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E98, &qword_22F7776F8) + 48);
          v132 = sub_22F740580();
          (*(*(v132 - 8) + 8))(v7 + v131, v132);
          v128 = v7;
          v129 = &unk_27DAB1EA0;
          v130 = &unk_22F777700;
        }

        sub_22F120ADC(v128, v129, v130);
        v215(v168, v213, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = sub_22F13E8C0(0, *(v171 + 2) + 1, 1, v171);
        }

        v134 = *(v171 + 2);
        v133 = *(v171 + 3);
        if (v134 >= v133 >> 1)
        {
          v171 = sub_22F13E8C0(v133 > 1, v134 + 1, 1, v171);
        }

        v135 = v171;
        *(v171 + 2) = v134 + 1;
        (*v198)(&v135[v190 + v134 * v214], v168, v12);
      }

LABEL_84:
      v9 = v200;
      v45 = v201;
      goto LABEL_7;
    }

    v203 = v46;
    (*v199)(v7, v3);
    v49 = *v7;
    sub_22F191888();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_22F1515F8(v49);

    v51 = sub_22F741410();

    v52 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

    if (v52)
    {
      v53 = sub_22F741420();

      v54 = v53;
      v12 = v217;
      if (*(v53 + 16))
      {
        v55 = 0;
        v56 = v53 + 56;
        v57 = 1 << *(v54 + 32);
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v59 = v58 & *(v54 + 56);
        v60 = (v57 + 63) >> 6;
        v61 = v218;
        v209 = v60;
        v210 = v54;
        while (v59)
        {
          v71 = v55;
LABEL_29:
          v72 = (*(v54 + 48) + ((v71 << 10) | (16 * __clz(__rbit64(v59)))));
          v73 = *v72;
          v74 = v72[1];
          v215(v219, v213, v12);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v220 = v61;
          v218 = v73;
          v76 = v73;
          v77 = v61;
          v79 = sub_22F1229E8(v76, v74);
          v80 = *(v61 + 16);
          v81 = (v78 & 1) == 0;
          v82 = v80 + v81;
          if (__OFADD__(v80, v81))
          {
            goto LABEL_126;
          }

          v83 = v78;
          if (*(v61 + 24) >= v82)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C10, &qword_22F770D80);
              v202 = sub_22F741DC0();
              if (*(v61 + 16))
              {
                v91 = (v202 + 64);
                v92 = (v61 + 64);
                v93 = ((1 << *(v202 + 32)) + 63) >> 6;
                v146 = v61 + 64;
                if (v202 != v61 || v91 >= &v92[8 * v93])
                {
                  memmove(v91, v92, 8 * v93);
                }

                v94 = 0;
                *(v202 + 16) = *(v61 + 16);
                v95 = 1 << *(v61 + 32);
                if (v95 < 64)
                {
                  v96 = ~(-1 << v95);
                }

                else
                {
                  v96 = -1;
                }

                v97 = v96 & *(v61 + 64);
                v98 = (v95 + 63) >> 6;
                v147 = v98;
                if (v97)
                {
                  do
                  {
                    v99 = __clz(__rbit64(v97));
                    v151 = (v97 - 1) & v97;
LABEL_52:
                    v102 = v99 | (v94 << 6);
                    v148 = 16 * v102;
                    v103 = *(v61 + 56);
                    v104 = (*(v61 + 48) + 16 * v102);
                    v105 = v104[1];
                    v150 = *v104;
                    v149 = v102 * v214;
                    v215(v162, v103 + v102 * v214, v217);
                    v106 = v202;
                    v107 = (*(v202 + 48) + v148);
                    *v107 = v150;
                    v107[1] = v105;
                    (*v198)((*(v106 + 56) + v149), v162, v217);

                    v98 = v147;
                    v97 = v151;
                  }

                  while (v151);
                }

                v100 = v94;
                while (1)
                {
                  v94 = v100 + 1;
                  if (__OFADD__(v100, 1))
                  {
                    goto LABEL_128;
                  }

                  if (v94 >= v98)
                  {
                    break;
                  }

                  v101 = *(v146 + 8 * v94);
                  ++v100;
                  if (v101)
                  {
                    v99 = __clz(__rbit64(v101));
                    v151 = (v101 - 1) & v101;
                    goto LABEL_52;
                  }
                }
              }

              v77 = v202;
            }

            v84 = v218;
          }

          else
          {
            sub_22F1269B8(v82, isUniquelyReferenced_nonNull_native);
            v77 = v220;
            v84 = v218;
            v85 = sub_22F1229E8(v218, v74);
            if ((v83 & 1) != (v86 & 1))
            {
              goto LABEL_129;
            }

            v79 = v85;
          }

          v59 &= v59 - 1;
          v202 = v77;
          if (v83)
          {

            v12 = v217;
            (*v195)(v77[7] + v79 * v214, v219, v217);
          }

          else
          {
            v77[(v79 >> 6) + 8] |= 1 << v79;
            v87 = (v77[6] + 16 * v79);
            *v87 = v84;
            v87[1] = v74;
            v12 = v217;
            (*v198)((v77[7] + v79 * v214), v219, v217);
            v88 = v77[2];
            v89 = __OFADD__(v88, 1);
            v90 = v88 + 1;
            if (v89)
            {
              goto LABEL_127;
            }

            v77[2] = v90;
          }

          v61 = v77;
          v55 = v71;
          v60 = v209;
          v54 = v210;
        }

        while (1)
        {
          v71 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v71 >= v60)
          {
            v218 = v61;

            v3 = v188;
            v7 = v187;
            v8 = v196;
            v9 = v200;
            v45 = v201;
            v46 = v203;
            goto LABEL_7;
          }

          v59 = *(v56 + 8 * v71);
          ++v55;
          if (v59)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }
    }

    else
    {
      v12 = v217;
    }

    v9 = v200;
    v45 = v201;
    v46 = v203;
LABEL_7:
    if (++v46 == v212)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F1A791C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E78, &qword_22F777598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F1A798C()
{
  result = qword_2810A94A8;
  if (!qword_2810A94A8)
  {
    sub_22F740510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A94A8);
  }

  return result;
}

unint64_t sub_22F1A79E8()
{
  result = qword_27DAB1E80;
  if (!qword_27DAB1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1E80);
  }

  return result;
}

uint64_t type metadata accessor for ExtendedTokenCollectionGenerator()
{
  result = qword_27DAB1E88;
  if (!qword_27DAB1E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F1A7A90()
{
  result = sub_22F740620();
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F1A7B9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22F1A7BE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22F1A7C44(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = [a1 matrix];
  v16 = [v15 wrapper];

  sub_22F73FB80();
  sub_22F73FCD0();
  sub_22F73FCE0();
  v17 = v5[1];
  v17(v9, v4);
  v34 = v17;
  v17(v12, v4);
  v18 = v5[2];
  v35 = v14;
  v18(v12, v14, v4);
  v19 = objc_allocWithZone(sub_22F73FBB0());
  v20 = MEMORY[0x2318FF740](v12);
  v21 = [objc_allocWithZone(MEMORY[0x277D22C38]) initWithWrapper_];

  v22 = [a1 rowLabels];
  if (v22)
  {
    v23 = v22;
    v24 = sub_22F741180();
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v2 + *(type metadata accessor for MaestroRanker() + 20));
  v26 = v21;
  v27 = sub_22F740DF0();
  if (v24)
  {
    v28 = sub_22F741160();
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v30 = sub_22F741160();
  v31 = [v29 initWithName:v27 rowLabels:v28 columnLabels:v30 matrix:v26];

  if (!v31)
  {
    sub_22F1A8008();
    swift_allocError();
    swift_willThrow();
  }

  v34(v35, v4);
  return v31;
}

uint64_t type metadata accessor for MaestroRanker()
{
  result = qword_2810ABFC8;
  if (!qword_2810ABFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F1A8008()
{
  result = qword_27DAB1EC8;
  if (!qword_27DAB1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1EC8);
  }

  return result;
}

void sub_22F1A8094()
{
  sub_22F1A8160(319, &qword_2810A9500, MEMORY[0x277D83A90], MEMORY[0x277D22B60]);
  if (v0 <= 0x3F)
  {
    sub_22F1A8160(319, &qword_2810A92F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F1A8160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22F1A81B4()
{
  result = qword_27DAB1ED0;
  if (!qword_27DAB1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1ED0);
  }

  return result;
}

uint64_t sub_22F1A8208(uint64_t a1)
{
  v2 = sub_22F1A842C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A8244(uint64_t a1)
{
  v2 = sub_22F1A842C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongSearchResponse.MusicKitCatalogResults.MusicKitCatalogSongsData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1ED8, &qword_22F777800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A842C();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F1A8DC8(&qword_2810A9320, &qword_27DAB1EE8, &qword_22F777808, sub_22F1A8480);
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A842C()
{
  result = qword_27DAB1EE0;
  if (!qword_27DAB1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1EE0);
  }

  return result;
}

unint64_t sub_22F1A8480()
{
  result = qword_2810AAA88;
  if (!qword_2810AAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAA88);
  }

  return result;
}

uint64_t sub_22F1A850C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E6F73 && a2 == 0xE500000000000000)
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

uint64_t sub_22F1A8590(uint64_t a1)
{
  v2 = sub_22F1A8774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A85CC(uint64_t a1)
{
  v2 = sub_22F1A8774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongSearchResponse.MusicKitCatalogResults.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EF0, &qword_22F777810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A8774();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A87C8();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A8774()
{
  result = qword_27DAB1EF8;
  if (!qword_27DAB1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1EF8);
  }

  return result;
}

unint64_t sub_22F1A87C8()
{
  result = qword_27DAB1F00;
  if (!qword_27DAB1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F00);
  }

  return result;
}

uint64_t MusicKitCatalogSongSearchResponse.results.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_22F1A88A4(uint64_t a1)
{
  v2 = sub_22F1A8A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A88E0(uint64_t a1)
{
  v2 = sub_22F1A8A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongSearchResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F08, &qword_22F777818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A8A88();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A8ADC();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A8A88()
{
  result = qword_27DAB1F10;
  if (!qword_27DAB1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F10);
  }

  return result;
}

unint64_t sub_22F1A8ADC()
{
  result = qword_27DAB1F18;
  if (!qword_27DAB1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F18);
  }

  return result;
}

uint64_t sub_22F1A8B50(uint64_t a1)
{
  v2 = sub_22F1A8D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A8B8C(uint64_t a1)
{
  v2 = sub_22F1A8D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F20, &qword_22F777820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A8D74();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F30, &qword_22F777828);
    sub_22F1A8DC8(&qword_2810A9310, &qword_27DAB1F30, &qword_22F777828, sub_22F1A8E44);
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A8D74()
{
  result = qword_27DAB1F28;
  if (!qword_27DAB1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F28);
  }

  return result;
}

uint64_t sub_22F1A8DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F1A8E44()
{
  result = qword_2810AA600;
  if (!qword_2810AA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA600);
  }

  return result;
}

uint64_t sub_22F1A8ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473696C79616C70 && a2 == 0xE900000000000073)
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

uint64_t sub_22F1A8F5C(uint64_t a1)
{
  v2 = sub_22F1A9140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A8F98(uint64_t a1)
{
  v2 = sub_22F1A9140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistSearchResponse.MusicKitCatalogResults.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F38, &qword_22F777830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A9140();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A9194();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A9140()
{
  result = qword_27DAB1F40;
  if (!qword_27DAB1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F40);
  }

  return result;
}

unint64_t sub_22F1A9194()
{
  result = qword_27DAB1F48;
  if (!qword_27DAB1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F48);
  }

  return result;
}

uint64_t sub_22F1A9220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
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

uint64_t sub_22F1A92A8(uint64_t a1)
{
  v2 = sub_22F1A948C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1A92E4(uint64_t a1)
{
  v2 = sub_22F1A948C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylistSearchResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F50, &qword_22F777838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1A948C();
  sub_22F742200();
  if (!v2)
  {
    sub_22F1A94E0();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F1A948C()
{
  result = qword_27DAB1F58;
  if (!qword_27DAB1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F58);
  }

  return result;
}

unint64_t sub_22F1A94E0()
{
  result = qword_27DAB1F60;
  if (!qword_27DAB1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1F60);
  }

  return result;
}