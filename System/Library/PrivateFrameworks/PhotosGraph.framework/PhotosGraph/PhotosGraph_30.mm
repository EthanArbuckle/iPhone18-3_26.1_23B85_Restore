void sub_22F331EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  sub_22F331F20(a1, a4);

  objc_autoreleasePoolPop(v6);
}

id sub_22F331F20(void *a1, uint64_t a2)
{
  if ([a1 state] == 2 || (result = objc_msgSend(a1, sel_state), result == 3))
  {
    result = [a1 additionalInfo];
    if (result)
    {
      v5 = result;
      v6 = sub_22F740CA0();

      v7 = sub_22F740E20();
      if (*(v6 + 16))
      {
        v9 = sub_22F1229E8(v7, v8);
        v11 = v10;

        if (v11)
        {
          sub_22F13A100(*(v6 + 56) + 32 * v9, v25);
          sub_22F120ADC(v25, &qword_27DAB0C28, &qword_22F778980);
          v12 = sub_22F740E20();
          if (*(v6 + 16))
          {
            v14 = sub_22F1229E8(v12, v13);
            v16 = v15;

            if (v16)
            {
              sub_22F13A100(*(v6 + 56) + 32 * v14, v25);

              sub_22F120ADC(v25, &qword_27DAB0C28, &qword_22F778980);
              v17 = [a1 entityIdentifier];
              v18 = sub_22F740E20();
              v20 = v19;

              v21 = [a1 state] == 2;
              swift_beginAccess();
              v22 = *(a2 + 64);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v24 = *(a2 + 64);
              *(a2 + 64) = 0x8000000000000000;
              sub_22F132CF8(v21, v18, v20, isUniquelyReferenced_nonNull_native);

              *(a2 + 64) = v24;
              return swift_endAccess();
            }
          }

          else
          {
          }
        }
      }

      else
      {
      }

      memset(v25, 0, sizeof(v25));
      return sub_22F120ADC(v25, &qword_27DAB0C28, &qword_22F778980);
    }
  }

  return result;
}

uint64_t sub_22F332180()
{
  if (v0[7] >= *(v0[3] + 16))
  {
    return 0;
  }

  while (1)
  {
    result = swift_beginAccess();
    while (v0[6] < *(v0[5] + 16))
    {
      v6.isa = 0;
      v2 = objc_autoreleasePoolPush();
      sub_22F332248(v0, &v6);
      objc_autoreleasePoolPop(v2);
      result = v6.isa;
      if (v6.isa)
      {
        return result;
      }
    }

    v0[6] = 0;
    v3 = v0[7];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      break;
    }

    v0[7] = v5;
    sub_22F332774();
    if (v0[7] >= *(v0[3] + 16))
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_22F332248(void *a1, NSObject *a2)
{
  v5 = v3;
  v8 = sub_22F73F470();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[6];
  swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v14 = a1[5];
  if (v13 >= *(v14 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = *(v14 + 8 * v13 + 32);
  if (!v2)
  {
    if (qword_27DAAFD40 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  v4 = a1[7];
  swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  v15 = a1[4];
  if (v4 >= *(v15 + 16))
  {
    goto LABEL_35;
  }

  v4 = *(v15 + 8 * v4 + 32);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

  v16 = *(v4 + 8 * v13 + 32);
  v17 = v2;
  v18 = v16;
  v19 = a1[7];
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_9:
  v20 = a1[3];
  if (v19 < *(v20 + 16))
  {
    v21 = a1[6];
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v22 = *(v20 + 8 * v19 + 32);
    if (v21 >= *(v22 + 16))
    {
      goto LABEL_41;
    }

    v56 = a2;
    a2 = v5;
    v23 = *(v9 + 16);
    v9 += 16;
    v23(v12, v22 + ((*(v9 + 64) + 32) & ~*(v9 + 64)) + *(v9 + 56) * v21, v8);
    v24 = a1[2];
    v25 = type metadata accessor for PGSharedLibrarySimulationEvent();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v4 = swift_allocObject();
    v8 = v2;
    v28 = v24;
    v29 = v18;
    v13 = v4;
    v30 = sub_22F16C2FC(v29, v8, v12, v28);
    if (v30)
    {
      v12 = v30;
      v31 = [*&v30[OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset] uuid];
      if (!v31)
      {
        goto LABEL_47;
      }

      v32 = v31;
      v33 = sub_22F740E20();
      v4 = v34;

      swift_beginAccess();
      v13 = a1[8];
      if (*(v13 + 16) && (v35 = a1[8], , v36 = sub_22F1229E8(v33, v4), v9 = v37, , (v9 & 1) != 0))
      {
        v2 = *(*(v13 + 56) + v36);

        v12[OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_photosChallengeInferredSuggestsSharing] = v2;
      }

      else
      {
      }

      v49.isa = v56->isa;
      v56->isa = v12;
    }

    else
    {
    }

    v5 = a2;
    goto LABEL_29;
  }

  while (1)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_18:
    v38 = sub_22F740B90();
    v13 = __swift_project_value_buffer(v38, qword_27DAD0E10);

    a2 = sub_22F740B70();
    v4 = sub_22F7415E0();

    if (!os_log_type_enabled(a2, v4))
    {

      goto LABEL_29;
    }

    v56 = v5;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55 = v40;
    *v39 = 136315138;
    v41 = a1[7];
    if ((v41 & 0x8000000000000000) != 0)
    {
      break;
    }

    v42 = a1[3];
    if (v41 >= *(v42 + 16))
    {
      goto LABEL_44;
    }

    v43 = a1[6];
    if ((v43 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v54 = v40;
    v44 = *(v42 + 8 * v41 + 32);
    if (v43 >= *(v44 + 16))
    {
      goto LABEL_46;
    }

    (*(v9 + 16))(v12, v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v43, v8);
    v45 = sub_22F73F450();
    v47 = v46;
    v48 = *(v9 + 8);
    v9 += 8;
    v48(v12, v8);
    v13 = sub_22F145F20(v45, v47, &v55);

    *(v39 + 4) = v13;
    _os_log_impl(&dword_22F0FC000, a2, v4, "[SharedLibrarySimulationEventFactory] Event factory could not find an asset for the event with .MDATA file %s.", v39, 0xCu);
    v2 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x2319033A0](v2, -1, -1);
    MEMORY[0x2319033A0](v39, -1, -1);

    v5 = v56;
LABEL_29:
    v50 = a1[6];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (!v51)
    {
      a1[6] = v52;
      return;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v53 = v2;

    v18 = MEMORY[0x2319016F0](v13, v4);

    v19 = a1[7];
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_22F332774()
{
  v1 = v0;
  v2 = sub_22F73F470();
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - v6;
  if (*(v1 + 56) < *(*(v1 + 24) + 16))
  {
    swift_beginAccess();
    v8 = *(v1 + 40);
    v9 = MEMORY[0x277D84F90];
    *(v1 + 40) = MEMORY[0x277D84F90];

    v10 = swift_allocObject();
    *(v10 + 16) = sub_22F14F1C0(v9);
    v11 = *(v1 + 56);
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v12 = *(v1 + 24);
    if (v11 >= *(v12 + 16))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      sub_22F7420C0();
      __break(1u);
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
      v68 = *(v13 + 16);
      if (v68)
      {
        v67 = v13 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
        v66 = v70 + 16;
        *&v72 = v70 + 8;

        v14 = 0;
        v15 = MEMORY[0x277D84F90];
        v64 = v2;
        v65 = v1;
        v62 = v13;
        v63 = v7;
        while (1)
        {
          if (v14 >= *(v13 + 16))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v16 = v70;
          (*(v70 + 16))(v7, v67 + *(v70 + 72) * v14, v2);
          v71 = objc_autoreleasePoolPush();
          v17 = v69;
          sub_22F73F400();
          v18 = sub_22F73F3E0();
          v20 = v19;
          v21 = *(v16 + 8);
          v21(v17, v2);
          aBlock = v18;
          v74 = v20;

          MEMORY[0x231900B10](0x434945482ELL, 0xE500000000000000);

          v22 = aBlock;
          v23 = v74;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_22F13E1A8(0, *(v15 + 2) + 1, 1, v15);
          }

          v25 = *(v15 + 2);
          v24 = *(v15 + 3);
          if (v25 >= v24 >> 1)
          {
            v15 = sub_22F13E1A8((v24 > 1), v25 + 1, 1, v15);
          }

          *(v15 + 2) = v25 + 1;
          v26 = &v15[16 * v25];
          *(v26 + 4) = v22;
          *(v26 + 5) = v23;
          v27 = *(v10 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v27;
          v29 = v10;
          *(v10 + 16) = 0x8000000000000000;
          v31 = sub_22F1229E8(v22, v23);
          v32 = v27[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_30;
          }

          v35 = v30;
          if (v27[3] >= v34)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v30)
              {
                goto LABEL_18;
              }
            }

            else
            {
              sub_22F1341B0();
              if (v35)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
            sub_22F125704(v34, isUniquelyReferenced_nonNull_native);
            v36 = sub_22F1229E8(v22, v23);
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_34;
            }

            v31 = v36;
            if (v35)
            {
LABEL_18:

              v38 = aBlock;
              *(aBlock[7] + 8 * v31) = v14;
              goto LABEL_22;
            }
          }

          v38 = aBlock;
          aBlock[(v31 >> 6) + 8] |= 1 << v31;
          v39 = (v38[6] + 16 * v31);
          *v39 = v22;
          v39[1] = v23;
          *(v38[7] + 8 * v31) = v14;
          v40 = v38[2];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_31;
          }

          v38[2] = v42;
LABEL_22:
          v10 = v29;
          *(v29 + 16) = v38;

          v1 = v65;
          v43 = swift_beginAccess();
          MEMORY[0x231900D00](v43);
          v44 = *(v1 + 40);
          v13 = v62;
          if (*(v44 + 16) >= *(v44 + 24) >> 1)
          {
            v45 = *(v44 + 16);
            sub_22F7411C0();
          }

          ++v14;
          sub_22F741220();
          swift_endAccess();
          objc_autoreleasePoolPop(v71);
          v7 = v63;
          v2 = v64;
          v21(v63, v64);
          if (v68 == v14)
          {

            goto LABEL_27;
          }
        }
      }

      v15 = MEMORY[0x277D84F90];
LABEL_27:
      v46 = [*(v1 + 16) librarySpecificFetchOptions];
      [v46 setWantsIncrementalChangeDetails_];
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v47 = swift_allocObject();
      v72 = xmmword_22F771340;
      *(v47 + 16) = xmmword_22F771340;
      *(v47 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v47 + 64) = sub_22F25F050();
      *(v47 + 32) = v15;

      v48 = sub_22F741560();
      [v46 setInternalPredicate_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v49 = swift_allocObject();
      *(v49 + 16) = v72;
      v50 = *MEMORY[0x277CD9AB8];
      *(v49 + 32) = sub_22F740E20();
      *(v49 + 40) = v51;
      v52 = sub_22F741160();

      [v46 addFetchPropertySets_];

      v53 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      v54 = sub_22F740DF0();
      v55 = [v53 initWithKey:v54 ascending:1];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_22F771EB0;
      *(v56 + 32) = v55;
      sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
      v57 = v55;
      v58 = sub_22F741160();

      [v46 setSortDescriptors_];

      v59 = [objc_opt_self() fetchAssetsWithOptions_];
      v60 = swift_allocObject();
      *(v60 + 16) = v10;
      *(v60 + 24) = v1;
      v77 = sub_22F3342B0;
      v78 = v60;
      aBlock = MEMORY[0x277D85DD0];
      v74 = 1107296256;
      v75 = sub_22F334418;
      v76 = &block_descriptor_31;
      v61 = _Block_copy(&aBlock);

      [v59 enumerateObjectsUsingBlock_];
      _Block_release(v61);
    }
  }
}

void sub_22F332F5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 filename];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = sub_22F740E20();
  v13 = v12;

  swift_beginAccess();
  v14 = *(a4 + 16);
  if (!*(v14 + 16))
  {

    goto LABEL_9;
  }

  v15 = sub_22F1229E8(v11, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    goto LABEL_10;
  }

  v18 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  swift_beginAccess();
  v19 = *(a5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 40) = v19;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = sub_22F2F2CE4(v19);
    *(a5 + 40) = v19;
    if ((v18 & 0x8000000000000000) == 0)
    {
LABEL_6:
      if (v18 < *(v19 + 16))
      {
        v21 = v19 + 8 * v18;
        v22 = *(v21 + 32);
        *(v21 + 32) = a1;
        *(a5 + 40) = v19;
        v23 = a1;
        swift_endAccess();

LABEL_10:
        objc_autoreleasePoolPop(v8);
        return;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_22F3330C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_22F33313C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22F332180();
  *a1 = result;
  return result;
}

void sub_22F333168(unint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F3334E4(v8, v9, a1, v4);
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
    sub_22F3332AC(0, v2, 1, a1);
  }
}

void sub_22F3332AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v34 = -v19;
    v35 = v18;
    v21 = a1 - a3;
    v28 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    while (1)
    {
      sub_22F3342D0(v22, v17);
      sub_22F3342D0(v20, v13);
      v23 = *(v8 + 48);
      v24 = sub_22F73F5C0();
      sub_22F120ADC(v13, &unk_27DAB1080, &unk_22F7714C0);
      sub_22F120ADC(v17, &unk_27DAB1080, &unk_22F7714C0);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_22F3343A4(v22, v36);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F3343A4(v25, v20);
      v20 += v34;
      v22 += v34;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F3334E4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v5;
  v104 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  v113 = *(v118 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x28223BE20](v118);
  v108 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v101 - v12;
  MEMORY[0x28223BE20](v13);
  v117 = &v101 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v101 - v16;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_135;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v4;
LABEL_99:
      v119 = v96;
      v4 = *(v96 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v97 = *&v96[16 * v4];
          v98 = v96;
          v99 = *&v96[16 * v4 + 24];
          sub_22F333DD4(*a3 + *(v113 + 72) * v97, *a3 + *(v113 + 72) * *&v96[16 * v4 + 16], *a3 + *(v113 + 72) * v99, a4);
          if (v6)
          {
            goto LABEL_107;
          }

          if (v99 < v97)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_22F3F5F98(v98);
          }

          if (v4 - 2 >= *(v98 + 2))
          {
            goto LABEL_123;
          }

          v100 = &v98[16 * v4];
          *v100 = v97;
          *(v100 + 1) = v99;
          v119 = v98;
          sub_22F3F5F0C(v4 - 1);
          v96 = v119;
          v4 = *(v119 + 2);
          if (v4 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v96 = sub_22F3F5F98(v4);
    goto LABEL_99;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v103 = a4;
  v111 = &v101 - v16;
  while (1)
  {
    v21 = v19;
    v109 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v115 = *a3;
      v22 = v115;
      v23 = *(v113 + 72);
      v24 = v115 + v23 * (v19 + 1);
      sub_22F3342D0(v24, v17);
      v25 = v22 + v23 * v19;
      v26 = v117;
      sub_22F3342D0(v25, v117);
      v27 = *(v118 + 48);
      LODWORD(v112) = sub_22F73F5C0();
      sub_22F120ADC(v26, &unk_27DAB1080, &unk_22F7714C0);
      sub_22F120ADC(v17, &unk_27DAB1080, &unk_22F7714C0);
      v102 = v19;
      v4 = v19 + 2;
      v114 = v23;
      v28 = v115 + v23 * (v19 + 2);
      while (v18 != v4)
      {
        v29 = v111;
        sub_22F3342D0(v28, v111);
        v30 = v117;
        sub_22F3342D0(v24, v117);
        v31 = *(v118 + 48);
        LOBYTE(v115) = sub_22F73F5C0() & 1;
        LODWORD(v115) = v115;
        sub_22F120ADC(v30, &unk_27DAB1080, &unk_22F7714C0);
        sub_22F120ADC(v29, &unk_27DAB1080, &unk_22F7714C0);
        ++v4;
        v28 += v114;
        v24 += v114;
        if ((v112 & 1) != v115)
        {
          v18 = v4 - 1;
          break;
        }
      }

      v17 = v111;
      v21 = v102;
      a4 = v103;
      if (v112)
      {
        if (v18 < v102)
        {
          goto LABEL_126;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v4 = v114 * (v18 - 1);
          v32 = v18 * v114;
          v33 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v114;
          v105 = a3;
          do
          {
            if (v35 != --v34)
            {
              v37 = *a3;
              if (!v37)
              {
                goto LABEL_132;
              }

              sub_22F3343A4(v37 + v36, v108);
              if (v36 < v4 || v37 + v36 >= v37 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F3343A4(v108, v37 + v4);
              a3 = v105;
            }

            ++v35;
            v4 -= v114;
            v32 -= v114;
            v36 += v114;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v33;
        }
      }
    }

    v38 = a3[1];
    if (v18 >= v38)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_125;
    }

    if (v18 - v21 >= a4)
    {
LABEL_32:
      v19 = v18;
      if (v18 < v21)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_127;
    }

    if ((v21 + a4) >= v38)
    {
      v39 = a3[1];
    }

    else
    {
      v39 = v21 + a4;
    }

    if (v39 < v21)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v18 == v39)
    {
      goto LABEL_32;
    }

    v101 = v6;
    v102 = v21;
    v83 = *a3;
    v84 = *(v113 + 72);
    v85 = *a3 + v84 * (v18 - 1);
    v86 = v18;
    v87 = -v84;
    v88 = v21 - v86;
    v115 = v86;
    v105 = a3;
    v106 = v84;
    a4 = v83 + v86 * v84;
    v89 = v118;
    v107 = v39;
LABEL_86:
    v110 = a4;
    v112 = v88;
    v114 = v85;
    v90 = v85;
LABEL_87:
    sub_22F3342D0(a4, v17);
    v91 = v117;
    sub_22F3342D0(v90, v117);
    v92 = *(v89 + 48);
    v93 = sub_22F73F5C0();
    v94 = v91;
    v4 = &unk_27DAB1080;
    sub_22F120ADC(v94, &unk_27DAB1080, &unk_22F7714C0);
    sub_22F120ADC(v17, &unk_27DAB1080, &unk_22F7714C0);
    if (v93)
    {
      break;
    }

    v89 = v118;
LABEL_85:
    v19 = v107;
    v85 = v114 + v106;
    v88 = v112 - 1;
    a4 = v110 + v106;
    if (++v115 != v107)
    {
      goto LABEL_86;
    }

    v6 = v101;
    v21 = v102;
    a3 = v105;
    if (v107 < v102)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v109;
    }

    else
    {
      v20 = sub_22F13D970(0, *(v109 + 2) + 1, 1, v109);
    }

    v4 = *(v20 + 2);
    v40 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v40 >> 1)
    {
      v20 = sub_22F13D970((v40 > 1), v4 + 1, 1, v20);
    }

    *(v20 + 2) = a4;
    v41 = &v20[16 * v4];
    *(v41 + 4) = v21;
    *(v41 + 5) = v19;
    v115 = *v104;
    if (!v115)
    {
      goto LABEL_134;
    }

    if (v4)
    {
      while (2)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          v47 = &v20[16 * a4 + 32];
          v48 = *(v47 - 64);
          v49 = *(v47 - 56);
          v53 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          if (v53)
          {
            goto LABEL_111;
          }

          v52 = *(v47 - 48);
          v51 = *(v47 - 40);
          v53 = __OFSUB__(v51, v52);
          v45 = v51 - v52;
          v46 = v53;
          if (v53)
          {
            goto LABEL_112;
          }

          v54 = &v20[16 * a4];
          v56 = *v54;
          v55 = *(v54 + 1);
          v53 = __OFSUB__(v55, v56);
          v57 = v55 - v56;
          if (v53)
          {
            goto LABEL_114;
          }

          v53 = __OFADD__(v45, v57);
          v58 = v45 + v57;
          if (v53)
          {
            goto LABEL_117;
          }

          if (v58 >= v50)
          {
            v76 = &v20[16 * v42 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v53 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v53)
            {
              goto LABEL_121;
            }

            if (v45 < v79)
            {
              v42 = a4 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v46)
            {
              goto LABEL_113;
            }

            v59 = &v20[16 * a4];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_116;
            }

            v65 = &v20[16 * v42 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_120;
            }

            if (v63 + v68 < v45)
            {
              goto LABEL_66;
            }

            if (v45 < v68)
            {
              v42 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v43 = *(v20 + 4);
            v44 = *(v20 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
            goto LABEL_52;
          }

          v69 = &v20[16 * a4];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_66:
          if (v64)
          {
            goto LABEL_115;
          }

          v72 = &v20[16 * v42];
          v74 = *(v72 + 4);
          v73 = *(v72 + 5);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_118;
          }

          if (v75 < v63)
          {
            break;
          }
        }

        v4 = v42 - 1;
        if (v42 - 1 >= a4)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v80 = v20;
        a4 = *&v20[16 * v4 + 32];
        v81 = *&v20[16 * v42 + 40];
        sub_22F333DD4(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v20[16 * v42 + 32], *a3 + *(v113 + 72) * v81, v115);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v81 < a4)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_22F3F5F98(v80);
        }

        if (v4 >= *(v80 + 2))
        {
          goto LABEL_110;
        }

        v82 = &v80[16 * v4];
        *(v82 + 4) = a4;
        *(v82 + 5) = v81;
        v119 = v80;
        v4 = &v119;
        sub_22F3F5F0C(v42);
        v20 = v119;
        a4 = *(v119 + 2);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  if (v83)
  {
    v4 = v116;
    sub_22F3343A4(a4, v116);
    v89 = v118;
    swift_arrayInitWithTakeFrontToBack();
    sub_22F3343A4(v4, v90);
    v90 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
}

void sub_22F333DD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v46 = a1;
  v45 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v16;
    if (v16 < 1)
    {
      v26 = a4 + v16;
    }

    else
    {
      v24 = -v12;
      v25 = a4 + v16;
      v26 = v23;
      v37 = v24;
      v38 = a4;
      do
      {
        v35 = v26;
        v27 = a2;
        a2 += v24;
        v39 = v27;
        while (1)
        {
          v29 = v43;
          if (v27 <= a1)
          {
            v46 = v27;
            v44 = v35;
            goto LABEL_59;
          }

          v36 = v26;
          v43 += v24;
          v30 = v25 + v24;
          v31 = v40;
          sub_22F3342D0(v30, v40);
          v32 = v41;
          sub_22F3342D0(a2, v41);
          v33 = *(v42 + 48);
          v34 = sub_22F73F5C0();
          sub_22F120ADC(v32, &unk_27DAB1080, &unk_22F7714C0);
          sub_22F120ADC(v31, &unk_27DAB1080, &unk_22F7714C0);
          if (v34)
          {
            break;
          }

          v26 = v30;
          if (v29 < v25 || v43 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v29 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v25 = v30;
          v27 = v39;
          v28 = v30 > v38;
          v24 = v37;
          if (!v28)
          {
            a2 = v39;
            goto LABEL_58;
          }
        }

        if (v29 < v39 || v43 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v36;
          v24 = v37;
        }

        else
        {
          v26 = v36;
          v24 = v37;
          if (v29 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v38);
    }

LABEL_58:
    v46 = a2;
    v44 = v26;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v17 = a4 + v15;
    v44 = a4 + v15;
    if (v15 >= 1 && a2 < v43)
    {
      do
      {
        v19 = v40;
        sub_22F3342D0(a2, v40);
        v20 = v41;
        sub_22F3342D0(a4, v41);
        v21 = *(v42 + 48);
        v22 = sub_22F73F5C0();
        sub_22F120ADC(v20, &unk_27DAB1080, &unk_22F7714C0);
        sub_22F120ADC(v19, &unk_27DAB1080, &unk_22F7714C0);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v46 = a1;
      }

      while (a4 < v17 && a2 < v43);
    }
  }

LABEL_59:
  sub_22F3B681C(&v46, &v45, &v44);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3342D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F334348(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F3343A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1080, &unk_22F7714C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static UpNext.MatchingResult.match(source:target:)(void *a1, void *a2)
{
  static UpNext.MatchingResult.similarity(source:target:)(a1, a2, &v6);
  v3 = v8;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v6;
  *(v4 + 40) = v7;
  *(v4 + 48) = v3;
  swift_unknownObjectRetain();
  return v4;
}

void __swiftcall UpNext.MatchingDimensions.init(person:scene:location:date:meaning:memoryFeature:trip:)(PhotosGraph::UpNext::MatchingDimensions *__return_ptr retstr, Swift::Float person, Swift::Float scene, Swift::Float location, Swift::Float date, Swift::Float meaning, Swift::Float memoryFeature, Swift::Float trip)
{
  retstr->person = person;
  retstr->scene = scene;
  retstr->location = location;
  retstr->date = date;
  retstr->meaning = meaning;
  retstr->memoryFeature = memoryFeature;
  retstr->trip = trip;
}

uint64_t UpNext.MatchingResult.debugInfo.getter()
{
  v21 = *(v0 + 24);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  v18 = MEMORY[0x277D84F90];
  sub_22F146454(0, 7, 0);
  v1 = 32;
  v2 = v18;
  v3 = MEMORY[0x277D83A90];
  v4 = MEMORY[0x277D83B08];
  do
  {
    v5 = *&v20[v1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22F771340;
    *(v6 + 56) = v3;
    *(v6 + 64) = v4;
    *(v6 + 32) = v5;
    v7 = sub_22F740E60();
    v19 = v2;
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    if (v10 >= v9 >> 1)
    {
      v17 = v7;
      v12 = v8;
      sub_22F146454((v9 > 1), v10 + 1, 1);
      v8 = v12;
      v7 = v17;
      v2 = v19;
    }

    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
    v1 += 4;
  }

  while (v1 != 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v13 = sub_22F740DA0();
  v15 = v14;

  MEMORY[0x231900B10](v13, v15);

  MEMORY[0x231900B10](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_22F33469C(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_22F2F45E0(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_22F335A90(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22F33474C()
{
  v1 = *v0;
  v2 = 0x6E6F73726570;
  v3 = 0x654679726F6D656DLL;
  if (v1 != 5)
  {
    v3 = 1885958772;
  }

  v4 = 1702125924;
  if (v1 != 3)
  {
    v4 = 0x676E696E61656DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656E656373;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461636F6CLL;
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

uint64_t sub_22F334818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F337108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F334840(uint64_t a1)
{
  v2 = sub_22F336AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F33487C(uint64_t a1)
{
  v2 = sub_22F336AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpNext.MatchingDimensions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38E8, &qword_22F786300);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v14 = v1[4];
  v13 = v1[5];
  v15 = v1[6];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F336AA8();
  sub_22F742210();
  v25 = 0;
  sub_22F741FB0();
  if (!v2)
  {
    v24 = 1;
    sub_22F741FB0();
    v23 = 2;
    sub_22F741FB0();
    v22 = 3;
    sub_22F741FB0();
    v21 = 4;
    sub_22F741FB0();
    v20 = 5;
    sub_22F741FB0();
    v19 = 6;
    sub_22F741FB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t UpNext.MatchingDimensions.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB38F8, &qword_22F786308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F336AA8();
  sub_22F742200();
  if (!v2)
  {
    v26[15] = 0;
    sub_22F741EE0();
    v12 = v11;
    v26[14] = 1;
    sub_22F741EE0();
    v14 = v13;
    v26[13] = 2;
    sub_22F741EE0();
    v16 = v15;
    v26[12] = 3;
    sub_22F741EE0();
    v18 = v17;
    v26[11] = 4;
    sub_22F741EE0();
    v20 = v19;
    v26[10] = 5;
    sub_22F741EE0();
    v23 = v22;
    v26[9] = 6;
    sub_22F741EE0();
    v25 = v24;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v18;
    a2[4] = v20;
    a2[5] = v23;
    a2[6] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

float UpNext.MatchingResult.similarity.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 24) = result;
  return result;
}

float UpNext.MatchingResult.__allocating_init(target:similarity:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = *(a2 + 24);
  *(v4 + 16) = a1;
  *(v4 + 24) = *a2;
  *(v4 + 40) = *(a2 + 16);
  *(v4 + 48) = result;
  return result;
}

uint64_t UpNext.MatchingResult.init(target:similarity:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  *(v2 + 48) = v3;
  return v2;
}

id static UpNext.MatchingResult.similarity(source:target:)@<X0>(void *a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  v37 = sub_22F73F690();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = [a1 personNodes];
  v14 = [v13 elementIdentifiers];

  v15 = [a2 personNodes];
  v16 = [v15 elementIdentifiers];

  sub_22F335444(v16);
  v18 = v17;

  v19 = [a1 sceneNodes];
  v20 = [v19 elementIdentifiers];

  v21 = [a2 sceneNodes];
  v22 = [v21 elementIdentifiers];

  sub_22F335500(v22);
  v24 = v23;

  _s11PhotosGraph6UpNextO14MatchingResultC18locationSimilarityySfSo04PGUpdE4Info_p_So0idE6Target_ptFZ_0(a1, a2);
  v26 = v25;
  v27 = [a2 representativeDate];
  if (v27)
  {
    v28 = v27;
    sub_22F73F640();

    v29 = v37;
    (*(v6 + 32))(v12, v10, v37);
    _s11PhotosGraph6UpNextO14MatchingResultC15_dateSimilarity_10targetDateSfSo04PGUpdE4Info_p_10Foundation0J0VtFZ_0(a1);
    v31 = v30;
    (*(v6 + 8))(v12, v29);
  }

  else
  {
    v31 = 2143289344;
  }

  v32 = sub_22F336DD0(a1, a2, &selRef_meaningNodes);
  v33 = sub_22F336DD0(a1, a2, &selRef_memoryFeatureNodes);
  result = [a1 isTripMemory];
  if (!result || (result = [a2 isTripMemory], v35 = 1.0, (result & 1) == 0))
  {
    v35 = 0.0;
  }

  *a3 = v18;
  *(a3 + 1) = v24;
  *(a3 + 2) = v26;
  *(a3 + 3) = v31;
  a3[4] = v32;
  a3[5] = v33;
  a3[6] = v35;
  return result;
}

float sub_22F335190(void *a1, void *a2, SEL *a3, float (*a4)(id))
{
  v7 = [a1 *a3];
  v8 = [v7 elementIdentifiers];

  v9 = [a2 *a3];
  v10 = [v9 elementIdentifiers];

  v11 = a4(v10);
  return v11;
}

float static UpNext.MatchingResult.dateSimilarity(_:_:)(void *a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v18 - v11;
  v13 = [a2 representativeDate];
  if (!v13)
  {
    return NAN;
  }

  v14 = v13;
  sub_22F73F640();

  (*(v5 + 32))(v12, v8, v4);
  _s11PhotosGraph6UpNextO14MatchingResultC15_dateSimilarity_10targetDateSfSo04PGUpdE4Info_p_10Foundation0J0VtFZ_0(a1);
  v16 = v15;
  (*(v5 + 8))(v12, v4);
  return v16;
}

double static UpNext.MatchingResult.tripSimilarity(_:_:)(void *a1, void *a2)
{
  swift_getObjectType();

  return sub_22F336710(a1, a2);
}

id sub_22F335444(void *a1)
{
  v3 = [v1 identifierSetByIntersectingIdentifierSet_];
  [v3 count];

  [v1 count];
  return [a1 count];
}

void sub_22F335500(void *a1)
{
  v3 = [v1 count];
  v4 = [a1 count];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v1 identifierSetByIntersectingIdentifierSet_];
    [v6 count];
  }
}

void static UpNext.MatchingResult.logSimilarity(minValue:linearDissimilarity:maxValue:)(float a1, float a2, float a3)
{
  if (a1 <= a2 && a2 <= a3)
  {
    v5 = logf(a1);
    v6 = logf(a3);
    if (v5 > v6)
    {
      __break(1u);
    }

    else if (v5 != v6)
    {
      logf(a2);
      return;
    }

    __break(1u);
  }
}

float static UpNext.MatchingResult.weightedScore(similarity:weight:)(float a1, float a2)
{
  v2 = a1 + a1;
  v3 = (~LODWORD(a1) & 0x7F800000) != 0 || (LODWORD(a1) & 0x7FFFFF) == 0;
  result = fabsf(a2) * -0.25;
  v5 = (v2 + -1.0) * a2;
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t UpNext.MatchingResult.score(weights:)(float *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *(v1 + 28);
  v10 = *(v1 + 24);
  v11 = ~v10 & 0x7F800000;
  v12 = v10 & 0x7FFFFF;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  v14 = fabsf(v2);
  v15 = v2 * ((*(v1 + 24) + *(v1 + 24)) + -1.0);
  v16 = v14 * -0.25;
  if (!v13)
  {
    v15 = v16;
  }

  v17 = (~LODWORD(v9) & 0x7F800000) != 0 || (LODWORD(v9) & 0x7FFFFF) == 0;
  v18 = v3 * ((v9 + v9) + -1.0);
  v19 = fabsf(v3) * -0.25;
  if (v17)
  {
    v19 = v18;
  }

  v20 = *(v1 + 32);
  if ((~LODWORD(v20) & 0x7F800000) != 0 || (LODWORD(v20) & 0x7FFFFF) == 0)
  {
    v21 = (v20 + v20) + -1.0;
  }

  else
  {
    v4 = fabsf(v4);
    v21 = -0.25;
  }

  v22 = v4 * v21;
  v23 = *(v1 + 36);
  if ((~LODWORD(v23) & 0x7F800000) != 0 || (LODWORD(v23) & 0x7FFFFF) == 0)
  {
    v24 = (v23 + v23) + -1.0;
  }

  else
  {
    v5 = fabsf(v5);
    v24 = -0.25;
  }

  v25 = v5 * v24;
  v26 = *(v1 + 40);
  if ((~LODWORD(v26) & 0x7F800000) != 0 || (LODWORD(v26) & 0x7FFFFF) == 0)
  {
    v27 = (v26 + v26) + -1.0;
  }

  else
  {
    v7 = fabsf(v7);
    v27 = -0.25;
  }

  v28 = v7 * v27;
  v29 = *(v1 + 44);
  if ((~LODWORD(v29) & 0x7F800000) != 0 || (LODWORD(v29) & 0x7FFFFF) == 0)
  {
    v30 = (v29 + v29) + -1.0;
  }

  else
  {
    v6 = fabsf(v6);
    v30 = -0.25;
  }

  v31 = v6 * v30;
  v32 = *(v1 + 48);
  if ((~LODWORD(v32) & 0x7F800000) != 0 || (LODWORD(v32) & 0x7FFFFF) == 0)
  {
    v33 = (v32 + v32) + -1.0;
  }

  else
  {
    v8 = fabsf(v8);
    v33 = -0.25;
  }

  v34 = ((((((v15 + 0.0) + v19) + v22) + v25) + v28) + v31) + (v8 * v33);
  type metadata accessor for UpNext.ScoredMatchingResult();
  v35 = swift_allocObject();
  *(v35 + 16) = v1;
  *(v35 + 24) = v34;

  return v35;
}

uint64_t UpNext.MatchingResult.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t UpNext.MatchingResult.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t UpNext.ScoredMatchingResult.description.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000025, 0x800000022F79B2C0);
  v2 = *(v0 + 16);
  v3 = UpNext.MatchingResult.debugInfo.getter();
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](0x3A65726F6373202CLL, 0xE900000000000020);
  v4 = *(v1 + 24);
  sub_22F7413E0();
  MEMORY[0x231900B10](41, 0xE100000000000000);
  return 0;
}

uint64_t UpNext.ScoredMatchingResult.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UpNext.ScoredMatchingResult.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t UpNext.ScoredMatchingResults.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return v0;
}

uint64_t UpNext.ScoredMatchingResults.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_22F335A90(uint64_t *a1)
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
        type metadata accessor for UpNext.ScoredMatchingResult();
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_22F335CC0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_22F335B90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F335B90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = *(v8 + 24);
      v12 = *(*v6 + 24);
      if (v11 == v12)
      {
        v13 = *(*(v8 + 16) + 16);

        [v13 nodeIdentifier];
        [*(*(v10 + 16) + 16) nodeIdentifier];
        v14 = sub_22F741770();

        if (v14 <= 0)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v11)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v15;
      --v6;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v18 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F335CC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v101 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_97:
    v7 = *v101;
    if (!*v101)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_99:
      v94 = *(v9 + 2);
      if (v94 >= 2)
      {
        while (1)
        {
          v95 = *v6;
          if (!*v6)
          {
            goto LABEL_133;
          }

          v6 = *&v9[16 * v94];
          v96 = *&v9[16 * v94 + 24];
          sub_22F3363E8((v95 + 8 * v6), (v95 + 8 * *&v9[16 * v94 + 16]), (v95 + 8 * v96), v7);
          if (v5)
          {
          }

          if (v96 < v6)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_22F3F5F98(v9);
          }

          if (v94 - 2 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v97 = &v9[16 * v94];
          *v97 = v6;
          *(v97 + 1) = v96;
          result = sub_22F3F5F0C(v94 - 1);
          v94 = *(v9 + 2);
          v6 = a3;
          if (v94 <= 1)
          {
          }
        }
      }
    }

LABEL_129:
    result = sub_22F3F5F98(v9);
    v9 = result;
    goto LABEL_99;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  v103 = v9;
  if (v8 + 1 < v7)
  {
    v12 = *v6;
    v13 = *(v12 + 8 * v11);
    v14 = *(v12 + 8 * v8);
    v15 = *(v13 + 24);
    v16 = *(v14 + 24);
    if (v15 == v16)
    {
      v17 = *(*(v13 + 16) + 16);

      [v17 nodeIdentifier];
      [*(*(v14 + 16) + 16) nodeIdentifier];
      v18 = sub_22F741770();

      v19 = v18 > 0;
    }

    else
    {
      v19 = v16 < v15;
    }

    v105 = v19;
    v10 = v8;
    v11 = v8 + 2;
    if (v8 + 2 < v7)
    {
      v20 = v12 + 8 * v8 + 16;
      do
      {
        v21 = v11;
        v22 = *(v20 - 8);
        v23 = *(*v20 + 24);
        v24 = *(v22 + 24);
        if (v23 == v24)
        {
          v25 = *(*(*v20 + 16) + 16);

          [v25 nodeIdentifier];
          v9 = v103;
          [*(*(v22 + 16) + 16) nodeIdentifier];
          v26 = sub_22F741770();

          if (((v105 ^ (v26 < 1)) & 1) == 0)
          {
LABEL_14:
            v11 = v21;
            goto LABEL_16;
          }
        }

        else if (v105 == v24 >= v23)
        {
          goto LABEL_14;
        }

        v11 = v21 + 1;
        v20 += 8;
      }

      while (v7 != v21 + 1);
      v11 = v7;
LABEL_16:
      v10 = v8;
    }

    v6 = a3;
    if (v105)
    {
      if (v11 < v10)
      {
        goto LABEL_126;
      }

      if (v10 < v11)
      {
        v27 = 8 * v11 - 8;
        v28 = 8 * v10;
        v29 = v11;
        v30 = v10;
        do
        {
          if (v30 != --v29)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v31 = *(v32 + v28);
            *(v32 + v28) = *(v32 + v27);
            *(v32 + v27) = v31;
          }

          ++v30;
          v27 -= 8;
          v28 += 8;
        }

        while (v30 < v29);
      }
    }
  }

  v33 = *(v6 + 8);
  if (v11 >= v33)
  {
    goto LABEL_46;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_125;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_46;
  }

  v34 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_127;
  }

  if (v34 >= v33)
  {
    v34 = *(v6 + 8);
  }

  if (v34 < v10)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v11 == v34)
  {
    goto LABEL_46;
  }

  v98 = v5;
  v35 = *v6;
  v36 = v35 + 8 * v11 - 8;
  v100 = v10;
  v37 = v10 - v11;
  v104 = v34;
LABEL_36:
  v106 = v11;
  v38 = *(v35 + 8 * v11);
  v39 = v37;
  v7 = v36;
  while (1)
  {
    v40 = *v7;
    v41 = *(v38 + 24);
    v42 = *(*v7 + 24);
    if (v41 == v42)
    {
      v43 = *(*(v38 + 16) + 16);

      [v43 nodeIdentifier];
      [*(*(v40 + 16) + 16) nodeIdentifier];
      v44 = sub_22F741770();

      if (v44 <= 0)
      {
        goto LABEL_35;
      }
    }

    else if (v42 >= v41)
    {
      goto LABEL_35;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v7;
    v38 = *(v7 + 8);
    *v7 = v38;
    *(v7 + 8) = v45;
    v7 -= 8;
    if (__CFADD__(v39++, 1))
    {
LABEL_35:
      v11 = v106 + 1;
      v36 += 8;
      --v37;
      if (v106 + 1 != v104)
      {
        goto LABEL_36;
      }

      v11 = v104;
      v5 = v98;
      v6 = a3;
      v9 = v103;
      v10 = v100;
LABEL_46:
      if (v11 < v10)
      {
        goto LABEL_124;
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
      *(v50 + 5) = v11;
      v107 = v11;
      v51 = *v101;
      if (!*v101)
      {
        goto LABEL_134;
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
LABEL_66:
            if (v56)
            {
              goto LABEL_113;
            }

            v69 = &v9[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_116;
            }

            v75 = &v9[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_120;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v79 = &v9[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_80:
          if (v74)
          {
            goto LABEL_115;
          }

          v82 = &v9[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_87:
          v90 = v52 - 1;
          if (v52 - 1 >= v49)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
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
            goto LABEL_128;
          }

          v91 = *v6;
          if (!*v6)
          {
            goto LABEL_131;
          }

          v92 = v6;
          v6 = *&v9[16 * v90 + 32];
          v7 = *&v9[16 * v52 + 40];
          sub_22F3363E8((v91 + 8 * v6), (v91 + 8 * *&v9[16 * v52 + 32]), (v91 + 8 * v7), v51);
          if (v5)
          {
          }

          if (v7 < v6)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_22F3F5F98(v9);
          }

          if (v90 >= *(v9 + 2))
          {
            goto LABEL_110;
          }

          v93 = &v9[16 * v90];
          *(v93 + 4) = v6;
          *(v93 + 5) = v7;
          result = sub_22F3F5F0C(v52);
          v49 = *(v9 + 2);
          v6 = v92;
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
          goto LABEL_111;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_112;
        }

        v64 = &v9[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_114;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_117;
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
            goto LABEL_121;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_66;
      }

LABEL_3:
      v7 = *(v6 + 8);
      v8 = v107;
      if (v107 >= v7)
      {
        goto LABEL_97;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_22F3363E8(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *(*v6 + 24);
      v17 = *(*v4 + 24);
      if (v16 == v17)
      {
        v18 = *(*(*v6 + 16) + 16);

        [v18 nodeIdentifier];
        [*(*(v15 + 16) + 16) nodeIdentifier];
        v19 = sub_22F741770();

        if (v19 > 0)
        {
          goto LABEL_13;
        }
      }

      else if (v17 < v16)
      {
LABEL_13:
        v20 = v6;
        v21 = v7 == v6;
        v6 += 8;
        if (v21)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v7 = *v20;
        goto LABEL_15;
      }

      v20 = v4;
      v21 = v7 == v4;
      v4 += 8;
      if (!v21)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_27:
    v22 = v6 - 8;
    v5 -= 8;
    v23 = v14;
    v32 = v6 - 8;
    while (1)
    {
      v25 = *(v23 - 1);
      v23 -= 8;
      v24 = v25;
      v26 = *v22;
      v27 = *(v25 + 24);
      v28 = *(*v22 + 24);
      if (v27 == v28)
      {
        v29 = *(*(v24 + 16) + 16);

        [v29 nodeIdentifier];
        [*(*(v26 + 16) + 16) nodeIdentifier];
        v30 = sub_22F741770();

        if (v30 > 0)
        {
          goto LABEL_35;
        }
      }

      else if (v28 < v27)
      {
LABEL_35:
        if (v5 + 8 != v6)
        {
          *v5 = *v32;
        }

        if (v14 <= v4 || (v6 -= 8, v32 <= v7))
        {
          v6 = v32;
          break;
        }

        goto LABEL_27;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v23;
      }

      v5 -= 8;
      v14 = v23;
      v22 = v6 - 8;
      if (v23 <= v4)
      {
        v14 = v23;
        break;
      }
    }
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

double sub_22F336710(void *a1, void *a2)
{
  if (![a1 isTripMemory])
  {
    return 0.0;
  }

  v3 = [a2 isTripMemory];
  LODWORD(result) = 1.0;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

uint64_t _s11PhotosGraph6UpNextO21ScoredMatchingResultsC5score08matchingG06source7weightsAEXDSayAC0F6ResultCG_So04PGUpdF4Info_pAC0F10DimensionsVtFZ_0(unint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[6];
  if (a1 >> 62)
  {
    v12 = sub_22F741A00();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v34 = MEMORY[0x277D84F90];
    result = sub_22F741BD0();
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v15 + 1;
        MEMORY[0x2319016F0]();
        v35 = __PAIR64__(v6, v5);
        v36 = v7;
        v37 = v8;
        v38 = v9;
        v39 = v10;
        v40 = v11;
        UpNext.MatchingResult.score(weights:)(&v35);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        v17 = *(v34 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v15 = v16;
      }

      while (v12 != v16);
    }

    else
    {
      v18 = (a1 + 32);
      do
      {
        v19 = *v18++;
        v35 = __PAIR64__(v6, v5);
        v36 = v7;
        v37 = v8;
        v38 = v9;
        v39 = v10;
        v40 = v11;
        UpNext.MatchingResult.score(weights:)(&v35);
        sub_22F741BA0();
        v20 = *(v34 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        --v12;
      }

      while (v12);
    }

    v13 = v34;
  }

  v41 = v13;
  sub_22F33469C(&v41);
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v21 = sub_22F740B90();
  __swift_project_value_buffer(v21, qword_2810B4CB0);
  v22 = sub_22F740B70();
  v23 = sub_22F7415F0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136315138;
    swift_beginAccess();
    v26 = type metadata accessor for UpNext.ScoredMatchingResult();

    v28 = MEMORY[0x231900D40](v27, v26);
    v30 = v29;

    v31 = sub_22F145F20(v28, v30, &v35);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_22F0FC000, v22, v23, "scoredMatchingResults: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x2319033A0](v25, -1, -1);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  swift_beginAccess();
  v32 = v41;
  type metadata accessor for UpNext.ScoredMatchingResults();
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = v5;
  *(v33 + 28) = v6;
  *(v33 + 32) = v7;
  *(v33 + 36) = v8;
  *(v33 + 40) = v9;
  *(v33 + 44) = v10;
  *(v33 + 48) = v11;
  *(v33 + 56) = v32;
  swift_unknownObjectRetain();
  return v33;
}

unint64_t sub_22F336AA8()
{
  result = qword_27DAB38F0;
  if (!qword_27DAB38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB38F0);
  }

  return result;
}

void _s11PhotosGraph6UpNextO14MatchingResultC18locationSimilarityySfSo04PGUpdE4Info_p_So0idE6Target_ptFZ_0(void *a1, void *a2)
{
  v3 = [a1 representativeLocation];
  if (v3)
  {
    v4 = v3;
    v5 = [a2 representativeLocation];
    if (v5)
    {
      v6 = v5;
      [v4 distanceFromLocation_];
      v8 = v7;

      v9 = v8;
      if (v9 >= 100000.0 && v9 <= 3000000.0)
      {
        v10 = v8;
        logf(v10);
      }
    }

    else
    {
    }
  }
}

void _s11PhotosGraph6UpNextO14MatchingResultC15_dateSimilarity_10targetDateSfSo04PGUpdE4Info_p_10Foundation0J0VtFZ_0(void *a1)
{
  v2 = sub_22F73F690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = [a1 representativeDate];
  if (v10)
  {
    v11 = v10;
    sub_22F73F640();

    (*(v3 + 32))(v9, v7, v2);
    sub_22F73F590();
    *&v12 = v12;
    v13 = fabsf(*&v12);
    if (v13 >= 1209600.0)
    {
      (*(v3 + 8))(v9, v2);
      if (v13 <= 259200000.0)
      {
        logf(v13);
      }
    }

    else
    {
      (*(v3 + 8))(v9, v2);
    }
  }
}

float sub_22F336DD0(void *a1, void *a2, SEL *a3)
{
  v5 = [a1 *a3];
  if (!v5)
  {
    return NAN;
  }

  v6 = v5;
  v7 = [a2 *a3];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 elementIdentifiers];
    v10 = [v8 elementIdentifiers];
    sub_22F335500(v10);
    v12 = v11;

    v6 = v10;
  }

  else
  {
    v12 = NAN;
  }

  return v12;
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_22F336EEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F336F0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

unint64_t sub_22F337004()
{
  result = qword_27DAB3900;
  if (!qword_27DAB3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3900);
  }

  return result;
}

unint64_t sub_22F33705C()
{
  result = qword_27DAB3908;
  if (!qword_27DAB3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3908);
  }

  return result;
}

unint64_t sub_22F3370B4()
{
  result = qword_27DAB3910;
  if (!qword_27DAB3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3910);
  }

  return result;
}

uint64_t sub_22F337108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696E61656DLL && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654679726F6D656DLL && a2 == 0xED00006572757461 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1885958772 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 static MaestroMatrixGenerator.generateSpecifications(fromSpecificationsURL:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_22F73F480();
  if (!v1)
  {
    v6 = v3;
    v7 = v4;
    v8 = sub_22F73F310();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_22F73F300();
    sub_22F1DF35C();
    sub_22F73F2F0();
    sub_22F133BF0(v6, v7);

    result = v12;
    *a1 = v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
  }

  return result;
}

uint64_t sub_22F337440()
{
  v1 = *v0;
  v2 = 0x7364726F7779656BLL;
  v3 = 1937207154;
  v4 = 0x736E6D756C6F63;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F3374D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F338B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F3374FC(uint64_t a1)
{
  v2 = sub_22F3377F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F337538(uint64_t a1)
{
  v2 = sub_22F3377F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaestroDataFrameSpecifications.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3920, &unk_22F7865E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v15[3] = v1[2];
  v16 = v9;
  v12 = v1[5];
  v15[0] = v1[4];
  v15[1] = v12;
  v15[2] = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3377F0();

  sub_22F742210();
  v18 = v10;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8);
  sub_22F741FE0();
  if (v2)
  {
  }

  else
  {

    v18 = v16;
    v17 = 1;
    sub_22F741FE0();
    LOBYTE(v18) = 2;
    sub_22F741FC0();
    LOBYTE(v18) = 3;
    sub_22F741FC0();
    LOBYTE(v18) = 4;
    sub_22F741F80();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22F3377F0()
{
  result = qword_2810A9E30;
  if (!qword_2810A9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E30);
  }

  return result;
}

uint64_t MaestroDataFrameSpecifications.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3928, &qword_22F7865F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3377F0();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v23 = 0;
  sub_22F1BA494(&qword_2810A92D8);
  sub_22F741F10();
  v22 = v24;
  v23 = 1;
  sub_22F741F10();
  v12 = v24;
  LOBYTE(v24) = 2;
  v21 = sub_22F741EF0();
  LOBYTE(v24) = 3;
  v20 = sub_22F741EF0();
  LOBYTE(v24) = 4;
  v13 = sub_22F741EB0();
  v16 = v15;
  v17 = v13;
  (*(v6 + 8))(v9, v5);
  v18 = v21;
  *v11 = v22;
  v11[1] = v12;
  v19 = v20;
  v11[2] = v18;
  v11[3] = v19;
  v11[4] = v17;
  v11[5] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F337BB4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v9 = result;
  if (result)
  {
    result = sub_22F741200();
    *(result + 16) = v9;
  }

  else
  {
    result = MEMORY[0x277D84F90];
  }

  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_27;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (v14)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v11 < 1)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    v11 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  LODWORD(v11) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v11 = v11;
    if (v11 < 1)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v10)
    {
      if (v10 == 2)
      {
        v15 = *(a2 + 16);
      }

      else
      {
        v15 = a2;
      }
    }

    else
    {
      v15 = 0;
    }

    if (v9 >> 61)
    {
      goto LABEL_33;
    }

    v16 = 4 * v9;
    if (v11 < (4 * v9))
    {
      v16 = v11;
    }

    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_34;
    }

    if (v17 < v15)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v15 != v17)
    {
      v18 = result;
      sub_22F73F4E0();
      result = v18;
    }

LABEL_27:
    v19 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      if (v19 <= v9)
      {
        *(result + 16) = v19;
        return result;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_22F337D24(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v13 = *a2;
  v51 = a2[1];
  v14 = a2[3];
  v56 = a2[2];
  v54 = v13;
  v55 = v14;
  v15 = a2[4];
  v16 = a2[5];
  v53 = v15;
  v17 = objc_autoreleasePoolPush();
  v18 = objc_autoreleasePoolPush();
  v19 = objc_autoreleasePoolPush();
  v20 = sub_22F73F480();
  if (v2)
  {
    objc_autoreleasePoolPop(v19);
    objc_autoreleasePoolPop(v18);
    objc_autoreleasePoolPop(v17);
    return v3;
  }

  v22 = v20;
  v45 = v18;
  v46 = v10;
  v47 = v12;
  v48 = v17;
  v49 = v6;
  v50 = v16;
  v23 = v56;
  v24 = v55;
  if ((v55 * v56) >> 64 != (v55 * v56) >> 63)
  {
    __break(1u);
LABEL_21:
    result = sub_22F2F2C80(a1);
    a1 = result;
    goto LABEL_14;
  }

  v25 = v21;
  sub_22F337BB4(v55 * v56, v20, v21, v55, v56);
  v44 = 0;
  sub_22F133BF0(v22, v25);
  objc_autoreleasePoolPop(v19);
  v26 = v47;
  sub_22F73FCC0();
  objc_autoreleasePoolPop(v45);
  v27 = v52;
  v28 = v46;
  v29 = v49;
  (*(v52 + 16))(v46, v26, v49);
  v30 = objc_allocWithZone(sub_22F73FBB0());
  v31 = MEMORY[0x2318FF740](v28);
  v23 = [objc_allocWithZone(MEMORY[0x277D22C38]) initWithWrapper_];

  (*(v27 + 8))(v26, v29);
  objc_autoreleasePoolPop(v48);
  a1 = v54;
  v32 = *(v54 + 16);
  if (!v32)
  {
LABEL_12:

LABEL_16:
    v38 = objc_allocWithZone(MEMORY[0x277D22C08]);
    v39 = v23;
    v40 = sub_22F740DF0();
    v41 = sub_22F741160();
    v42 = sub_22F741160();

    v3 = [v38 initWithName:v40 rowLabels:v41 columnLabels:v42 matrix:v39];

    if (!v3)
    {
      sub_22F338D10();
      v3 = swift_allocError();
      *v43 = 0;
      swift_willThrow();
    }

    return v3;
  }

  v6 = 0;
  v10 = 0;
  while (1)
  {
    v33 = *(a1 + v6 + 32) == 0x7265776F6C46 && *(a1 + v6 + 40) == 0xE600000000000000;
    if (v33 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    ++v10;
    v6 += 16;
    if (v32 == v10)
    {
      goto LABEL_12;
    }
  }

  v22 = sub_22F740E20();
  v24 = v34;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v10 < *(a1 + 16))
  {
    v36 = a1 + v6;
    v37 = *(a1 + v6 + 40);
    *(v36 + 32) = v22;
    *(v36 + 40) = v24;

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F338140(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_2810A9AB0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v85 = a1;
    v5 = qword_2810B4DD8;
    *&v6 = CACurrentMediaTime();
    sub_22F1B560C("GenerateFlexMusicMaestroDataFrame", 33, 2u, v6, 0, v5, v94);
    v7 = *(a2 + 16);
    v84 = v7;
    if (v7)
    {
      v8 = sub_22F10B348(v7, 0);
      v9 = sub_22F11A438(&v93, v8 + 4, v7, a2);

      sub_22F0FF590();
      if (v9 == v7)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v8 = MEMORY[0x277D84F90];
LABEL_6:
    v93 = v8;

    v10 = v3;
    sub_22F1AB0EC(&v93);
    if (v3)
    {
      goto LABEL_72;
    }

    v11 = *(v93 + 2);

    v81 = a1;
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = (a1 + 40);
    v14 = MEMORY[0x277D84F98];
    while (1)
    {
      v16 = *(a1 + 16);
      if (v12 == v16)
      {
        goto LABEL_24;
      }

      if (v12 >= v16)
      {
        goto LABEL_66;
      }

      v3 = v14;
      v17 = *(v13 - 1);
      a2 = *v13;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v3;
      a1 = sub_22F1229E8(v17, a2);
      v20 = v3[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = &v20[v21];
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v3[3] < v23)
      {
        sub_22F125704(v23, isUniquelyReferenced_nonNull_native);
        v3 = v93;
        a1 = sub_22F1229E8(v17, a2);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_71;
        }

LABEL_18:
        if (v24)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v3 = &v93;
      v30 = a1;
      sub_22F1341B0();
      a1 = v30;
      if (v24)
      {
LABEL_9:
        v15 = a1;

        v14 = v93;
        *(*(v93 + 7) + 8 * v15) = v12;

        goto LABEL_10;
      }

LABEL_19:
      v26 = v93;
      *&v93[8 * (a1 >> 6) + 64] |= 1 << a1;
      v27 = (*(v26 + 6) + 16 * a1);
      *v27 = v17;
      v27[1] = a2;
      v14 = v26;
      *(*(v26 + 7) + 8 * a1) = v12;

      v28 = *(v14 + 2);
      v22 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v22)
      {
        goto LABEL_68;
      }

      *(v14 + 2) = v29;
LABEL_10:
      ++v12;
      v13 += 2;
      a1 = v81;
      if (v11 == v12)
      {
        goto LABEL_24;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v78 = a1;
    swift_once();
    a1 = v78;
  }

  v14 = MEMORY[0x277D84F98];
LABEL_24:

  v3 = v85;
  v31 = *(v85 + 16);
  v87 = v14;
  if (!v31)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = v84;
    goto LABEL_28;
  }

  v32 = sub_22F10B348(v31, 0);
  a2 = sub_22F120B3C(&v93, v32 + 32, v31, v85);
  v10 = v93;

  sub_22F0FF590();
  v33 = v84;
  if (a2 == v31)
  {
LABEL_28:
    v93 = v32;
    sub_22F1AB0EC(&v93);
    v34 = v93;
    a1 = [objc_allocWithZone(MEMORY[0x277D22C60]) init];
    v86 = v34;
    v82 = *(v34 + 2);
    v83 = a1;
    if (v82)
    {
      v35 = 0;
      v79 = 4 * v33;
      v80 = v34 + 32;
      do
      {
        if (v35 >= *(v86 + 2))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        if (v3[2] && (v39 = &v80[16 * v35], v40 = *v39, v41 = v39[1], , v42 = sub_22F1229E8(v40, v41), v44 = v43, , (v44 & 1) != 0))
        {
          v45 = *&v3[7][8 * v42];

          if (v33)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v45 = MEMORY[0x277D84F98];
          if (v33)
          {
LABEL_37:
            v46 = sub_22F741200();
            *(v46 + 16) = v33;
            bzero((v46 + 32), v79);
            goto LABEL_38;
          }
        }

        v46 = MEMORY[0x277D84F90];
LABEL_38:
        v47 = 0;
        a1 = v35 + 1;
        a2 = v45 + 64;
        v48 = 1 << *(v45 + 32);
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v50 = v49 & *(v45 + 64);
        v51 = (v48 + 63) >> 6;
        v90 = v45;
        v91 = v46;
        v88 = a1;
        v89 = v46 + 32;
        while (v50)
        {
          v52 = v47;
LABEL_48:
          v53 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v54 = v53 | (v52 << 6);
          v55 = (*(v45 + 48) + 16 * v54);
          v3 = *v55;
          v56 = v55[1];
          v57 = *(*(v45 + 56) + 4 * v54);
          v58 = *(v14 + 2);

          if (v58 && (v59 = sub_22F1229E8(v3, v56), (v60 & 1) != 0))
          {
            v61 = v59;

            v62 = *(*(v14 + 7) + 8 * v61);
            if ((v62 & 0x8000000000000000) != 0)
            {
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if (v62 >= *(v91 + 16))
            {
              goto LABEL_64;
            }

            *(v89 + 4 * v62) = v57;
            v47 = v52;
          }

          else
          {
            v63 = sub_22F7415E0();
            if (qword_27DAAFCD8 != -1)
            {
              v69 = v63;
              swift_once();
              v63 = v69;
            }

            v92 = v63;
            v64 = qword_27DAB2038;
            if (os_log_type_enabled(qword_27DAB2038, v63))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v93 = v66;
              *v65 = 136315138;
              v3 = sub_22F145F20(v3, v56, &v93);

              *(v65 + 4) = v3;
              _os_log_impl(&dword_22F0FC000, v64, v92, "Flex Music song has weighted keyword (%s not in input keyword set.", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v66);
              v67 = v66;
              v45 = v90;
              MEMORY[0x2319033A0](v67, -1, -1);
              v68 = v65;
              v14 = v87;
              a1 = MEMORY[0x2319033A0](v68, -1, -1);
            }

            else
            {
            }

            v47 = v52;
          }
        }

        while (1)
        {
          v52 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v52 >= v51)
          {
            break;
          }

          v50 = *(a2 + 8 * v52);
          ++v47;
          if (v50)
          {
            goto LABEL_48;
          }
        }

        v36 = objc_allocWithZone(sub_22F73FBE0());
        v37 = MEMORY[0x2318FF780](v91);
        v38 = [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

        [v83 appendRow_];
        v35 = v88;
        v33 = v84;
        v3 = v85;
      }

      while (v88 != v82);
    }

    v70 = objc_allocWithZone(MEMORY[0x277D22C08]);
    v71 = v83;
    v72 = sub_22F740DF0();
    v73 = sub_22F741160();

    v74 = sub_22F741160();

    v75 = [v70 initWithName:v72 rowLabels:v73 columnLabels:v74 matrix:v71];

    if (v75)
    {
      sub_22F1B2BBC(0);
    }

    else
    {
      sub_22F338D10();
      swift_allocError();
      *v76 = 2;
      swift_willThrow();
    }

    return v75;
  }

  else
  {
    __break(1u);
LABEL_71:
    sub_22F7420C0();
    __break(1u);
LABEL_72:

    __break(1u);
  }

  return result;
}

uint64_t sub_22F338990(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22F3389D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F338A58()
{
  result = qword_27DAB3930;
  if (!qword_27DAB3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3930);
  }

  return result;
}

unint64_t sub_22F338AB0()
{
  result = qword_2810A9E20;
  if (!qword_2810A9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E20);
  }

  return result;
}

unint64_t sub_22F338B08()
{
  result = qword_2810A9E28;
  if (!qword_2810A9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9E28);
  }

  return result;
}

uint64_t sub_22F338B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_22F338D10()
{
  result = qword_27DAB3938;
  if (!qword_27DAB3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3938);
  }

  return result;
}

unint64_t sub_22F338D78()
{
  result = qword_27DAB3940;
  if (!qword_27DAB3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3940);
  }

  return result;
}

id SearchEntityPersister.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___PGSearchEntityPersister_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  v6 = __swift_project_value_buffer(v5, qword_2810B4CE0);
  (*(*(v5 - 8) + 16))(&v3[v4], v6, v5);
  *&v3[OBJC_IVAR___PGSearchEntityPersister_batchSize] = 100;
  *&v3[OBJC_IVAR___PGSearchEntityPersister_photoLibrary] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SearchEntityPersister.init(with:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___PGSearchEntityPersister_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  v6 = __swift_project_value_buffer(v5, qword_2810B4CE0);
  (*(*(v5 - 8) + 16))(&v1[v4], v6, v5);
  *&v1[OBJC_IVAR___PGSearchEntityPersister_batchSize] = 100;
  *&v1[OBJC_IVAR___PGSearchEntityPersister_photoLibrary] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t SearchEntityPersister.persistSearchEntities(from:progressReporter:)(void *a1)
{
  v2 = v1;
  v76 = *MEMORY[0x277D85DE8];
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v4 = qword_2810B4DF0;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityPersister.persistSearchEntities", 43, 2u, v5, 0, v4, v73);
  v6 = sub_22F7416B0();
  v59 = v7;
  *&v8 = CACurrentMediaTime();
  v63 = v4;
  sub_22F1B560C("SearchEntityPersister.persistSearchEntities - fetchPhotoKitObjects", 66, 2u, v8, 0, v4, v74);
  v9 = [a1 searchEntitiesByMomentUUID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32A8, &unk_22F7868C0);
  v10 = sub_22F740CA0();

  v11 = sub_22F339914(v10);
  v12 = [a1 mePersonEntity];
  v13 = a1;
  v14 = v6;
  v15 = [v13 relatedPersonAndPetDescriptorByRelatedPersonIdentifier];
  type metadata accessor for RelatedPersonEntityDescriptor();
  v16 = sub_22F740CA0();

  v17 = sub_22F339B88(v16, v12);
  v19 = v18;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  if (v65)
  {

LABEL_16:

    goto LABEL_17;
  }

  v54 = v19;
  v55 = v16;
  v56 = v17;
  v57 = v12;
  v58 = v14;
  v20 = sub_22F740B70();
  v21 = sub_22F7415C0();
  v22 = v2;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22F0FC000, v20, v21, "Completed fetching PhotoKit objects", v23, 2u);
    MEMORY[0x2319033A0](v23, -1, -1);
  }

  v61 = sub_22F7416B0();
  v53 = v24;
  *&v25 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityPersister.persistSearchEntities - performChanges", 60, 2u, v25, 0, v63, v75);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v52 = (v62 + 16);
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v60 = OBJC_IVAR___PGSearchEntityPersister_photoLibrary;
  swift_beginAccess();
  v26 = *(v64 + 16);
  v27 = v11;
  if (v26 < [v11 count])
  {
    while (1)
    {
      v66 = *&v22[v60];
      v28 = swift_allocObject();
      v28[2] = v64;
      v28[3] = v22;
      v28[4] = v27;
      v28[5] = v10;
      v29 = v10;
      v28[6] = v61;
      v28[7] = v62;
      v71 = sub_22F33B7F8;
      v72 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_22F33A524;
      v70 = &block_descriptor_12_1;
      v30 = _Block_copy(&aBlock);

      v31 = v22;
      v32 = v27;

      v33 = v61;

      aBlock = 0;
      v34 = [v66 performCancellableChangesAndWait:v30 error:&aBlock];
      _Block_release(v30);
      if (!v34)
      {
        break;
      }

      v35 = aBlock;
      v36 = *(v64 + 16);
      v27 = v11;
      v10 = v29;
      if (v36 >= [v32 count])
      {
        goto LABEL_10;
      }
    }

    v49 = aBlock;

    sub_22F73F370();

    swift_willThrow();

    goto LABEL_15;
  }

LABEL_10:

  v37 = *&v22[v60];
  v38 = swift_allocObject();
  v38[2] = v22;
  v38[3] = v56;
  v38[4] = v54;
  v38[5] = v55;
  v38[6] = v53;
  v38[7] = v62;
  v71 = sub_22F33B7C8;
  v72 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_22F33A524;
  v70 = &block_descriptor_32;
  v39 = _Block_copy(&aBlock);
  v40 = v56;
  v41 = v53;
  v42 = v22;

  aBlock = 0;
  v43 = [v37 performCancellableChangesAndWait:v39 error:&aBlock];
  _Block_release(v39);
  if (!v43)
  {
    v48 = aBlock;
    sub_22F73F370();

    swift_willThrow();

LABEL_15:

    goto LABEL_16;
  }

  v44 = aBlock;
  sub_22F1B2BBC(0);
  swift_beginAccess();
  v45 = *v52;
  if (!*v52)
  {

    sub_22F1B2BBC(0);

    goto LABEL_18;
  }

  v46 = *v52;
  swift_willThrow();
  v47 = v45;

LABEL_17:

  sub_22F1B2BBC(0);

LABEL_18:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F339914(uint64_t a1)
{
  v27 = [*(v1 + OBJC_IVAR___PGSearchEntityPersister_photoLibrary) librarySpecificFetchOptions];
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v16 = sub_22F740DF0();
    v17 = [ObjCClassFromMetadata localIdentifierWithUUID_];

    if (v17)
    {
      v18 = sub_22F740E20();
      v20 = v19;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22F13E1A8(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_22F13E1A8((v21 > 1), v22 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v22 + 1;
      v23 = v9 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
      v24 = swift_getObjCClassFromMetadata();
      v25 = sub_22F741160();

      v26 = [v24 fetchAssetCollectionsWithType:3 localIdentifiers:v25 options:v27];

      return v26;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F339B88(uint64_t a1, char *a2)
{
  if (!a2 || (v3 = *&a2[OBJC_IVAR___PGGraphSearchEntity_identifier + 8]) == 0)
  {
    sub_22F15022C(MEMORY[0x277D84F90]);
    return 0;
  }

  v5 = *&a2[OBJC_IVAR___PGGraphSearchEntity_identifier];
  v6 = *(v2 + OBJC_IVAR___PGSearchEntityPersister_photoLibrary);
  v7 = a2;

  v8 = [v6 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F771350;
  *(v9 + 32) = sub_22F742140();
  *(v9 + 40) = sub_22F742140();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v10 = sub_22F741160();

  [v8 setIncludedDetectionTypes_];

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F771340;
  *(v12 + 32) = v5;
  *(v12 + 40) = v3;
  v13 = sub_22F741160();

  v14 = v8;
  v15 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v16 = [v11 fetchPersonsWithLocalIdentifiers:v13 options:v14];

  v17 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v18 = [v16 fetchedObjects];

  if (!v18)
  {
LABEL_44:

    sub_22F15022C(MEMORY[0x277D84F90]);
    return 0;
  }

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v19 = sub_22F741180();

  if (v19 >> 62)
  {
    goto LABEL_42;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:

    goto LABEL_44;
  }

  while ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x2319016F0](0, v19);
LABEL_9:
    v48 = v20;

    v19 = *(a1 + 16);
    v47 = v7;
    v49 = v14;
    if (v19)
    {
      v21 = sub_22F10B348(v19, 0);
      v22 = sub_22F120B3C(&v53, v21 + 4, v19, a1);

      sub_22F0FF590();
      if (v22 != v19)
      {
        goto LABEL_48;
      }

      v14 = v49;
      v17 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
      v15 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
    }

    v23 = sub_22F741160();

    v24 = [v11 v15[364]];

    v25 = [v24 v17[391]];
    if (v25)
    {
      v26 = sub_22F741180();

      if (v26 >> 62)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_36:
        a1 = sub_22F741A00();
        if (!a1)
        {
LABEL_37:

          return v48;
        }

        goto LABEL_16;
      }
    }

    a1 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_37;
    }

LABEL_16:
    v7 = 0;
    v51 = v26 & 0xFFFFFFFFFFFFFF8;
    v52 = v26 & 0xC000000000000001;
    v11 = MEMORY[0x277D84F98];
    v50 = v26;
    while (1)
    {
      if (v52)
      {
        v29 = MEMORY[0x2319016F0](v7, v26);
      }

      else
      {
        if (v7 >= *(v51 + 16))
        {
          goto LABEL_39;
        }

        v29 = *(v26 + 8 * v7 + 32);
      }

      v30 = v29;
      v14 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v31 = [v29 localIdentifier];
      v32 = sub_22F740E20();
      v15 = v33;

      v17 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v11;
      v19 = sub_22F1229E8(v32, v15);
      v36 = v11[2];
      v37 = (v35 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_40;
      }

      v39 = v35;
      if (v11[3] >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v35)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_22F1382C4();
          if (v39)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_22F12CB14(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_22F1229E8(v32, v15);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_49;
        }

        v19 = v40;
        if (v39)
        {
LABEL_17:

          v11 = v53;
          v27 = v53[7];
          v28 = *(v27 + 8 * v19);
          *(v27 + 8 * v19) = v17;

          goto LABEL_18;
        }
      }

      v11 = v53;
      v53[(v19 >> 6) + 8] |= 1 << v19;
      v42 = (v11[6] + 16 * v19);
      *v42 = v32;
      v42[1] = v15;
      *(v11[7] + 8 * v19) = v17;

      v43 = v11[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_41;
      }

      v11[2] = v45;
LABEL_18:
      ++v7;
      v26 = v50;
      if (v14 == a1)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    if (!sub_22F741A00())
    {
      goto LABEL_43;
    }
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F33A170(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v16 = *(a2 + 16);
  v17 = v16 + 100;
  if (__OFADD__(v16, 100))
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = [a4 count];
  if (__OFSUB__(v18, 1))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_7;
  }

  if ((v18 - 1) >= v17 - 1)
  {
    v7 = (v17 - 1);
  }

  else
  {
    v7 = v18 - 1;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_22;
  }

LABEL_7:
  v19 = qword_2810B4DF0;
  *&v20 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityPersister.persistMomentSearchEntities", 49, 2u, v20, 0, v19, v39);
  if (v7 < v8)
  {
    __break(1u);
  }

  else
  {
    v37 = a1;
    while (1)
    {
      v21 = objc_autoreleasePoolPush();
      sub_22F33AFDC(a4, v8, a3, a5, a6, &v38);
      objc_autoreleasePoolPop(v21);
      if (v7 == v8)
      {
        break;
      }

      v22 = __OFADD__(v8++, 1);
      if (v22)
      {
        __break(1u);
        v23 = v38;
        objc_autoreleasePoolPop(v21);
        sub_22F1B2BBC(0);

        v24 = v23;
        v25 = sub_22F740B70();
        v26 = sub_22F7415E0();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = v23;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v30;
          *v28 = v30;
          _os_log_impl(&dword_22F0FC000, v25, v26, "SearchEntityPersister.persistSearchEntities threw an error: %@", v27, 0xCu);
          sub_22F2A87F0(v28);
          MEMORY[0x2319033A0](v28, -1, -1);
          MEMORY[0x2319033A0](v27, -1, -1);
        }

        swift_beginAccess();
        v31 = *(a7 + 16);
        *(a7 + 16) = v23;

        *v37 = 1;
        return;
      }
    }

    sub_22F1B2BBC(0);

    v32 = sub_22F740B70();
    v33 = sub_22F7415D0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      swift_beginAccess();
      *(v34 + 4) = *(a2 + 16);

      *(v34 + 12) = 2048;
      *(v34 + 14) = v7;
      _os_log_impl(&dword_22F0FC000, v32, v33, "Completed persisting moment search entities from index %ld to %ld", v34, 0x16u);
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v35 = *(a2 + 16);
    v22 = __OFADD__(v35, 100);
    v36 = v35 + 100;
    if (!v22)
    {
      *(a2 + 16) = v36;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22F33A524(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_22F33A578(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int64_t a5)
{
  sub_22F33A770(a3, a4, a5);
  oslog = sub_22F740B70();
  v5 = sub_22F7415D0();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22F0FC000, oslog, v5, "Completed persisting person/pet relationships", v6, 2u);
    MEMORY[0x2319033A0](v6, -1, -1);
  }
}

uint64_t sub_22F33A770(char *a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v8 = qword_2810B4DF0;
    *&v9 = CACurrentMediaTime();
    sub_22F1B560C("SearchEntityPersister.persistPersonAndPetRelationships", 54, 2u, v9, 0, v8, v66);
    if (!a1)
    {
      break;
    }

    v60 = v4;
    v10 = objc_opt_self();
    v11 = a1;
    v57 = v10;
    v12 = [v10 changeRequestForPerson_];
    v63 = v11;
    v13 = [v11 name];
    v56 = v12;
    [v12 addSearchEntityPersonRelationWithType:1 label:v13 confidence:0 toPerson:1.0];

    v4 = a3 + 64;
    v14 = 1 << *(a3 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(a3 + 64);
    v17 = (v14 + 63) >> 6;

    a1 = 0;
    v18 = 0;
    v59 = a3;
    v61 = v17;
    v62 = a2;
    if (v16)
    {
LABEL_10:
      v19 = v18;
      goto LABEL_14;
    }

    while (1)
    {
      do
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v19 >= v17)
        {

          v49 = sub_22F740B70();
          v50 = sub_22F7415C0();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 134217984;
            *(v51 + 4) = *(a3 + 16);

            _os_log_impl(&dword_22F0FC000, v49, v50, "Finished persisting %ld relationships to me person", v51, 0xCu);
            MEMORY[0x2319033A0](v51, -1, -1);
          }

          else
          {
          }

          sub_22F7416A0();

          goto LABEL_40;
        }

        v16 = *(v4 + 8 * v19);
        ++v18;
      }

      while (!v16);
LABEL_14:
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      v65 = a1;
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v19 << 6);
      v23 = (*(a3 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(*(a3 + 56) + 8 * v22);
      v27 = *(a2 + 16);

      v28 = v26;
      v64 = v28;
      if (v27 && (v29 = v28, v30 = sub_22F1229E8(v25, v24), (v31 & 1) != 0))
      {
        v32 = v30;

        v33 = *(*(a2 + 56) + 8 * v32);
        v34 = [v57 changeRequestForPerson_];
        v58 = v33;
        v35 = [v33 name];
        [v34 addSearchEntityPersonRelationWithType:2 label:v35 confidence:0 toPerson:1.0];

        a2 = *&v29[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_confidenceByRelationType];
        a1 = (a2 + 64);
        v36 = 1 << *(a2 + 32);
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        else
        {
          v37 = -1;
        }

        v38 = v37 & *(a2 + 64);
        v39 = (v36 + 63) >> 6;

        a3 = 0;
        if (v38)
        {
          while (1)
          {
            v40 = a3;
LABEL_26:
            v41 = __clz(__rbit64(v38));
            v38 &= v38 - 1;
            [v34 addSearchEntityPersonRelationWithType:*(*(a2 + 48) + 2 * (v41 | (v40 << 6))) label:0 confidence:v63 toPerson:*(*(a2 + 56) + 8 * (v41 | (v40 << 6)))];
            if (!v38)
            {
              goto LABEL_22;
            }
          }
        }

        while (1)
        {
LABEL_22:
          v40 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v40 >= v39)
          {
            break;
          }

          v38 = *&a1[8 * v40];
          ++a3;
          if (v38)
          {
            a3 = v40;
            goto LABEL_26;
          }
        }

        a3 = v59;
        v48 = *(v59 + 16);
        a1 = v65;
        sub_22F741680();
        if (v60)
        {

          goto LABEL_40;
        }

        v18 = v19;
        v17 = v61;
        a2 = v62;
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {

        v42 = sub_22F740B70();
        v43 = sub_22F7415E0();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v67 = v45;
          *v44 = 136315138;
          v46 = sub_22F145F20(v25, v24, &v67);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_22F0FC000, v42, v43, "No related PH person found for personIdentifier: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x2319033A0](v45, -1, -1);
          v47 = v44;
          a3 = v59;
          MEMORY[0x2319033A0](v47, -1, -1);
        }

        else
        {
        }

        v18 = v19;
        v17 = v61;
        a2 = v62;
        a1 = v65;
        if (v16)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v52 = sub_22F740B70();
  v53 = sub_22F7415C0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22F0FC000, v52, v53, "No me person, so no relationships to persist", v54, 2u);
    MEMORY[0x2319033A0](v54, -1, -1);
  }

  sub_22F7416A0();
LABEL_40:
  sub_22F1B2BBC(0);
}

id SearchEntityPersister.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchEntityPersister.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F33AFDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v13 = *(*(v12 - 8) + 64);
  *&v14 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v89 = &v78 - v15;
  v82 = a1;
  v16 = [a1 objectAtIndexedSubscript_];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    v51 = sub_22F740B70();
    v52 = sub_22F7415E0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = a2;
      _os_log_impl(&dword_22F0FC000, v51, v52, "Moment at index %ld is not a PHMoment", v53, 0xCu);
      MEMORY[0x2319033A0](v53, -1, -1);
    }

    sub_22F33B954();
    v54 = swift_allocError();
    *v55 = 0;
    swift_willThrow();
    goto LABEL_36;
  }

  v18 = v17;
  v83 = a6;
  v84 = v16;
  v79 = v6;
  v80 = a5;
  v81 = a2;
  v19 = [v17 uuid];
  if (!v19)
  {
    goto LABEL_48;
  }

  v20 = v19;
  v21 = sub_22F740E20();
  v23 = v22;

  if (!*(a4 + 16))
  {

    goto LABEL_30;
  }

  v24 = sub_22F1229E8(v21, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_30:
    v56 = v84;
    v57 = sub_22F740B70();
    v58 = sub_22F7415E0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v91 = v60;
      *v59 = 136315138;
      v61 = [v18 uuid];

      if (!v61)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v62 = sub_22F740E20();
      v64 = v63;

      v65 = sub_22F145F20(v62, v64, &v91);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_22F0FC000, v57, v58, "No search entities found for moment %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x2319033A0](v60, -1, -1);
      MEMORY[0x2319033A0](v59, -1, -1);
    }

    else
    {
    }

    sub_22F33B954();
    v54 = swift_allocError();
    v67 = 1;
LABEL_35:
    *v66 = v67;
    swift_willThrow();

    a6 = v83;
LABEL_36:
    *a6 = v54;
    return;
  }

  v27 = *(*(a4 + 56) + 8 * v24);
  v28 = objc_opt_self();

  v88 = [v28 changeRequestForMoment_];
  if (!v88)
  {

    v56 = v84;
    v68 = sub_22F740B70();
    v69 = sub_22F7415E0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v91 = v71;
      *v70 = 136315138;
      v72 = [v18 uuid];

      if (!v72)
      {
LABEL_50:
        __break(1u);
        return;
      }

      v73 = sub_22F740E20();
      v75 = v74;

      v76 = sub_22F145F20(v73, v75, &v91);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_22F0FC000, v68, v69, "Could not create change request for moment %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x2319033A0](v71, -1, -1);
      MEMORY[0x2319033A0](v70, -1, -1);
    }

    else
    {
    }

    sub_22F33B954();
    v54 = swift_allocError();
    v67 = 2;
    goto LABEL_35;
  }

  if (v27 >> 62)
  {
    v29 = sub_22F741A00();
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a6 = v83;
  v30 = v84;
  if (!v29)
  {

    goto LABEL_42;
  }

  if (v29 < 1)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v31 = 0;
  v85 = v27 & 0xC000000000000001;
  v86 = v29;
  v87 = v27;
  do
  {
    if (v85)
    {
      v34 = MEMORY[0x2319016F0](v31, v27);
    }

    else
    {
      v34 = *(v27 + 8 * v31 + 32);
    }

    v35 = v34;
    if (*&v34[OBJC_IVAR___PGGraphSearchEntity_label + 8])
    {
      v36 = *&v34[OBJC_IVAR___PGGraphSearchEntity_label];
      v37 = *&v34[OBJC_IVAR___PGGraphSearchEntity_label + 8];

      v38 = sub_22F740DF0();
    }

    else
    {
      v38 = 0;
    }

    if (*&v35[OBJC_IVAR___PGGraphSearchEntity_identifier + 8])
    {
      v39 = *&v35[OBJC_IVAR___PGGraphSearchEntity_identifier];
      v40 = *&v35[OBJC_IVAR___PGGraphSearchEntity_identifier + 8];

      v41 = sub_22F740DF0();
    }

    else
    {
      v41 = 0;
    }

    v90 = *&v35[OBJC_IVAR___PGGraphSearchEntity_type];
    v42 = *&v35[OBJC_IVAR___PGGraphSearchEntity_confidence];
    if (*&v35[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier + 8])
    {
      v43 = *&v35[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
      v44 = *&v35[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier + 8];

      v45 = sub_22F740DF0();
    }

    else
    {
      v45 = 0;
    }

    v46 = v89;
    sub_22F1EDD04(&v35[OBJC_IVAR___PGGraphSearchEntity_dateInterval], v89);
    v47 = sub_22F73F090();
    v48 = *(v47 - 8);
    v49 = 0;
    if ((*(v48 + 48))(v46, 1, v47) != 1)
    {
      v50 = v89;
      v49 = sub_22F73F010();
      (*(v48 + 8))(v50, v47);
    }

    ++v31;
    v32 = *&v35[OBJC_IVAR___PGGraphSearchEntity_synonyms];

    v33 = sub_22F741160();

    [v88 addAssetSearchEntityWithLabel:v38 identifier:v41 type:v90 confidence:v45 localeIdentifier:v49 dateInterval:v33 synonyms:v42];

    v27 = v87;
  }

  while (v86 != v31);

  a6 = v83;
  v30 = v84;
LABEL_42:
  [v82 count];
  v77 = v79;
  sub_22F741680();
  v54 = v77;

  if (v77)
  {
    goto LABEL_36;
  }
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for SearchEntityPersister()
{
  result = qword_2810AA738;
  if (!qword_2810AA738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F33B87C()
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

unint64_t sub_22F33B954()
{
  result = qword_27DAB3950;
  if (!qword_27DAB3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3950);
  }

  return result;
}

unint64_t sub_22F33B9BC()
{
  result = qword_27DAB3958;
  if (!qword_27DAB3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3958);
  }

  return result;
}

uint64_t static GraphRebuilderCompatibility.fullRebuild(photoLibrary:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F33BAC0;

  return sub_22F33C9F8(a1);
}

uint64_t sub_22F33BAC0(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_22F33BD4C(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_22F33BE14;

  return sub_22F33C9F8(v4);
}

uint64_t sub_22F33BE14(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_22F73F360();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t static GraphRebuilderCompatibility.incrementalRebuild(photoLibrary:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F33D7E0;

  return sub_22F33CF14(a1);
}

uint64_t sub_22F33C1D0(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_22F33D7DC;

  return sub_22F33CF14(v4);
}

id GraphRebuilderCompatibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GraphRebuilderCompatibility.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GraphRebuilderCompatibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F33C37C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22F20B7C0;

  return v7();
}

uint64_t sub_22F33C464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22F12094C;

  return v8();
}

uint64_t sub_22F33C54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_22F20B494(a3, v25 - v11);
  v13 = sub_22F741320();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22F33D510(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22F741310();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_22F7412D0();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_22F740EC0() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_22F33D510(a3);

    return v23;
  }

LABEL_8:
  sub_22F33D510(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22F33C808(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F33C900;

  return v7(a1);
}

uint64_t sub_22F33C900()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22F33CA18()
{
  v1 = v0[5];
  [objc_opt_self() enableMultiLibraryMode];
  v2 = type metadata accessor for GraphManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = GraphManager.init(with:tmpGraphDirectoryName:)(v1, 0, 0);
  v0[6] = v5;
  v6 = v5;
  type metadata accessor for GraphFullRebuilder();
  inited = swift_initStackObject();
  v0[7] = inited;
  *(inited + 16) = v6;

  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_22F33CB6C;

  return GraphFullRebuilder.rebuildGraph()();
}

uint64_t sub_22F33CB6C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22F33CE9C;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = sub_22F33CC88;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22F33CC88()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v2 = *(MEMORY[0x277D22B28] + 4);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_22F33CD28;

  return MEMORY[0x282181570]();
}

uint64_t sub_22F33CD28()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22F33CE24, 0, 0);
}

uint64_t sub_22F33CE24()
{
  v1 = v0[6];
  v2 = v0[7];

  swift_setDeallocating();
  v3 = *(v2 + 16);

  v4 = v0[1];

  return v4(1);
}

uint64_t sub_22F33CE9C()
{
  v1 = v0[6];
  v2 = v0[7];

  swift_setDeallocating();
  v3 = *(v2 + 16);

  v4 = v0[9];
  v5 = v0[1];

  return v5(0);
}

uint64_t sub_22F33CF34()
{
  v1 = v0[2];
  [objc_opt_self() enableMultiLibraryMode];
  v2 = type metadata accessor for GraphManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = GraphManager.init(with:tmpGraphDirectoryName:)(v1, 0, 0);
  v0[3] = v5;
  v6 = v5;
  type metadata accessor for GraphBuilder();
  v7 = swift_allocObject();
  v0[4] = v7;
  v8 = v6[14];
  *(v7 + 16) = v8;
  *(v7 + 24) = v6;

  v9 = v8;
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_22F33D0A0;

  return GraphBuilder.consumeInputStreamUpdates()();
}

uint64_t sub_22F33D0A0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22F33D3C8;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = sub_22F33D1BC;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22F33D1BC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v2 = *(MEMORY[0x277D22B28] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_22F33D25C;

  return MEMORY[0x282181570]();
}

uint64_t sub_22F33D25C()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22F33D358, 0, 0);
}

uint64_t sub_22F33D358()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3(1);
}

uint64_t sub_22F33D3C8()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[6];
  v4 = v0[1];

  return v4(0);
}

uint64_t sub_22F33D45C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22F20B7C0;

  return sub_22F33C1D0(v2, v3);
}

uint64_t sub_22F33D510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F33D578(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F20B7C0;

  return sub_22F33C808(a1, v5);
}

uint64_t sub_22F33D630(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F12094C;

  return sub_22F33C808(a1, v5);
}

uint64_t objectdestroyTm_6()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F33D728()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22F12094C;

  return sub_22F33BD4C(v2, v3);
}

id MusicCache.readCollectionCurations(for:progressReporter:)(uint64_t a1)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F770DF0;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22F153470();
  strcpy((v2 + 32), "collectionId");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v2 + 104) = sub_22F25F050();
  *(v2 + 72) = a1;

  v3 = sub_22F741560();
  v4 = sub_22F33E998();

  return v4;
}

uint64_t MusicCache.write(collectionCurations:progressReporter:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionCuration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v57 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = (&v44 - v9);
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  isUniquelyReferenced_nonNull_native = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_23:
    swift_once();
  }

  v15 = qword_2810A8E88;
  sub_22F740AC0();
  v16 = v15;
  sub_22F740A90();
  v19 = *(v11 + 8);
  v17 = v11 + 8;
  v18 = v19;
  v19(isUniquelyReferenced_nonNull_native, v10);
  sub_22F741690();
  if (v2)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    return v18(isUniquelyReferenced_nonNull_native, v10);
  }

  v49 = 0;
  v50 = v18;
  v51 = isUniquelyReferenced_nonNull_native;
  v52 = v17;
  v53 = v10;
  v21 = sub_22F7416D0();
  v46 = v22;
  v47 = v21;
  v45 = v23;
  v24 = *(a1 + 16);
  v48 = v16;
  if (v24)
  {
    a1 += (*(v5 + 80) + 32) & ~*(v5 + 80);
    v25 = *(v5 + 72);
    v5 = MEMORY[0x277D84F98];
    v26 = v55;
    while (1)
    {
      v56 = v24;
      sub_22F25F0B4(a1, v26);
      v27 = *v26;
      v11 = v26[1];
      sub_22F25F0B4(v26, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v5;
      v10 = sub_22F1229E8(v27, v11);
      v29 = *(v5 + 16);
      v30 = (v28 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v2 = v28;
      if (*(v5 + 24) >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v5 = v58;
          if (v28)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_22F136148();
          v5 = v58;
          if (v2)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_22F128CB4(v31, isUniquelyReferenced_nonNull_native);
        v32 = sub_22F1229E8(v27, v11);
        if ((v2 & 1) != (v33 & 1))
        {
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v10 = v32;
        v5 = v58;
        if (v2)
        {
LABEL_6:
          sub_22F33FC74(v57, *(v5 + 56) + v10 * v25);
          goto LABEL_7;
        }
      }

      *(v5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v34 = (*(v5 + 48) + 16 * v10);
      *v34 = v27;
      v34[1] = v11;
      sub_22F25F118(v57, *(v5 + 56) + v10 * v25);
      v35 = *(v5 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_22;
      }

      *(v5 + 16) = v37;

LABEL_7:
      v26 = v55;
      v21 = sub_22F25F17C(v55);
      a1 += v25;
      v24 = v56 - 1;
      if (v56 == 1)
      {
        goto LABEL_20;
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_20:
  v38 = *(v54 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v21);
  v40 = v46;
  v39 = v47;
  *(&v44 - 6) = v5;
  *(&v44 - 5) = v39;
  *(&v44 - 4) = v41;
  *(&v44 - 3) = v40;
  v42 = v45;
  *(&v44 - 2) = v45;
  sub_22F7417A0();

  sub_22F741730();
  v43 = v51;
  sub_22F740AC0();
  sub_22F740A90();
  return v50(v43, v53);
}

void sub_22F33DE38(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v116[1] = a5;
  v116[2] = a4;
  v119 = a3;
  v131[5] = *MEMORY[0x277D85DE8];
  v117 = type metadata accessor for CollectionCuration();
  v121 = *(v117 - 8);
  v9 = *(v121 + 64);
  v10 = MEMORY[0x28223BE20](v117);
  v12 = (v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v120 = v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3960, &qword_22F786A70);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v126 = (v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v125 = (v116 - v18);
  v19 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v20 = sub_22F740DF0();

  v118 = [v19 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22F770DF0;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_22F153470();
  strcpy((v21 + 32), "collectionId");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  v22 = *(a1 + 16);
  v127 = a1;
  v128 = v12;
  if (v22)
  {
    v129 = a2;
    v130 = v5;
    v23 = sub_22F10B348(v22, 0);
    v24 = sub_22F120B3C(v131, v23 + 4, v22, a1);

    sub_22F0FF590();
    if (v24 != v22)
    {
      goto LABEL_35;
    }

    v6 = v130;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v21 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v21 + 104) = sub_22F25F050();
  *(v21 + 72) = v23;
  v25 = sub_22F741560();
  v26 = v118;
  [v118 setPredicate_];

  v131[0] = 0;
  v27 = [v26 execute_];
  v28 = v131[0];
  if (!v27)
  {
    v31 = v131[0];
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_9;
  }

  v29 = v27;
  type metadata accessor for CollectionCurationEntry();
  a1 = sub_22F741180();
  v30 = v28;

  sub_22F7416A0();
  v129 = v6;
  if (v6)
  {

    goto LABEL_9;
  }

  if (a1 >> 62)
  {
LABEL_36:
    v33 = sub_22F741A00();
    if (v33)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
LABEL_12:
      v34 = 0;
      v123 = a1 & 0xFFFFFFFFFFFFFF8;
      v124 = a1 & 0xC000000000000001;
      v35 = MEMORY[0x277D84F98];
      v122 = a1;
      while (1)
      {
        if (v124)
        {
          v38 = MEMORY[0x2319016F0](v34, a1);
        }

        else
        {
          if (v34 >= *(v123 + 16))
          {
            goto LABEL_32;
          }

          v38 = *(a1 + 8 * v34 + 32);
        }

        v39 = v38;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v130 = (v34 + 1);
        v40 = [v38 collectionId];
        a1 = sub_22F740E20();
        v42 = v41;

        v43 = v39;
        v44 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131[0] = v44;
        v47 = sub_22F1229E8(a1, v42);
        v48 = v44[2];
        v49 = (v46 & 1) == 0;
        v50 = v48 + v49;
        if (__OFADD__(v48, v49))
        {
          goto LABEL_33;
        }

        v51 = v46;
        if (v44[3] >= v50)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v46)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_22F1382D8();
            if (v51)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          sub_22F12CB28(v50, isUniquelyReferenced_nonNull_native);
          v52 = sub_22F1229E8(a1, v42);
          if ((v51 & 1) != (v53 & 1))
          {
            sub_22F7420C0();
            __break(1u);
            return;
          }

          v47 = v52;
          if (v51)
          {
LABEL_13:

            v35 = v131[0];
            v36 = *(v131[0] + 7);
            v37 = *(v36 + 8 * v47);
            *(v36 + 8 * v47) = v43;

            goto LABEL_14;
          }
        }

        v35 = v131[0];
        *(v131[0] + (v47 >> 6) + 8) |= 1 << v47;
        v54 = (v35[6] + 16 * v47);
        *v54 = a1;
        v54[1] = v42;
        *(v35[7] + 8 * v47) = v43;

        v55 = v35[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_34;
        }

        v35[2] = v57;
LABEL_14:
        ++v34;
        a1 = v122;
        if (v130 == v33)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F98];
LABEL_38:
  v130 = v35;

  v58 = v127 + 64;
  v59 = 1 << *(v127 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v127 + 64);
  v124 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v62 = (v59 + 63) >> 6;

  v64 = 0;
  while (1)
  {
    if (v61)
    {
      v69 = v64;
LABEL_54:
      v72 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v73 = v72 | (v69 << 6);
      v74 = (*(v63 + 48) + 16 * v73);
      v75 = *v74;
      v76 = v74[1];
      v77 = v120;
      sub_22F25F0B4(*(v63 + 56) + *(v121 + 72) * v73, v120);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3968, &qword_22F786A78);
      v79 = *(v78 + 48);
      v80 = v126;
      *v126 = v75;
      v80[1] = v76;
      v81 = v80;
      sub_22F25F118(v77, v80 + v79);
      (*(*(v78 - 8) + 56))(v81, 0, 1, v78);
    }

    else
    {
      v70 = v62 <= v64 + 1 ? v64 + 1 : v62;
      v71 = v70 - 1;
      while (1)
      {
        v69 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
        }

        if (v69 >= v62)
        {
          break;
        }

        v61 = *(v58 + 8 * v69);
        ++v64;
        if (v61)
        {
          v64 = v69;
          goto LABEL_54;
        }
      }

      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3968, &qword_22F786A78);
      v100 = v126;
      (*(*(v99 - 8) + 56))(v126, 1, 1, v99);
      v61 = 0;
      v64 = v71;
      v81 = v100;
    }

    v82 = v81;
    v83 = v125;
    sub_22F33FD00(v82, v125);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3968, &qword_22F786A78);
    if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
    {
      break;
    }

    v86 = *v83;
    v85 = v83[1];
    v87 = v128;
    sub_22F25F118(v83 + *(v84 + 48), v128);
    if (!v130[2])
    {

LABEL_62:
      v97 = v129;
      v98 = sub_22F266850(*(v119 + v124), v87);
      v129 = v97;
      if (v97)
      {

        sub_22F25F17C(v87);
        goto LABEL_9;
      }

      v91 = v98;
      goto LABEL_43;
    }

    v88 = sub_22F1229E8(v86, v85);
    v90 = v89;

    if ((v90 & 1) == 0)
    {
      goto LABEL_62;
    }

    v91 = *(v130[7] + 8 * v88);
    v92 = [v91 collectionId];
    v93 = sub_22F740E20();
    v95 = v94;

    v96 = v93;
    v87 = v128;
    if (v96 == *v128 && v95 == v128[1])
    {
    }

    else
    {
      v101 = sub_22F742040();

      if ((v101 & 1) == 0)
      {

        sub_22F33FD70();
        swift_allocError();
        *v115 = 2;
        swift_willThrow();

        sub_22F25F17C(v87);
        goto LABEL_9;
      }
    }

    if (v87[3])
    {
      v102 = v87[2];
      v103 = sub_22F740DF0();
    }

    else
    {
      v103 = 0;
    }

    [v91 setKeySongAdamID_];

    if (v87[5])
    {
      v65 = v87[4];
      v66 = sub_22F740DF0();
    }

    else
    {
      v66 = 0;
    }

    [v91 setKeySongFlexUID_];

    v67 = v87 + *(v117 + 28);
    v68 = sub_22F73F5B0();
    [v91 setCurationDate_];

LABEL_43:
    sub_22F25F17C(v87);
    v63 = v127;
  }

  v104 = v129;
  sub_22F7416A0();
  if (v104)
  {
  }

  else
  {
    v105 = *(v119 + v124);
    v131[0] = 0;
    v106 = [v105 save_];
    v107 = v118;
    if (v106)
    {
      v108 = v131[0];
      sub_22F7416A0();
    }

    else
    {
      v109 = v131[0];
      v110 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v111 = sub_22F7420F0();
      v113 = v112;
      sub_22F1A297C();
      swift_allocError();
      *v114 = v111;
      *(v114 + 8) = v113;
      *(v114 + 16) = 0;
      swift_willThrow();
    }
  }

LABEL_9:
  v32 = *MEMORY[0x277D85DE8];
}

id sub_22F33E998()
{
  v2 = sub_22F740AD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v7 = *(v3 + 8);
  v7(v6, v2);
  sub_22F741690();
  if (v1)
  {
    v16 = sub_22F741730();
  }

  else
  {
    v8 = sub_22F7416B0();
    v10 = v9;
    v17[1] = v17;
    v11 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v12 = MEMORY[0x28223BE20](v8);
    v17[-4] = v13;
    v17[-3] = v12;
    v17[0] = v12;
    v17[-2] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3978, &qword_22F786A80);
    sub_22F7417A0();

    v16 = v17[3];
    sub_22F741730();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v7(v6, v2);
  return v16;
}

void sub_22F33EC70(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v45 = a3;
  v46 = a2;
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for CollectionCuration();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v10 = sub_22F740DF0();

  v11 = [v9 initWithEntityName_];

  [v11 setPredicate_];
  v55[0] = 0;
  v12 = [v11 execute_];
  v13 = v55[0];
  if (!v12)
  {
    v18 = v55[0];
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_26;
  }

  v14 = v12;
  v47 = v11;
  type metadata accessor for CollectionCurationEntry();
  v15 = sub_22F741180();
  v16 = v13;

  sub_22F7416A0();
  v17 = v3;
  if (!v3)
  {
    if (v15 >> 62)
    {
      v19 = sub_22F741A00();
      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_7:
        v44 = 0;
        v55[0] = MEMORY[0x277D84F90];
        sub_22F146C94(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          __break(1u);
        }

        v20 = 0;
        v48 = v15 & 0xC000000000000001;
        v49 = v19;
        v21 = v55[0];
        v50 = v15;
        do
        {
          if (v48)
          {
            v22 = MEMORY[0x2319016F0](v20, v15);
          }

          else
          {
            v22 = *(v15 + 8 * v20 + 32);
          }

          v23 = v22;
          v24 = [v22 collectionId];
          v25 = sub_22F740E20();
          v53 = v26;
          v54 = v25;

          v27 = [v23 keySongAdamID];
          if (v27)
          {
            v28 = v27;
            v29 = sub_22F740E20();
            v31 = v30;
          }

          else
          {
            v29 = 0;
            v31 = 0;
          }

          v32 = [v23 keySongFlexUID];
          if (v32)
          {
            v33 = v32;
            v34 = sub_22F740E20();
            v36 = v35;
          }

          else
          {
            v34 = 0;
            v36 = 0;
          }

          v37 = [v23 curationDate];
          v38 = v8 + *(v52 + 28);
          sub_22F73F640();

          v39 = v53;
          *v8 = v54;
          v8[1] = v39;
          v8[2] = v29;
          v8[3] = v31;
          v8[4] = v34;
          v8[5] = v36;
          v55[0] = v21;
          v41 = v21[2];
          v40 = v21[3];
          if (v41 >= v40 >> 1)
          {
            sub_22F146C94(v40 > 1, v41 + 1, 1);
            v21 = v55[0];
          }

          ++v20;
          v21[2] = v41 + 1;
          sub_22F25F118(v8, v21 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41);
          v15 = v50;
        }

        while (v49 != v20);

        v17 = v44;
LABEL_24:
        sub_22F7416A0();
        if (!v17)
        {

          *v45 = v21;
          goto LABEL_26;
        }

        goto LABEL_3;
      }
    }

    v21 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_3:

LABEL_26:
  v42 = *MEMORY[0x277D85DE8];
}

void MusicCache.deleteCollectionCurations(beforeDate:afterDate:collectionId:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v24 = a3;
  v22 = a1;
  v23 = a2;
  v8 = sub_22F740AD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v13 = *(v9 + 8);
  v13(v12, v8);
  sub_22F741690();
  if (!v5)
  {
    v14 = sub_22F7416B0();
    v21[1] = v21;
    v15 = *(v4 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v14);
    v16 = v23;
    v21[-8] = v22;
    v21[-7] = v16;
    v21[-6] = v24;
    v21[-5] = a4;
    v18 = v17;
    v21[-4] = v6;
    v21[-3] = v17;
    v20 = v19;
    v21[-2] = v19;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v13(v12, v8);
  }
}

void sub_22F33F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a6;
  v71 = a7;
  v77 = a4;
  v78 = a5;
  v73 = a3;
  v76 = a2;
  v81[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v72 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  v22 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v23 = sub_22F740DF0();

  v79 = [v22 initWithEntityName_];

  v80 = MEMORY[0x277D84F90];
  v24 = a1;
  v25 = v16;
  sub_22F12057C(v24, v14);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    sub_22F15FCF0(v14);
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v69 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22F771340;
    v70 = v16;
    v29 = sub_22F73F5B0();
    *(v28 + 56) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
    *(v28 + 64) = sub_22F15FD58();
    *(v28 + 32) = v29;
    v30 = sub_22F741560();
    MEMORY[0x231900D00]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();

    v25 = v70;
    (*(v70 + 8))(v21, v15);
    v27 = v80;
  }

  sub_22F12057C(v76, v11);
  if (v26(v11, 1, v15) == 1)
  {
    sub_22F15FCF0(v11);
    v31 = v77;
    if (!v77)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v32 = v72;
  (*(v25 + 32))(v72, v11, v15);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22F771340;
  v34 = v25;
  v35 = sub_22F73F5B0();
  *(v33 + 56) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v33 + 64) = sub_22F15FD58();
  *(v33 + 32) = v35;
  v36 = sub_22F741560();
  MEMORY[0x231900D00]();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v68 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();

  (*(v34 + 8))(v32, v15);
  v27 = v80;
  v31 = v77;
  if (v77)
  {
LABEL_12:
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22F771340;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_22F153470();
    *(v37 + 32) = v73;
    *(v37 + 40) = v31;

    v38 = sub_22F741560();
    MEMORY[0x231900D00]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v67 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();

    v27 = v80;
  }

LABEL_15:
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v39 = sub_22F740B90();
  __swift_project_value_buffer(v39, qword_2810B4DC0);
  v40 = sub_22F740B70();
  v41 = sub_22F7415C0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v81[0] = v43;
    *v42 = 136315138;
    v44 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);

    v46 = MEMORY[0x231900D40](v45, v44);
    v48 = v47;

    v49 = sub_22F145F20(v46, v48, v81);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_22F0FC000, v40, v41, "[MemoriesMusic] deleteCollectionCurations delete predicates: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x2319033A0](v43, -1, -1);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  v50 = v79;
  if (v27 >> 62)
  {
    if (sub_22F741A00() >= 1)
    {
      goto LABEL_21;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_21:
    v51 = objc_allocWithZone(MEMORY[0x277CCA920]);
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);

    v52 = sub_22F741160();

    v53 = [v51 initWithType:1 subpredicates:v52];

    goto LABEL_24;
  }

  v53 = 0;
LABEL_24:
  [v50 setPredicate_];

  v54 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v54 setResultType_];
  v55 = *(v78 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v81[0] = 0;
  v56 = [v55 executeRequest:v54 error:v81];
  if (!v56)
  {
    v61 = v81[0];
    v60 = sub_22F73F370();

    swift_willThrow();
    goto LABEL_28;
  }

  v57 = v56;
  v58 = v81[0];

  v59 = v75;
  sub_22F7416A0();
  v60 = v59;
  if (v59)
  {
LABEL_28:
    swift_getErrorValue();
    v62 = sub_22F7420F0();
    v64 = v63;
    sub_22F1A297C();
    swift_allocError();
    *v65 = v62;
    *(v65 + 8) = v64;
    *(v65 + 16) = 0;
    swift_willThrow();

    goto LABEL_29;
  }

  sub_22F7416A0();

LABEL_29:
  v66 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22F33FC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionCuration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F33FD00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3960, &qword_22F786A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F33FD70()
{
  result = qword_27DAB3970;
  if (!qword_27DAB3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3970);
  }

  return result;
}

uint64_t CLLocationCoordinate2D.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x231901D70](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x231901D70](*&v3);
}

uint64_t CLLocationCoordinate2D.hashValue.getter(double a1, double a2)
{
  sub_22F742170();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x231901D70](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x231901D70](*&v5);
  return sub_22F7421D0();
}

uint64_t sub_22F33FEEC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return sub_22F7421D0();
}

uint64_t sub_22F33FF48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return sub_22F7421D0();
}

unint64_t sub_22F33FF9C()
{
  result = qword_27DAB3980;
  if (!qword_27DAB3980)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3980);
  }

  return result;
}

uint64_t sub_22F340010(unint64_t a1)
{
  if (qword_2810A9AB0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v2 = qword_2810B4DD8;
    *&v3 = CACurrentMediaTime();
    sub_22F1B560C("FlexMusicMaestroKeywordDataFrame", 32, 2u, v3, 0, v2, v64);
    v63 = MEMORY[0x277D84FA0];
    if (a1 >> 62)
    {
      v4 = sub_22F741A00();
      if (!v4)
      {
LABEL_40:
        v6 = MEMORY[0x277D84F98];
        v44 = MEMORY[0x277D84FA0];
        goto LABEL_41;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_40;
      }
    }

    v5 = 0;
    v52 = a1 & 0xC000000000000001;
    v48 = a1 + 32;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F98];
    v7 = &off_27888E000;
    v50 = v4;
    v51 = a1;
LABEL_6:
    if (v52)
    {
      v11 = MEMORY[0x2319016F0](v5, a1);
      v12 = __OFADD__(v5, 1);
      v13 = v5 + 1;
      if (!v12)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

    if (v5 < *(v49 + 16))
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v11 = *(v48 + 8 * v5);
  swift_unknownObjectRetain();
  v12 = __OFADD__(v5, 1);
  v13 = v5 + 1;
  if (v12)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_12:
  v56 = v6;
  v57 = v13;
  v14 = [v11 uid];
  v53 = sub_22F740E20();
  v54 = v15;

  v55 = v11;
  v16 = [v11 v7[280]];
  sub_22F170D8C();
  a1 = sub_22F740CA0();

  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v60 = a1;

  v22 = 0;
  v23 = MEMORY[0x277D84F98];
  v58 = v21;
  v59 = a1 + 64;
  while (v20)
  {
    v24 = v22;
LABEL_23:
    v25 = __clz(__rbit64(v20)) | (v24 << 6);
    v26 = (*(v60 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v60 + 56) + 8 * v25);
    swift_bridgeObjectRetain_n();
    v61 = v29;
    [v61 floatValue];
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v23;
    a1 = v23;
    v34 = sub_22F1229E8(v27, v28);
    v35 = v23[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v38 = v33;
    if (v23[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = &v62;
        sub_22F1350D0();
      }
    }

    else
    {
      sub_22F127068(v37, isUniquelyReferenced_nonNull_native);
      a1 = v62;
      v39 = sub_22F1229E8(v27, v28);
      if ((v38 & 1) != (v40 & 1))
      {
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v34 = v39;
    }

    v20 &= v20 - 1;
    if (v38)
    {

      v23 = v62;
      *(v62[7] + 4 * v34) = v31;
    }

    else
    {
      v23 = v62;
      v62[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v23[6] + 16 * v34);
      *v41 = v27;
      v41[1] = v28;
      *(v23[7] + 4 * v34) = v31;

      v42 = v23[2];
      v12 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v12)
      {
        goto LABEL_35;
      }

      v23[2] = v43;
    }

    v22 = v24;
    v21 = v58;
    v17 = v59;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      goto LABEL_23;
    }
  }

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v56;
  sub_22F132CD0(v23, v53, v54, v8);

  v6 = v62;
  v7 = &off_27888E000;
  v9 = [v55 weightedKeywords];
  v10 = sub_22F740CA0();

  sub_22F2EA928(v10);
  swift_unknownObjectRelease();
  a1 = v51;
  v5 = v57;
  if (v57 != v50)
  {
    goto LABEL_6;
  }

  v44 = v63;
LABEL_41:
  v45 = sub_22F338140(v6, v44);
  if (v47)
  {
  }

  else
  {

    sub_22F1B2BBC(0);
  }

  return v45;
}

id TripTitleAnalyticsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TripTitleAnalyticsHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TripTitleAnalyticsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *_s11PhotosGraph24TripTitleAnalyticsHelperC16analyticsPayload3forSDySSSo8NSObjectCGAA0C16FeatureProcessorC_tFZ_0(uint64_t a1)
{
  v2 = OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_22F10B348(*(v3 + 16), 0);
    v6 = sub_22F11A438(v21, v5 + 4, v4, v3);
    swift_bridgeObjectRetain_n();
    sub_22F1534EC();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v21[0] = v5;
  sub_22F1AB0EC(v21);
  v7 = 1701736270;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v8 = sub_22F740DA0();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3988, &qword_22F786B68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7707D0;
  strcpy((inited + 32), "levelSelected");
  *(inited + 46) = -4864;
  *(a1 + OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel);
  v12 = sub_22F740DF0();

  *(inited + 48) = v12;
  strcpy((inited + 56), "thresholdMet");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  if (v13)
  {
    v7 = v8;
  }

  else
  {

    v10 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v7, v10);

  v14 = sub_22F740DF0();

  *(inited + 72) = v14;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022F792BD0;
  LODWORD(v21[0]) = 5;
  sub_22F742010();
  v15 = sub_22F740DF0();

  *(inited + 96) = v15;
  v16 = sub_22F14E718(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3990, &unk_22F786B70);
  swift_arrayDestroy();
  if (*(a1 + OBJC_IVAR___PGTripFeatureProcessor_currentError + 8))
  {
    v17 = *(a1 + OBJC_IVAR___PGTripFeatureProcessor_currentError);

    v18 = sub_22F740DF0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v16;
    sub_22F12FEE8(v18, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    return v21[0];
  }

  return v16;
}

void sub_22F340A84(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, SEL *a4@<X3>, Class *a5@<X4>, const char *a6@<X5>, uint64_t *a7@<X8>)
{
  v46 = a6;
  v47 = a4;
  v48 = a5;
  v49 = a3;
  v50 = a7;
  v9 = sub_22F73F090();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  v15 = v14;
  v16 = *(a2 + 16);
  v53 = v9;
  v45 = a2;
  if (v16)
  {
    v17 = objc_opt_self();
    v19 = *(v10 + 16);
    v18 = v10 + 16;
    v51 = v19;
    v52 = v17;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);
    v22 = (v18 - 8);
    do
    {
      v51(v13, v20, v9);
      v23 = sub_22F73F010();
      v24 = [v52 momentNodesInUniversalDateInterval:v23 inGraph:a1];

      v25 = [v15 collectionByFormingUnionWith_];
      v9 = v53;
      (*v22)(v13, v53);
      v20 += v21;
      v15 = v25;
      --v16;
    }

    while (v16);
  }

  else
  {
    v25 = v14;
  }

  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 *v47];
  v29 = [objc_msgSend(v27 graph)];
  swift_unknownObjectRelease();
  v30 = [v29 concreteGraph];

  if (v30)
  {
    v31 = [v27 elementIdentifiers];
    v32 = [v30 adjacencyWithSources:v31 relation:v28];

    v33 = objc_allocWithZone(*v48);
    v34 = [v32 targets];
    v35 = [v33 initWithGraph:v30 elementIdentifiers:v34];

    v36 = [v35 localIdentifiers];
    v37 = sub_22F741420();

    v38 = sub_22F7415C0();
    v39 = [v49 loggingConnection];
    if (os_log_type_enabled(v39, v38))
    {

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 134218242;
      *(v40 + 4) = *(v37 + 16);

      *(v40 + 12) = 2080;
      v42 = MEMORY[0x231900D40](v45, v53);
      v44 = sub_22F145F20(v42, v43, &v54);

      *(v40 + 14) = v44;
      _os_log_impl(&dword_22F0FC000, v39, v38, v46, v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319033A0](v41, -1, -1);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    swift_unknownObjectRelease();
    *v50 = v37;
  }

  else
  {
    sub_22F741D40();
    __break(1u);
  }
}

uint64_t sub_22F340F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v46 = a3;
  v47 = a4;
  v48 = sub_22F73F090();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  v11 = v10;
  v12 = *(a2 + 16);
  v45 = a2;
  if (v12)
  {
    v13 = objc_opt_self();
    v50 = a1;
    v51 = v13;
    v14 = v6 + 16;
    v49 = *(v6 + 16);
    v15 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v16 = *(v6 + 72);
    v17 = (v14 - 8);
    v18 = v48;
    do
    {
      v49(v9, v15, v18);
      v19 = sub_22F73F010();
      v20 = [v51 momentNodesInUniversalDateInterval:v19 inGraph:v50];

      v21 = [v11 collectionByFormingUnionWith_];
      (*v17)(v9, v18);
      v15 += v16;
      v11 = v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v21 = v10;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 memoryOfMoment];
  v25 = [objc_msgSend(v23 graph)];
  swift_unknownObjectRelease();
  v26 = [v25 concreteGraph];

  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = [v23 elementIdentifiers];
  v28 = [v26 adjacencyWithSources:v27 relation:v24];

  v53 = MEMORY[0x277D84FA0];
  v29 = objc_allocWithZone(PGGraphMemoryNodeCollection);
  v30 = [v28 targets];
  v31 = [v29 initWithGraph:v26 elementIdentifiers:v30];

  v32 = swift_allocObject();
  *(v32 + 16) = &v53;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_22F341BE8;
  *(v33 + 24) = v32;
  aBlock[4] = sub_22F1F68E8;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_12_2;
  v34 = _Block_copy(aBlock);

  [v31 enumerateUsingBlock_];

  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  v35 = v48;
  if (v34)
  {
    __break(1u);
LABEL_12:
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  v36 = sub_22F7415C0();
  v37 = [v46 loggingConnection];
  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 134218242;
    swift_beginAccess();
    *(v38 + 4) = *(v53 + 16);
    *(v38 + 12) = 2080;
    v40 = MEMORY[0x231900D40](v45, v35);
    v42 = sub_22F145F20(v40, v41, aBlock);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_22F0FC000, v37, v36, "Found %ld trip UUIDs in date intervals %s", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x2319033A0](v39, -1, -1);
    MEMORY[0x2319033A0](v38, -1, -1);
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  *v47 = v53;
}

id sub_22F3414D0(void *a1)
{
  result = [a1 UUID];
  if (result)
  {
    v3 = result;
    v4 = sub_22F740E20();
    v6 = v5;

    if ([a1 memoryCategory] == 19 || objc_msgSend(a1, sel_memoryCategory) == 31)
    {
      sub_22F10BBDC(&v7, v4, v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22F3415A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v46 = a3;
  v47 = a4;
  v48 = sub_22F73F090();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  v11 = v10;
  v12 = *(a2 + 16);
  v45 = a2;
  if (v12)
  {
    v13 = objc_opt_self();
    v50 = a1;
    v51 = v13;
    v14 = v6 + 16;
    v49 = *(v6 + 16);
    v15 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v16 = *(v6 + 72);
    v17 = (v14 - 8);
    v18 = v48;
    do
    {
      v49(v9, v15, v18);
      v19 = sub_22F73F010();
      v20 = [v51 momentNodesInUniversalDateInterval:v19 inGraph:v50];

      v21 = [v11 collectionByFormingUnionWith_];
      (*v17)(v9, v18);
      v15 += v16;
      v11 = v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v21 = v10;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 socialGroupInMoment];
  v25 = [objc_msgSend(v23 graph)];
  swift_unknownObjectRelease();
  v26 = [v25 concreteGraph];

  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = [v23 elementIdentifiers];
  v28 = [v26 adjacencyWithSources:v27 relation:v24];

  v53 = MEMORY[0x277D84FA0];
  v29 = objc_allocWithZone(PGGraphSocialGroupNodeCollection);
  v30 = [v28 targets];
  v31 = [v29 initWithGraph:v26 elementIdentifiers:v30];

  v32 = swift_allocObject();
  *(v32 + 16) = &v53;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_22F341BC8;
  *(v33 + 24) = v32;
  aBlock[4] = sub_22F26B650;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_33;
  v34 = _Block_copy(aBlock);

  [v31 enumerateUsingBlock_];

  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  v35 = v48;
  if (v34)
  {
    __break(1u);
LABEL_12:
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  v36 = sub_22F7415C0();
  v37 = [v46 loggingConnection];
  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 134218242;
    swift_beginAccess();
    *(v38 + 4) = *(v53 + 16);
    *(v38 + 12) = 2080;
    v40 = MEMORY[0x231900D40](v45, v35);
    v42 = sub_22F145F20(v40, v41, aBlock);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_22F0FC000, v37, v36, "Found %ld social group UUIDs in date intervals %s", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x2319033A0](v39, -1, -1);
    MEMORY[0x2319033A0](v38, -1, -1);
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  *v47 = v53;
}

id sub_22F341B54(void *a1)
{
  result = [a1 persistedUUID];
  if (result)
  {
    v2 = result;
    v3 = sub_22F740E20();
    v5 = v4;

    sub_22F10BBDC(&v6, v3, v5);
  }

  return result;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F341C50(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(*(a1 + 56) + 8 * v11);
        if (v12[2])
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v32 = v14[1];
      v33 = *v14;
      v30 = v12[4];
      v31 = v12[5];
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_22F125154(v15 + 1, 1);
        v2 = v34;
      }

      else
      {
      }

      v16 = *(v2 + 40);
      sub_22F742170();
      sub_22F740D60();
      result = sub_22F7421D0();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v31;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = 16 * v21;
      v28 = (*(v2 + 48) + v27);
      *v28 = v33;
      v28[1] = v32;
      v29 = (*(v2 + 56) + v27);
      *v29 = v30;
      v29[1] = v22;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v31;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.persistentIDByPlaylistID()()
{
  v2 = sub_22F341C50(*v0);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v4 = sub_22F741DF0();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v7 = v4;
  sub_22F342C28(v2, sub_22F34303C, 0, 1, &v7);
  v5 = v7;
  if (v1)
  {
  }

  return v5;
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.Filters.PlaylistInfo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22F341F9C(uint64_t a1)
{
  v2 = sub_22F343080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F341FD8(uint64_t a1)
{
  v2 = sub_22F343080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.Filters.PlaylistInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3998, &qword_22F786BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F343080();
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

uint64_t sub_22F3421A0()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F34221C()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F342274@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22F741E30();

  *a2 = v5 != 0;
  return result;
}

void sub_22F3422C8(uint64_t a1@<X8>)
{
  strcpy(a1, "personal-mix");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_22F34230C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22F741E30();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_22F342364(uint64_t a1)
{
  v2 = sub_22F3430D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3423A0(uint64_t a1)
{
  v2 = sub_22F3430D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.Filters.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39A8, &qword_22F786BC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3430D4();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39B0, &qword_22F786BC8);
    sub_22F343128();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F3425A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
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

uint64_t sub_22F342628(uint64_t a1)
{
  v2 = sub_22F343234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F342664(uint64_t a1)
{
  v2 = sub_22F343234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitPersonalPlaylistsResponse.PlaylistResponseMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39C0, &qword_22F786BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F343234();
  sub_22F742200();
  if (!v2)
  {
    sub_22F343288();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F342838()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_22F34285C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
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

uint64_t sub_22F34292C(uint64_t a1)
{
  v2 = sub_22F3432DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F342968(uint64_t a1)
{
  v2 = sub_22F3432DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitPersonalPlaylistsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB39C8, &unk_22F786BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3432DC();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1F30, &qword_22F777828);
  v15 = 0;
  sub_22F343330(&qword_2810A9310, &qword_27DAB1F30, &qword_22F777828, sub_22F1A8E44);
  sub_22F741F10();
  v11 = v16;
  v15 = 1;
  sub_22F3433AC();
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_22F342C28(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v43 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v42 = (63 - v6) >> 6;

  v9 = 0;
  v10 = 0;
  v11 = v8;
  if (v8)
  {
LABEL_9:
    while (1)
    {
      v13 = (v10 << 10) | (16 * __clz(__rbit64(v11)));
      v14 = (*(a1 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(a1 + 56) + v13);
      v18 = *v17;
      v19 = v17[1];
      v52 = v15;
      v53 = v16;
      v54 = v18;
      v55 = v19;

      a2(&v48, &v52);

      v21 = v48;
      v20 = v49;
      v22 = v50;
      v46 = v51;
      v52 = v48;
      v53 = v49;
      v23 = *a5;
      v25 = sub_22F1229E8(v48, v49);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if (a4)
        {
          if (v24)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_22F133E78();
          if (v29)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_22F125154(v28, a4 & 1);
        v30 = *a5;
        v31 = sub_22F1229E8(v21, v20);
        if ((v29 & 1) != (v32 & 1))
        {
          goto LABEL_26;
        }

        v25 = v31;
        if (v29)
        {
LABEL_20:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3A00, &qword_22F7871F8);
          sub_22F3438A0();
          v39 = swift_allocError();
          swift_willThrow();
          v56 = v39;
          v40 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
          if (swift_dynamicCast())
          {
            goto LABEL_27;
          }

          sub_22F1534EC();

          return;
        }
      }

      v33 = *a5;
      *(*a5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v34 = (v33[6] + 16 * v25);
      *v34 = v21;
      v34[1] = v20;
      v35 = (v33[7] + 16 * v25);
      *v35 = v22;
      v35[1] = v46;
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_25;
      }

      v33[2] = v38;
      a4 = 1;
      v9 = v10;
      v11 &= v11 - 1;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v9;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v42)
      {
        sub_22F1534EC();

        return;
      }

      v11 = *(v43 + 8 * v10);
      ++v12;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22F7420C0();
  __break(1u);
LABEL_27:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
  sub_22F741C50();
  MEMORY[0x231900B10](39, 0xE100000000000000);
  sub_22F741D40();
  __break(1u);
}

uint64_t sub_22F34303C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v2;
  a2[3] = v3;
}

unint64_t sub_22F343080()
{
  result = qword_27DAB39A0;
  if (!qword_27DAB39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39A0);
  }

  return result;
}

unint64_t sub_22F3430D4()
{
  result = qword_2810A9D40;
  if (!qword_2810A9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D40);
  }

  return result;
}

unint64_t sub_22F343128()
{
  result = qword_2810A93A0;
  if (!qword_2810A93A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB39B0, &qword_22F786BC8);
    sub_22F343330(&qword_2810A9308, &qword_27DAB39B8, &qword_22F786BD0, sub_22F3431E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93A0);
  }

  return result;
}

unint64_t sub_22F3431E0()
{
  result = qword_2810A9D48;
  if (!qword_2810A9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D48);
  }

  return result;
}

unint64_t sub_22F343234()
{
  result = qword_2810A9D60;
  if (!qword_2810A9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D60);
  }

  return result;
}

unint64_t sub_22F343288()
{
  result = qword_2810A9D28;
  if (!qword_2810A9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D28);
  }

  return result;
}

unint64_t sub_22F3432DC()
{
  result = qword_2810A9D18;
  if (!qword_2810A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D18);
  }

  return result;
}

uint64_t sub_22F343330(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_22F3433AC()
{
  result = qword_2810A9D20;
  if (!qword_2810A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D20);
  }

  return result;
}

unint64_t sub_22F343484()
{
  result = qword_27DAB39D0;
  if (!qword_27DAB39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39D0);
  }

  return result;
}

unint64_t sub_22F3434DC()
{
  result = qword_27DAB39D8;
  if (!qword_27DAB39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39D8);
  }

  return result;
}

unint64_t sub_22F343534()
{
  result = qword_27DAB39E0;
  if (!qword_27DAB39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39E0);
  }

  return result;
}

unint64_t sub_22F34358C()
{
  result = qword_27DAB39E8;
  if (!qword_27DAB39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39E8);
  }

  return result;
}

unint64_t sub_22F3435E4()
{
  result = qword_2810A9D08;
  if (!qword_2810A9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D08);
  }

  return result;
}

unint64_t sub_22F34363C()
{
  result = qword_2810A9D10;
  if (!qword_2810A9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D10);
  }

  return result;
}

unint64_t sub_22F343694()
{
  result = qword_2810A9D50;
  if (!qword_2810A9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D50);
  }

  return result;
}

unint64_t sub_22F3436EC()
{
  result = qword_2810A9D58;
  if (!qword_2810A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D58);
  }

  return result;
}

unint64_t sub_22F343744()
{
  result = qword_2810A9D30;
  if (!qword_2810A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D30);
  }

  return result;
}

unint64_t sub_22F34379C()
{
  result = qword_2810A9D38;
  if (!qword_2810A9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D38);
  }

  return result;
}

unint64_t sub_22F3437F4()
{
  result = qword_27DAB39F0;
  if (!qword_27DAB39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39F0);
  }

  return result;
}

unint64_t sub_22F34384C()
{
  result = qword_27DAB39F8;
  if (!qword_27DAB39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB39F8);
  }

  return result;
}

unint64_t sub_22F3438A0()
{
  result = qword_27DAB3A08[0];
  if (!qword_27DAB3A08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3A00, &qword_22F7871F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAB3A08);
  }

  return result;
}

uint64_t sub_22F34395C(uint64_t a1)
{
  v2 = sub_22F345B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F343998(uint64_t a1)
{
  v2 = sub_22F345B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F343AD8(uint64_t a1)
{
  v2 = sub_22F345B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F343B14(uint64_t a1)
{
  v2 = sub_22F345B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F343B94(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t _s11PhotosGraph13AudioAnalysisV15SavoyAttributesV4hash4intoys6HasherVz_tF_0()
{
  v1 = v0[2];
  v2 = *(v0 + 12);
  v3 = v0[4];
  v4 = *(v0 + 20);
  if (*(v0 + 4) == 1)
  {
    sub_22F742190();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_22F742190();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_22F742190();
  }

  v6 = *v0;
  sub_22F742190();
  sub_22F7421B0();
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_22F742190();
  sub_22F7421B0();
  if (!v4)
  {
LABEL_4:
    sub_22F742190();
    return sub_22F7421B0();
  }

  return sub_22F742190();
}

uint64_t sub_22F343E64(void (*a1)(_DWORD *))
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);
  v7 = *(v1 + 20);
  v9[18] = *v1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  sub_22F742170();
  a1(v9);
  return sub_22F7421D0();
}

uint64_t sub_22F343F24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
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

uint64_t sub_22F34413C(uint64_t a1, uint64_t a2, void (*a3)(_DWORD *))
{
  v5 = *(v3 + 4);
  v6 = *(v3 + 8);
  v7 = *(v3 + 12);
  v8 = *(v3 + 16);
  v9 = *(v3 + 20);
  v11[18] = *v3;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  sub_22F742170();
  a3(v11);
  return sub_22F7421D0();
}

uint64_t sub_22F3441D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_DWORD *))
{
  v6 = *(v4 + 4);
  v7 = *(v4 + 8);
  v8 = *(v4 + 12);
  v9 = *(v4 + 16);
  v10 = *(v4 + 20);
  v12[18] = *v4;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  sub_22F742170();
  a4(v12);
  return sub_22F7421D0();
}

uint64_t sub_22F34427C(uint64_t a1)
{
  v2 = sub_22F345BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3442B8(uint64_t a1)
{
  v2 = sub_22F345BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAnalysis.TimeSeriesAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3AC0, &qword_22F7872D0);
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
  sub_22F345BE4();
  sub_22F742210();
  v34 = v7;
  v35 = v30;
  v37 = v9;
  v36 = v31;
  v38 = v10;
  v40 = 0;
  sub_22F345C38();
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

uint64_t AudioAnalysis.TimeSeriesAttributes.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16) | (*(v1 + 20) << 32);
  v6 = *(v1 + 21);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) | (*(v1 + 44) << 32);
  v10 = *(v1 + 45);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64) | (*(v1 + 68) << 32);
  v14 = *(v1 + 69);
  sub_22F345A78(a1, v3, v4, v5 | (v6 << 40));
  sub_22F345A78(a1, v7, v8, v9 | (v10 << 40));
  return sub_22F345A78(a1, v11, v12, v13 | (v14 << 40));
}

uint64_t AudioAnalysis.TimeSeriesAttributes.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);
  v9 = *(v0 + 64) | (*(v0 + 68) << 32);
  v10 = *(v0 + 69);
  sub_22F742170();
  sub_22F345A78(v14, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v14, v5, v6, v7 | (v8 << 40));
  sub_22F345A78(v14, v13, v12, v9 | (v10 << 40));
  return sub_22F7421D0();
}

uint64_t AudioAnalysis.TimeSeriesAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3AD8, &qword_22F7872D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F345BE4();
  sub_22F742200();
  if (!v2)
  {
    v34 = 0;
    sub_22F345C8C();
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

uint64_t sub_22F344A04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);
  v9 = *(v0 + 64) | (*(v0 + 68) << 32);
  v10 = *(v0 + 69);
  sub_22F742170();
  sub_22F345A78(v14, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v14, v5, v6, v7 | (v8 << 40));
  sub_22F345A78(v14, v13, v12, v9 | (v10 << 40));
  return sub_22F7421D0();
}

uint64_t sub_22F344AEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16) | (*(v1 + 20) << 32);
  v6 = *(v1 + 21);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) | (*(v1 + 44) << 32);
  v10 = *(v1 + 45);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64) | (*(v1 + 68) << 32);
  v14 = *(v1 + 69);
  sub_22F345A78(a1, v3, v4, v5 | (v6 << 40));
  sub_22F345A78(a1, v7, v8, v9 | (v10 << 40));
  return sub_22F345A78(a1, v11, v12, v13 | (v14 << 40));
}

uint64_t sub_22F344BB8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 20) << 32);
  v4 = *(v0 + 21);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40) | (*(v0 + 44) << 32);
  v8 = *(v0 + 45);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);
  v9 = *(v0 + 64) | (*(v0 + 68) << 32);
  v10 = *(v0 + 69);
  sub_22F742170();
  sub_22F345A78(v14, v1, v2, v3 | (v4 << 40));
  sub_22F345A78(v14, v5, v6, v7 | (v8 << 40));
  sub_22F345A78(v14, v13, v12, v9 | (v10 << 40));
  return sub_22F7421D0();
}

__n128 AudioAnalysis.energy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  v3 = v1[1].n128_u8[4];
  v4 = v1[1].n128_u8[5];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[4] = v3;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[5] = v4;
  return result;
}

__n128 AudioAnalysis.valence.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 44);
  v4 = *(v1 + 45);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[4] = v3;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[5] = v4;
  return result;
}

__n128 AudioAnalysis.loudness.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = v2;
  *(a1 + 63) = *(v1 + 111);
  result = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F344D34()
{
  v1 = 0x65636E656C6176;
  if (*v0 != 1)
  {
    v1 = 0x7373656E64756F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796772656E65;
  }
}