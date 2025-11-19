uint64_t sub_26969F8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_26981A484();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DC0, &unk_269858700);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_269853B14();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;

  sub_269853B24();
}

uint64_t sub_26969F9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_269851D34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  sub_269854E14();
  v20 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v21 = [v20 NowPlaying];
  v32 = v21;
  swift_unknownObjectRelease();
  sub_269851D24();
  v33 = v18;
  sub_269851CC4();
  v34 = *(v12 + 8);
  v34(v16, v11);
  (*(v12 + 16))(v10, v18, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v23 = sub_269819BAC(v10, v8, 0, 5000, 0);
  v24 = [v21 publisherWithOptions_];
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F90];
  v26 = swift_allocObject();
  v26[2] = sub_26969C6F0;
  v26[3] = v19;
  v26[4] = v25;
  v39 = sub_26969C6F8;
  v40 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26981A49C;
  v38 = &block_descriptor_6;
  v27 = _Block_copy(&aBlock);

  v39 = sub_26969C71C;
  v40 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26981A49C;
  v38 = &block_descriptor_14_0;
  v28 = _Block_copy(&aBlock);

  v29 = [v24 sinkWithCompletion:v27 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v27);

  v34(v33, v11);
}

void sub_26969FE38(uint64_t *a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v47 = a4;
  v48 = a3;
  v6 = sub_269851D34();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = *a1;
  v44 = &v42 - v11;
  sub_269851D24();
  sub_26969F6B0(a2);
  v12 = sub_26980C0F4();
  v13 = sub_26975004C(v10);
  if (!v13)
  {
LABEL_27:
    v35 = sub_2696A01A8(v12);
    v36 = v43;
    sub_269851D24();
    v37 = v44;
    sub_269851CB4();
    v39 = v38;
    v40 = v46;
    v41 = *(v45 + 8);
    v41(v36, v46);
    v53[3] = &type metadata for NowPlayingUsageSignal;
    v53[4] = &off_287A3CBF8;
    v53[0] = v35;
    v53[1] = v39;
    v48(v53);
    v41(v37, v40);
    sub_269694F94(v53);

    return;
  }

  v14 = v13;
  v15 = 0;
  v16 = v10 & 0xC000000000000001;
  v49 = v10 + 32;
  v50 = v10 & 0xFFFFFFFFFFFFFF8;
  v51 = v10 & 0xC000000000000001;
  v52 = v13;
  while (1)
  {
    if (v16)
    {
      v17 = MEMORY[0x26D646120](v15, v10);
    }

    else
    {
      if (v15 >= *(v50 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v49 + 8 * v15);
    }

    v18 = v17;
    if (__OFADD__(v15++, 1))
    {
      break;
    }

    v20 = sub_269802BA0(v17);
    if (v21)
    {
      v22 = v21;
      if (*(a2 + 16))
      {
        v23 = v20;
        v24 = v10;
        v25 = v12;
        v26 = *(a2 + 40);
        sub_269855674();
        sub_269854B34();
        v27 = sub_2698556C4();
        v28 = ~(-1 << *(a2 + 32));
        do
        {
          v29 = v27 & v28;
          if (((*(a2 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
          {

            v12 = v25;
            goto LABEL_25;
          }

          v30 = (*(a2 + 48) + 16 * v29);
          if (*v30 == v23 && v22 == v30[1])
          {
            break;
          }

          v32 = sub_269855584();
          v27 = v29 + 1;
        }

        while ((v32 & 1) == 0);
        v12 = v25;
        if (*(v25 + 16) && (v33 = sub_26973CEF8(v23, v22), (v34 & 1) != 0))
        {
          if (__OFADD__(*(*(v25 + 56) + 8 * v33), 1))
          {
            goto LABEL_30;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v53[0] = v25;
          sub_2698400FC();

          v12 = v53[0];
        }

        else
        {
        }

LABEL_25:
        v10 = v24;
        v16 = v51;
        v14 = v52;
        goto LABEL_26;
      }
    }

LABEL_26:
    if (v15 == v14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_2696A01A8(uint64_t a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    while (1)
    {
      v13 = v8;
LABEL_8:
      v14 = *(*(a1 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
      v15 = __OFADD__(v7, v14);
      v7 += v14;
      if (v15)
      {
        break;
      }

      v11 &= v11 - 1;
      v8 = v13;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_14;
  }

  while (1)
  {
LABEL_5:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v23 = v7;
  if (v7 > 0)
  {
    v22 = MEMORY[0x277D84F98];
    sub_2696A05DC(a1, &v22, &v23);
    return v22;
  }

  if (qword_280322708 != -1)
  {
    goto LABEL_19;
  }

LABEL_14:
  v17 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v6, v17, v2);
  v18 = sub_2698548B4();
  v19 = sub_269854F24();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_269684000, v18, v19, "Normalize count is zero, skipping normalziation", v20, 2u);
    MEMORY[0x26D647170](v20, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_269694CBC();
  return sub_269854A04();
}

uint64_t sub_2696A0434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000026987B760;
  v7 = sub_26982EB4C(a1, a2, a3);
  *(inited + 72) = sub_269694CBC();
  if (!v7)
  {
    v7 = sub_269855044();
  }

  *(inited + 48) = v7;
  return sub_269854A04();
}

void sub_2696A0514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2696A0434(a1, a2, a4);
  sub_26981CFD4(0xD000000000000014, 0x800000026987B760, v5);
  if (v10)
  {

    sub_269694FFC(&v9, &v11);
    sub_269694CBC();
    swift_dynamicCast();
    [v8 doubleValue];
    v7 = v6;

    *(a3 + 56) = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2696A05DC(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v30 = v8;
  v31 = v4;
  v32 = a2;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v11 = __clz(__rbit64(v7)) | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11) / *a3;

      v35 = sub_269854DE4();
      v16 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v36 = *a2;
      v17 = sub_26973CEF8(v14, v13);
      if (__OFADD__(v36[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DE8, &unk_2698671E0);
      if (sub_2698552E4())
      {
        v21 = sub_26973CEF8(v14, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      if (v20)
      {
        v23 = v36[7];
        v24 = *(v23 + 8 * v19);
        *(v23 + 8 * v19) = v35;
      }

      else
      {
        v36[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v36[6] + 16 * v19);
        *v25 = v14;
        v25[1] = v13;
        *(v36[7] + 8 * v19) = v35;
        v26 = v36[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v36[2] = v28;
      }

      v7 &= v7 - 1;
      *v32 = v36;
      a2 = v32;

      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696A0860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(void), uint64_t a7)
{
  v57 = a5;
  v58 = a2;
  v10 = sub_2698548D4();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = sub_269851D34();
  v20 = OUTLINED_FUNCTION_8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v26 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v54 - v28;
  if (a3)
  {
    v55 = v27;
    v30 = type metadata accessor for SpotlightSearchProvider();
    v31 = swift_allocObject();
    *(&v60 + 1) = v30;
    v61 = &off_287A3B918;
    *&v59 = v31;
    type metadata accessor for SpotlightSignal.SearchProvider();
    inited = swift_initStackObject();
    v56 = a3;
    v33 = *(&v60 + 1);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
    v35 = *(*(v33 - 8) + 64);
    MEMORY[0x28223BE20](v34);
    OUTLINED_FUNCTION_3_1();
    v54 = a6;
    v36 = a7;
    v39 = (v38 - v37);
    (*(v40 + 16))(v38 - v37);
    v41 = *v39;
    inited[5] = v30;
    inited[6] = &off_287A3B918;
    inited[2] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v59);
    sub_269851D24();

    v43 = sub_2697DEC04(v42);
    v44 = *(v22 + 16);
    v45 = v29;
    v57 = v29;
    v46 = v55;
    v44(v26, v45, v55);
    v47 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v54;
    *(v48 + 24) = v36;
    (*(v22 + 32))(v48 + v47, v26, v46);

    sub_2696A1314(v58, v56, v43, sub_2696A18FC, v48);

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0(inited + 2);
    return (*(v22 + 8))(v57, v46);
  }

  else
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v50 = __swift_project_value_buffer(v10, qword_281571B50);
    (*(v13 + 16))(v18, v50, v10);
    v51 = sub_2698548B4();
    v52 = sub_269854F04();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_269684000, v51, v52, "SpotlightSignal#signal skipping signal with nil searchTerm", v53, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v13 + 8))(v18, v10);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    a6(&v59);
    return sub_269694F94(&v59);
  }
}

uint64_t sub_2696A0CA4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v47 = a2;
  v5 = sub_269851D34();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_281571B50);
  v45 = v9[2];
  v46 = v16;
  v45(v15);

  v17 = sub_2698548B4();
  v18 = sub_269854F14();

  v19 = os_log_type_enabled(v17, v18);
  v48 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54[0] = v44;
    *v20 = 136315138;
    v21 = sub_2698549F4();
    v23 = v8;
    v24 = a1;
    v25 = sub_26974F520(v21, v22, v54);

    *(v20 + 4) = v25;
    a1 = v24;
    v8 = v23;
    _os_log_impl(&dword_269684000, v17, v18, "SpotlightSignal#signal spotlight matches: %s", v20, 0xCu);
    v26 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x26D647170](v26, -1, -1);
    v27 = v20;
    v9 = v48;
    MEMORY[0x26D647170](v27, -1, -1);
  }

  v28 = v9[1];
  v28(v15, v8);
  v29 = sub_2696A01A8(a1);
  (v45)(v13, v46, v8);

  v30 = sub_2698548B4();
  v31 = sub_269854F14();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54[0] = v33;
    *v32 = 136315138;
    sub_269694CBC();
    v34 = sub_2698549F4();
    v36 = v13;
    v37 = sub_26974F520(v34, v35, v54);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_269684000, v30, v31, "SpotlightSignal#signal spotlight normalized matches: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D647170](v33, -1, -1);
    MEMORY[0x26D647170](v32, -1, -1);

    v38 = v36;
  }

  else
  {

    v38 = v13;
  }

  v28(v38, v8);
  v39 = v49;
  sub_269851D24();
  sub_269851CB4();
  v41 = v40;
  (*(v50 + 8))(v39, v51);
  v54[3] = &type metadata for SpotlightSignal;
  v54[4] = &off_287A3CDA8;
  v54[0] = v29;
  v54[1] = v41;
  v47(v54);
  return sub_269694F94(v54);
}

uint64_t sub_2696A114C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000026987B800;
  v7 = sub_26982EB4C(a1, a2, a3);
  *(inited + 72) = sub_269694CBC();
  if (!v7)
  {
    v7 = sub_269855024();
  }

  *(inited + 48) = v7;
  return sub_269854A04();
}

void sub_2696A1228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2696A114C(a1, a2, a4);
  sub_26981CFD4(0xD000000000000010, 0x800000026987B800, v5);
  if (v10)
  {

    sub_269694FFC(&v9, &v11);
    sub_269694CBC();
    swift_dynamicCast();
    [v8 doubleValue];
    v7 = v6;

    *(a3 + 384) = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2696A1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_2698548D4();
  v12 = OUTLINED_FUNCTION_8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v20 = __swift_project_value_buffer(v11, qword_281571B50);
  (*(v14 + 16))(v19, v20, v11);
  v21 = sub_2698548B4();
  v22 = sub_269854F14();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_269684000, v21, v22, "SpotlightSignal#signal using common spotlight local search provider for signal collection", v23, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v14 + 8))(v19, v11);
  v24 = *__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));

  return sub_26968F398(a1, a2, 0, v24, v6, a3, a4, a5);
}

uint64_t sub_2696A150C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v42 = a1;
  v39 = a3;
  v9 = sub_2698548D4();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v20 = __swift_project_value_buffer(v9, qword_281571B50);
  v37 = *(v12 + 16);
  v38 = v20;
  v37(v19);

  v21 = sub_2698548B4();
  v22 = sub_269854F14();

  v23 = os_log_type_enabled(v21, v22);
  v40 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v36 = a6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v35 = a5;
    v27 = v26;
    v43 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_26974F520(v42, a2, &v43);
    _os_log_impl(&dword_269684000, v21, v22, "SpotlightSignal#signal spotlight query string: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    a5 = v35;
    OUTLINED_FUNCTION_10();
    a6 = v36;
    OUTLINED_FUNCTION_10();
  }

  v28 = *(v12 + 8);
  v28(v19, v9);
  (v37)(v17, v38, v9);
  v29 = sub_2698548B4();
  v30 = sub_269854F14();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_269684000, v29, v30, "SpotlightSignal#signal finding spotlight matches...", v31, 2u);
    OUTLINED_FUNCTION_10();
  }

  v28(v17, v9);
  v32 = *__swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
  return sub_26968FB4C(v42, v40, v41, 50, a5, a6);
}

uint64_t sub_2696A17F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2696A18FC(uint64_t a1)
{
  v3 = *(sub_269851D34() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2696A0CA4(a1, v4, v5, v6);
}

uint64_t sub_2696A1970(uint64_t result, uint64_t a2, uint64_t a3)
{
  v12 = result;
  v4 = *(a3 + 16);
  v5 = (a3 + 72);
  if (v4)
  {
    while (1)
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v5 - 4);
      v11[0] = *(v5 - 5);
      v11[1] = v10;
      v11[2] = v6;
      v11[3] = v7;
      v11[4] = v8;
      v11[5] = v9;

      v12(v11);
      if (v3)
      {
        break;
      }

      --v4;
      v5 += 6;
      if (!v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_2696A1A84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v56 = a3;
  v7 = sub_269851D34();
  v8 = OUTLINED_FUNCTION_8(v7);
  v52 = v9;
  v53 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2698548D4();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v45[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  OUTLINED_FUNCTION_6_3();
  v62 = sub_269854A04();
  OUTLINED_FUNCTION_6_3();
  v61 = sub_269854A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DF0, &qword_2698587A8);
  OUTLINED_FUNCTION_6_3();
  v49 = v21;
  v60 = sub_269854A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DF8, &qword_2698587B0);
  OUTLINED_FUNCTION_6_3();
  v50 = v22;
  v59 = sub_269854A04();
  v57[2] = &v62;
  v57[3] = &v61;
  v57[4] = a2;
  v57[5] = &v60;
  v57[6] = &v59;
  sub_2696A1970(sub_2696A2934, v57, a1);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_281571B50);
  (*(v16 + 16))(v20, v23, v13);
  v24 = sub_2698548B4();
  v25 = sub_269854F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v46 = v25;
    v27 = v26;
    v48 = swift_slowAlloc();
    v58[0] = v48;
    *v27 = 136315906;
    OUTLINED_FUNCTION_1_4();

    v28 = sub_2698549F4();
    v47 = v13;
    v30 = v29;

    v31 = sub_26974F520(v28, v30, v58);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    OUTLINED_FUNCTION_1_4();

    sub_2698549F4();
    OUTLINED_FUNCTION_5_3();
    v32 = OUTLINED_FUNCTION_4_4();

    *(v27 + 14) = v32;
    *(v27 + 22) = 2080;
    OUTLINED_FUNCTION_1_4();

    sub_2698549F4();
    OUTLINED_FUNCTION_5_3();
    v33 = OUTLINED_FUNCTION_4_4();

    *(v27 + 24) = v33;
    *(v27 + 32) = 2080;
    OUTLINED_FUNCTION_1_4();

    sub_2698549F4();
    OUTLINED_FUNCTION_5_3();
    v34 = OUTLINED_FUNCTION_4_4();

    *(v27 + 34) = v34;
    _os_log_impl(&dword_269684000, v24, v46, "SupportedMediaSignal#signal gathered apps with media categories. play intent: %s, search intent: %s, play AppIntent: %s, search AppIntent: %s", v27, 0x2Au);
    v35 = v48;
    swift_arrayDestroy();
    MEMORY[0x26D647170](v35, -1, -1);
    MEMORY[0x26D647170](v27, -1, -1);

    (*(v16 + 8))(v20, v47);
  }

  else
  {

    (*(v16 + 8))(v20, v13);
  }

  OUTLINED_FUNCTION_1_4();
  v36 = v62;
  OUTLINED_FUNCTION_1_4();
  v37 = v61;
  OUTLINED_FUNCTION_1_4();
  v38 = v60;
  OUTLINED_FUNCTION_1_4();
  v39 = v59;

  v40 = v51;
  sub_269851D24();
  sub_269851CB4();
  v42 = v41;
  (*(v52 + 8))(v40, v53);
  v58[3] = &type metadata for SupportedMediaSignal;
  v58[4] = &off_287A3CEC8;
  v43 = swift_allocObject();
  v58[0] = v43;
  v43[2] = v36;
  v43[3] = v37;
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v42;
  v56(v58);
  __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_2696A203C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v40 = a5;
  v41 = a6;
  v38 = a2;
  v39 = a3;
  v7 = sub_269851A04();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2698519E4();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v53 = *a1;
  v47 = v14;
  v16 = a1[2];
  v15 = a1[3];
  v17 = a1[5];
  v43 = a1[4];
  v49 = 0xD000000000000014;
  v50 = 0x800000026987B820;
  v48 = &v49;
  v18 = sub_2698337D4();
  if (v18)
  {
    v49 = 0xD000000000000011;
    v50 = 0x800000026987B840;
    MEMORY[0x28223BE20](v18);
    *(&v38 - 2) = &v49;
    v19 = sub_2698337D4();
    if (v19)
    {

      v20 = v38;
      v21 = *v38;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *v20;
      v19 = sub_26984053C();
      *v20 = v49;
    }

    v49 = 0xD000000000000016;
    v50 = 0x800000026987B860;
    MEMORY[0x28223BE20](v19);
    *(&v38 - 2) = &v49;
    if (sub_2698337D4())
    {

      v22 = v39;
      v23 = *v39;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *v22;
      sub_26984053C();
      *v22 = v49;
    }
  }

  v51 = &type metadata for SiriVideoFeatureKeys;
  v52 = sub_2696A2978();
  LOBYTE(v49) = 3;
  v24 = sub_269853B34();
  result = __swift_destroy_boxed_opaque_existential_0(&v49);
  if (v24)
  {
    v26 = v42;
    v27 = (*(v10 + 104))(v13, *MEMORY[0x277CB9E18], v42);
    MEMORY[0x28223BE20](v27);
    *(&v38 - 2) = v13;
    v28 = sub_2698336C0(sub_2696A29CC, (&v38 - 4), v17);
    (*(v10 + 8))(v13, v26);
    if (v28)
    {

      v29 = v40;
      v30 = *v40;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *v29;
      sub_269840438();
      *v29 = v49;
    }

    v32 = v44;
    v31 = v45;
    v33 = v46;
    v34 = (*(v45 + 104))(v44, *MEMORY[0x277CB9FE0], v46);
    MEMORY[0x28223BE20](v34);
    *(&v38 - 2) = v32;
    v35 = sub_269833690(sub_2696A29EC, (&v38 - 4), v43);
    result = (*(v31 + 8))(v32, v33);
    if (v35)
    {

      v36 = v41;
      v37 = *v41;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *v36;
      result = sub_269840424();
      *v36 = v49;
    }
  }

  return result;
}

uint64_t sub_2696A2534(char a1)
{
  if (a1 == 2)
  {
    return MEMORY[0x277D84FA0];
  }

  if (a1)
  {
    v3 = v1[1];

    v5 = sub_2697F8D7C(v4);
    v6 = v1[3];
  }

  else
  {
    v9 = *v1;

    v5 = sub_2697F8D7C(v10);
    v11 = v1[2];
  }

  v8 = sub_2697F8D7C(v7);

  return sub_2696A25C4(v8, v5);
}

uint64_t sub_2696A25C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2697F4AE4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2696A26C8(uint64_t a1, uint64_t a2, double *a3)
{
  if (!sub_26982EB50(a1, a2, *v3))
  {
    sub_26982EB50(a1, a2, v3[1]);
  }

  OUTLINED_FUNCTION_19();
  v28 = 0xD000000000000014;
  v29 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_3();
  *(v9 - 16) = &v28;
  OUTLINED_FUNCTION_3_4();
  if (sub_2698337D4() || (OUTLINED_FUNCTION_19(), v28 = 0xD000000000000014, v29 = v10, MEMORY[0x28223BE20](v11), OUTLINED_FUNCTION_0_3(), *(v12 - 16) = &v28, OUTLINED_FUNCTION_3_4(), sub_2698337D4()))
  {
    v13 = 1.0;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    v28 = 0xD000000000000016;
    v29 = v14;
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_0_3();
    *(v16 - 16) = &v28;
    OUTLINED_FUNCTION_3_4();
    v17 = sub_2698337D4();
    v13 = 0.0;
    if (v17)
    {
      v13 = 1.0;
    }
  }

  a3[4] = v13;
  OUTLINED_FUNCTION_19();
  v28 = 0xD000000000000017;
  v29 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_3();
  *(v20 - 16) = &v28;
  OUTLINED_FUNCTION_3_4();
  if (sub_2698337D4())
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  a3[6] = v21;
  OUTLINED_FUNCTION_19();
  v28 = 0xD000000000000019;
  v29 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_3();
  *(v24 - 16) = &v28;
  OUTLINED_FUNCTION_3_4();
  v25 = sub_2698337D4();

  if (v25)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  a3[5] = v27;
  return result;
}

unint64_t sub_2696A2978()
{
  result = qword_280322E00;
  if (!qword_280322E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280322E00);
  }

  return result;
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

uint64_t sub_2696A2A20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2696A2A60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_1_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_26974F520(v0, v1, (v2 - 184));
}

uint64_t OUTLINED_FUNCTION_5_3()
{
}

uint64_t sub_2696A2B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_269851D34();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v18 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v25[-v19];
  type metadata accessor for UserContextSignal.ContextProvider();
  swift_initStackObject();
  sub_269851D24();
  v21 = sub_26969329C(0, &qword_2815718D8, 0x277CD3DD8);
  (*(v14 + 16))(v18, v20, v7);
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  (*(v14 + 32))(v23 + v22, v18, v7);

  sub_2696A36B0(v21, a5, sub_2696A382C, v23);

  return (*(v14 + 8))(v20, v7);
}

uint64_t sub_2696A2D08(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_269851D34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2698548D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2697E342C(a1);
  v44 = v8;
  if (v18)
  {
    v19 = v18;
    v43 = a2;
    v17 = (v18 + 64);
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    a2 = v21 & *(v18 + 64);
    v14 = (v20 + 63) >> 6;

    v22 = 0;
    v13 = 0;
    while (a2)
    {
      v23 = v22;
LABEL_10:
      v24 = __clz(__rbit64(a2)) | (v23 << 6);
      v25 = (*(v19 + 48) + 16 * v24);
      v26 = *(*(v19 + 56) + 8 * v24);
      v28 = *v25;
      v27 = v25[1];
      a2 &= a2 - 1;
      v45 = v28;
      v46 = v27;
      v47 = v26;
      sub_2696A3118(&v45);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v14)
      {

        sub_269851D24();
        sub_269851CB4();
        v30 = v29;
        (*(v9 + 8))(v12, v44);
        v48 = &type metadata for UserContextSignal;
        v49 = &off_287A3CFB8;
        v45 = v19;
        v46 = v30;
        v43(&v45);
        return sub_269694F94(&v45);
      }

      a2 = *&v17[8 * v23];
      ++v22;
      if (a2)
      {
        v22 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v43 = a4;
  if (qword_280322708 != -1)
  {
LABEL_19:
    swift_once();
  }

  v31 = __swift_project_value_buffer(v13, qword_281571B50);
  (*(v14 + 16))(v17, v31, v13);
  v32 = sub_2698548B4();
  v33 = sub_269854F24();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42[1] = a3;
    v35 = a2;
    v36 = v34;
    *v34 = 0;
    _os_log_impl(&dword_269684000, v32, v33, "UserContextSignal#signal missing, or error coercing INMediaUserContext results to type", v34, 2u);
    v37 = v36;
    a2 = v35;
    MEMORY[0x26D647170](v37, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  sub_26969329C(0, &qword_2815718D8, 0x277CD3DD8);
  v38 = sub_269854A04();
  sub_269851D24();
  sub_269851CB4();
  v40 = v39;
  (*(v9 + 8))(v12, v44);
  v48 = &type metadata for UserContextSignal;
  v49 = &off_287A3CFB8;
  v45 = v38;
  v46 = v40;
  (a2)(&v45);
  return sub_269694F94(&v45);
}

uint64_t sub_2696A3118(uint64_t *a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v25 = *a1;
  v8 = a1[2];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v6, v9, v2);
  swift_bridgeObjectRetain_n();
  v10 = v8;
  v11 = sub_2698548B4();
  v12 = sub_269854F44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v12;
    v14 = v13;
    v24 = swift_slowAlloc();
    v26 = v24;
    *v14 = 136315650;

    v15 = sub_26974F520(v25, v7, &v26);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2048;
    *(v14 + 14) = [v10 subscriptionStatus];

    *(v14 + 22) = 2048;
    v16 = sub_269854FD4();
    v25 = v2;
    v18 = v17;

    if (v18)
    {
      v19 = -1;
    }

    else
    {
      v19 = v16;
    }

    *(v14 + 24) = v19;

    _os_log_impl(&dword_269684000, v11, v23, "UserContextSignal#signal UserContext result:%s, subscriptionStatus: %ld, numberOfLibraryItems: %ld", v14, 0x20u);
    v20 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D647170](v20, -1, -1);
    MEMORY[0x26D647170](v14, -1, -1);

    return (*(v3 + 8))(v6, v25);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return (*(v3 + 8))(v6, v2);
  }
}

void sub_2696A33F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_26982EB4C(a1, a2, a3);
  if (v3 && (sub_269854FD4(), (v4 & 1) == 0))
  {
    v6 = v3;
    v5 = sub_269854FD4();
    v8 = v7;

    if (v8)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v5 = -1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000026987B980;
  if (v3)
  {
    [v3 subscriptionStatus];
    [v3 subscriptionStatus];
  }

  v10 = MEMORY[0x277D83B88];
  v11 = sub_269855544();
  MEMORY[0x26D645A60](v11);

  v12 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x737574617473;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v12;
  strcpy((inited + 80), "libraryItems");
  *(inited + 120) = v10;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v5;
  sub_269854A04();
}

void sub_2696A3584(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_2696A33F8(a1, a2, a4);
  v6 = v5;
  sub_26981CFD4(0x497972617262696CLL, 0xEC000000736D6574, v5);
  if (v13)
  {
    sub_269694FFC(&v12, v14);
    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    OUTLINED_FUNCTION_3_2();
    [v10 doubleValue];
    v8 = v7;

    a3[49] = v8;
    sub_26981CFD4(0xD000000000000012, 0x800000026987B980, v6);
    if (v13)
    {

      sub_269694FFC(&v12, v14);
      OUTLINED_FUNCTION_3_2();
      v9 = a3[51];
      a3[50] = v10;
      a3[51] = v11;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2696A36B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedStore];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_269854E34();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_269804154;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [v6 userContextOfClass:ObjCClassFromMetadata forBundleIdentifiers:v8 withCompletion:v9];
  _Block_release(v9);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696A382C(uint64_t a1)
{
  v3 = *(sub_269851D34() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_2696A2D08(a1, v4, v5, v6);
}

uint64_t sub_2696A38A0()
{
  v0 = sub_269854F94();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269854F74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_269854994();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  sub_269854984();
  sub_269854F64();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_269854FB4();
  qword_28033D5E0 = result;
  return result;
}

id sub_2696A3A60()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_28033D5E8 = result;
  return result;
}

void sub_2696A3AA0()
{
  if (qword_2803223D8 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D5E8;
  v1 = sub_2696A6EA4(v0, 0xD000000000000018, 0x800000026987BA10, 1);

  qword_28033D5F0 = v1;
}

uint64_t sub_2696A3B30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  sub_2696A74F4(v8, v9, v10, sub_2696A7484, v6);
}

uint64_t sub_2696A3BE4(uint64_t a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v6, v7, v2);
  swift_unknownObjectRetain();
  v8 = sub_2698548B4();
  v9 = sub_269854F04();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = a1;
    v17 = v11;
    *v10 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322E80, &qword_269858A50);
    v12 = sub_269854AE4();
    v14 = sub_26974F520(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269684000, v8, v9, "AppSelectionConfigurationProvider#updatedHandler new configuration available: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D647170](v11, -1, -1);
    MEMORY[0x26D647170](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return sub_2696B4BEC(sub_2696A3E34, 0);
}

uint64_t sub_2696A3E34()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281571B50);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2698548B4();
  v7 = sub_269854F44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "AppSelectionConfigurationProvider#updatedHandler loaded new configuration", v8, 2u);
    MEMORY[0x26D647170](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_2696A3FC0()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2698548D4();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v25 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  memcpy(v30, v3, 0x68uLL);
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v14 = __swift_project_value_buffer(v4, qword_281571B50);
  v23 = *(v7 + 16);
  v23(v13, v14, v4);
  v15 = sub_2698548B4();
  v16 = sub_269854F04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v7;
    *v17 = 0;
    _os_log_impl(&dword_269684000, v15, v16, "AppSelectionConfigurationProvider#updatedHandler loaded configuration", v17, 2u);
    v7 = v24;
    OUTLINED_FUNCTION_10();
  }

  v18 = *(v7 + 8);
  v18(v13, v4);
  if (*(&v30[1] + 1))
  {
    v28[0] = v30[0];
    v28[1] = v30[1];
    memcpy(v29, &v30[2], sizeof(v29));
    memcpy(v27, v30, sizeof(v27));
    sub_2696A6DC0(v27, &v26);
    v1(v28);
    sub_2696A6DF8(v30);
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    v23(v25, v14, v4);
    v19 = sub_2698548B4();
    v20 = sub_269854F34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_269684000, v19, v20, "AppSelectionConfigurationProvider#updatedHandler unexpected nil configuration", v21, 2u);
      OUTLINED_FUNCTION_10();
    }

    v18(v25, v4);
    sub_269855354();
    __break(1u);
  }
}

uint64_t sub_2696A42F4(uint64_t (*a1)(void), uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v244 = a5;
  v237 = a4;
  v250 = a2;
  v254 = *MEMORY[0x277D85DE8];
  v7 = sub_269851DA4();
  v238 = *(v7 - 1);
  v239 = v7;
  v8 = *(v238 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v218 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_269851C74();
  v242 = *(v240 - 8);
  v11 = v242[8];
  v12 = MEMORY[0x28223BE20](v240);
  v230 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v231 = &v218 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v229 = &v218 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v232 = &v218 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v236 = &v218 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v235 = &v218 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v234 = &v218 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v243 = &v218 - v27;
  MEMORY[0x28223BE20](v26);
  v245 = &v218 - v28;
  v251 = sub_2698548D4();
  v29 = *(v251 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v251);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v218 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v36 = MEMORY[0x28223BE20](v35);
  v37 = MEMORY[0x28223BE20](v36);
  v38 = MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](&v218 - v39);
  v41 = MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](v41);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v218 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v218 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v218 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v218 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v65 = &v218 - v64;
  if ((a3 & 1) == 0)
  {
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v116 = v251;
    v117 = __swift_project_value_buffer(v251, qword_281571B50);
    (*(v29 + 16))(v34, v117, v116);
    v118 = sub_2698548B4();
    v119 = sub_269854F04();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_269684000, v118, v119, "AppSelectionConfigurationProvider#load skipping model load as app selection disabled in trial configuration", v120, 2u);
      MEMORY[0x26D647170](v120, -1, -1);
    }

    (*(v29 + 8))(v34, v251);
    goto LABEL_23;
  }

  v224 = v60;
  v225 = v59;
  v226 = v58;
  v227 = v57;
  v228 = v56;
  v223 = v55;
  v222 = v63;
  v220 = v62;
  v221 = v61;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v251, qword_281571B50);
  v67 = *(v29 + 16);
  v246 = v66;
  v247 = v67;
  v248 = v29 + 16;
  (v67)(v65);
  v68 = sub_2698548B4();
  v69 = sub_269854F04();
  v70 = os_log_type_enabled(v68, v69);
  v233 = a1;
  if (v70)
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_269684000, v68, v69, "AppSelectionConfigurationProvider#load computing model...", v71, 2u);
    v72 = v71;
    a1 = v233;
    MEMORY[0x26D647170](v72, -1, -1);
  }

  v73 = *(v29 + 8);
  v74 = v251;
  v241 = v29 + 8;
  v249 = v73;
  v73(v65, v251);
  v75 = v244;
  if (!v244)
  {
    v247(v54, v246, v74);
    v121 = sub_2698548B4();
    v122 = sub_269854F24();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_269684000, v121, v122, "AppSelectionConfigurationProvider#load no path for model", v123, 2u);
      MEMORY[0x26D647170](v123, -1, -1);
    }

    v249(v54, v74);
LABEL_23:
    v253 = 0;
    result = a1(&v253);
    goto LABEL_24;
  }

  v247(v51, v246, v74);

  v76 = sub_2698548B4();
  v77 = sub_269854F04();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v253 = v79;
    *v78 = 136315138;
    *(v78 + 4) = sub_26974F520(v237, v75, &v253);
    _os_log_impl(&dword_269684000, v76, v77, "AppSelectionConfigurationProvider#load using path for model: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v80 = v79;
    a1 = v233;
    MEMORY[0x26D647170](v80, -1, -1);
    v81 = v78;
    v74 = v251;
    MEMORY[0x26D647170](v81, -1, -1);
  }

  v249(v51, v74);
  v82 = NSTemporaryDirectory();
  sub_269854A94();

  sub_269851C04();

  v83 = objc_opt_self();
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v84 = swift_allocObject();
  v218 = xmmword_2698580D0;
  *(v84 + 16) = xmmword_2698580D0;
  *(v84 + 32) = sub_269851C54();
  *(v84 + 40) = v85;
  sub_269851D94();
  v86 = sub_269851D54();
  v88 = v87;
  (*(v238 + 8))(v10, v239);
  *(v84 + 48) = v86;
  *(v84 + 56) = v88;
  v89 = sub_269854CA4();

  v239 = v83;
  v90 = [v83 fileURLWithPathComponents_];

  if (v90)
  {
    v91 = v243;
    sub_269851C44();

    v247(v45, v246, v74);
    v92 = sub_2698548B4();
    v93 = sub_269854F44();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_269684000, v92, v93, "AppSelectionConfigurationProvider#load creating temporary directory...", v94, 2u);
      MEMORY[0x26D647170](v94, -1, -1);
    }

    v249(v45, v74);
    v95 = [objc_opt_self() defaultManager];
    v96 = sub_269851C24();
    v253 = 0;
    v97 = [v95 createDirectoryAtURL:v96 withIntermediateDirectories:1 attributes:0 error:&v253];

    v98 = v253;
    if (v97)
    {
      v99 = v224;
      v247(v224, v246, v74);
      v100 = v242;
      v101 = (v242 + 2);
      v102 = v234;
      v103 = v240;
      v225 = v242[2];
      v225(v234, v91, v240);
      v104 = v98;
      v105 = sub_2698548B4();
      v106 = v74;
      v107 = sub_269854F04();
      if (os_log_type_enabled(v105, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v253 = v109;
        *v108 = 136315138;
        sub_2696A80CC(&qword_280322EB0, MEMORY[0x277CC9260]);
        v110 = sub_269855544();
        v111 = v102;
        v113 = v112;
        v238 = v100[1];
        (v238)(v111, v103);
        v114 = sub_26974F520(v110, v113, &v253);

        *(v108 + 4) = v114;
        _os_log_impl(&dword_269684000, v105, v107, "AppSelectionConfigurationProvider#load created temporary directory %s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x26D647170](v109, -1, -1);
        MEMORY[0x26D647170](v108, -1, -1);

        v115 = v99;
        v106 = v251;
      }

      else
      {

        v238 = v100[1];
        (v238)(v102, v103);
        v115 = v99;
      }

      v249(v115, v106);
      v143 = v235;
      v144 = v226;
      v247(v226, v246, v106);
      v235 = v101;
      v225(v143, v243, v103);
      v145 = sub_2698548B4();
      v146 = v103;
      v147 = sub_269854F04();
      if (os_log_type_enabled(v145, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v253 = v149;
        *v148 = 136315138;
        sub_2696A80CC(&qword_280322EB0, MEMORY[0x277CC9260]);
        v150 = sub_269855544();
        v151 = v143;
        v153 = v152;
        v154 = v103;
        v155 = v238;
        (v238)(v151, v154);
        v156 = sub_26974F520(v150, v153, &v253);

        *(v148 + 4) = v156;
        _os_log_impl(&dword_269684000, v145, v147, "AppSelectionConfigurationProvider#load using outdir for model: %s", v148, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v149);
        MEMORY[0x26D647170](v149, -1, -1);
        MEMORY[0x26D647170](v148, -1, -1);

        v157 = v144;
        v158 = v251;
      }

      else
      {

        v161 = v103;
        v155 = v238;
        (v238)(v143, v161);
        v157 = v144;
        v158 = v106;
      }

      v249(v157, v158);
      v162 = v233;
      v163 = [objc_allocWithZone(ArchiveExtractor) init];
      v164 = v236;
      sub_269851C14();
      v165 = sub_269851C24();
      v155(v164, v146);
      v166 = sub_269851C24();
      LODWORD(v164) = [v163 extractArchiveAtURL:v165 toDestinationDirectoryURL:v166];

      if (v164)
      {
        v167 = v251;
        v247(v227, v246, v251);
        v168 = sub_2698548B4();
        v169 = sub_269854F04();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = 0;
          _os_log_impl(&dword_269684000, v168, v169, "AppSelectionConfigurationProvider#load successfully extracted model", v170, 2u);
          MEMORY[0x26D647170](v170, -1, -1);
        }

        v249(v227, v167);
        v171 = swift_allocObject();
        *(v171 + 16) = v218;
        *(v171 + 32) = sub_269851C54();
        *(v171 + 40) = v172;
        *(v171 + 48) = 0xD00000000000001ELL;
        *(v171 + 56) = 0x800000026987BAA0;
        v173 = sub_269854CA4();

        v174 = [v239 fileURLWithPathComponents_];

        if (v174)
        {
          v175 = v232;
          sub_269851C44();

          v176 = v222;
          v247(v222, v246, v167);
          v177 = v229;
          v225(v229, v175, v146);
          v178 = sub_2698548B4();
          v179 = v167;
          v180 = sub_269854F04();
          if (os_log_type_enabled(v178, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v253 = v182;
            *v181 = 136315138;
            sub_2696A80CC(&qword_280322EB0, MEMORY[0x277CC9260]);
            v183 = sub_269855544();
            v184 = v177;
            v186 = v185;
            (v238)(v184, v146);
            v187 = sub_26974F520(v183, v186, &v253);

            *(v181 + 4) = v187;
            _os_log_impl(&dword_269684000, v178, v180, "AppSelectionConfigurationProvider#load loading model from: %s", v181, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v182);
            MEMORY[0x26D647170](v182, -1, -1);
            MEMORY[0x26D647170](v181, -1, -1);

            v188 = v251;
            v249(v176, v251);
          }

          else
          {

            (v238)(v177, v146);
            v249(v176, v179);
            v188 = v179;
          }

          v196 = v245;
          v197 = v231;
          v198 = v232;
          v199 = v225;
          v225(v231, v232, v146);
          sub_26969329C(0, &qword_280322EA8, 0x277CBFF20);
          v200 = v230;
          v199(v230, v197, v146);
          v201 = sub_2696A691C(v200);
          (v238)(v197, v146);
          type metadata accessor for PlayMediaAppSelection();
          v202 = swift_allocObject();
          v202[2] = v201;
          v203 = v220;
          v247(v220, v246, v188);

          v204 = sub_2698548B4();
          v205 = v188;
          v206 = sub_269854F04();

          if (os_log_type_enabled(v204, v206))
          {
            v207 = swift_slowAlloc();
            v208 = swift_slowAlloc();
            v253 = v208;
            *v207 = 136315138;
            v252 = v202;

            v209 = sub_269854AE4();
            v211 = sub_26974F520(v209, v210, &v253);

            *(v207 + 4) = v211;
            _os_log_impl(&dword_269684000, v204, v206, "AppSelectionConfigurationProvider#load loaded model successfully: %s", v207, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v208);
            MEMORY[0x26D647170](v208, -1, -1);
            v212 = v207;
            v198 = v232;
            v196 = v245;
            MEMORY[0x26D647170](v212, -1, -1);

            v213 = v203;
            v214 = v251;
          }

          else
          {

            v213 = v203;
            v214 = v205;
          }

          v249(v213, v214);
          v215 = v233;
          v253 = v202;

          v215(&v253);

          v216 = v240;
          v217 = v238;
          (v238)(v198, v240);
          v217(v243, v216);
          v217(v196, v216);

          goto LABEL_24;
        }

        v247(v223, v246, v167);
        v193 = sub_2698548B4();
        v194 = sub_269854F24();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 0;
          _os_log_impl(&dword_269684000, v193, v194, "AppSelectionConfigurationProvider#load error creating mlmodelc dir url", v195, 2u);
          MEMORY[0x26D647170](v195, -1, -1);
        }

        v192 = &v254;
      }

      else
      {
        v167 = v251;
        v247(v228, v246, v251);
        v189 = sub_2698548B4();
        v190 = sub_269854F24();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          *v191 = 0;
          _os_log_impl(&dword_269684000, v189, v190, "AppSelectionConfigurationProvider#load error extracting model", v191, 2u);
          MEMORY[0x26D647170](v191, -1, -1);
        }

        v192 = &v255;
      }

      v249(*(v192 - 32), v167);
      v253 = 0;
      v162(&v253);
      v155(v243, v146);
      result = (v155)(v245, v146);
      goto LABEL_24;
    }

    v129 = v253;
    v130 = sub_269851BD4();

    swift_willThrow();
    v131 = v225;
    v247(v225, v246, v74);
    v132 = v130;
    v133 = sub_2698548B4();
    v134 = sub_269854F24();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v253 = v136;
      *v135 = 136446210;
      v252 = v130;
      v137 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v138 = sub_269854AE4();
      v140 = sub_26974F520(v138, v139, &v253);
      a1 = v233;

      *(v135 + 4) = v140;
      _os_log_impl(&dword_269684000, v133, v134, "AppSelectionConfigurationProvider#load error creating temporary directory %{public}s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v136);
      v141 = v136;
      v142 = v245;
      MEMORY[0x26D647170](v141, -1, -1);
      MEMORY[0x26D647170](v135, -1, -1);

      v249(v131, v251);
    }

    else
    {

      v249(v131, v74);
      v142 = v245;
    }

    v253 = 0;
    a1(&v253);

    v159 = v242[1];
    v160 = v240;
    v159(v91, v240);
    result = (v159)(v142, v160);
  }

  else
  {
    v247(v48, v246, v74);
    v126 = sub_2698548B4();
    v127 = sub_269854F24();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_269684000, v126, v127, "AppSelectionConfigurationProvider#load error creating model output dir url", v128, 2u);
      MEMORY[0x26D647170](v128, -1, -1);
    }

    v249(v48, v74);
    v253 = 0;
    a1(&v253);
    result = (v242[1])(v245, v240);
  }

LABEL_24:
  v125 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2696A5DDC(uint64_t *a1)
{
  v2 = sub_2698548D4();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = *a1;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v12 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v5 + 16))(v10, v12, v2);

  v13 = sub_2698548B4();
  v14 = sub_269854F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11 != 0;

    _os_log_impl(&dword_269684000, v13, v14, "AppSelectionConfigurationProvider#load model load completed in background?:%{BOOL}d", v15, 8u);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  return (*(v5 + 8))(v10, v2);
}

id sub_2696A5F80()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v1 = OUTLINED_FUNCTION_9_2();
  v2 = OUTLINED_FUNCTION_18_1(v1, sel_levelForFactor_withNamespaceName_);

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 BOOLeanValue];

  return v3;
}

void sub_2696A6010()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v1 = OUTLINED_FUNCTION_9_2();
  v2 = OUTLINED_FUNCTION_18_1(v1, sel_levelForFactor_withNamespaceName_);

  if (v2)
  {
    [v2 doubleValue];
  }
}

void sub_2696A60A8()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v1 = OUTLINED_FUNCTION_9_2();
  v2 = OUTLINED_FUNCTION_18_1(v1, sel_levelForFactor_withNamespaceName_);

  if (v2)
  {
    [v2 doubleValue];
  }
}

void sub_2696A6140()
{
  OUTLINED_FUNCTION_19_1();
  v32 = OUTLINED_FUNCTION_22();
  v4 = OUTLINED_FUNCTION_8(v32);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_1();
  v7 = sub_269854A64();
  v8 = sub_269854A64();
  v9 = [v1 levelForFactor:v7 withNamespaceName:v8];

  if (!v9)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_23:
    sub_2697F1EE0(v26);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  sub_2697DE348(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_7_3();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_12_0();
    v18 = OUTLINED_FUNCTION_20_0(v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_5_4(v18);
    v19 = MEMORY[0x277D84F90];
    while (v33 != v3)
    {
      if (v3 >= v1[2])
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_14_0();
      sub_269851AF4();
      sub_2696A8114();
      sub_2698550F4();
      v20 = OUTLINED_FUNCTION_11_1();
      v21(v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v19[2];
        OUTLINED_FUNCTION_3_5();
        sub_26977BCE4();
        v19 = v23;
      }

      if (v19[2] >= v19[3] >> 1)
      {
        sub_26977BCE4();
        v19 = v24;
      }

      OUTLINED_FUNCTION_13();
    }

    v25 = v19[2];
    v26 = MEMORY[0x277D84F90];
LABEL_12:
    v27 = v19 + 5;
    while (v25)
    {
      if (!v19[2])
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_6_4(v27);
      if (v28)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_1();
        }

        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_15_0(v29);
        }

        *(v26 + 16) = v30 + 1;
        v31 = v26 + 16 * v30;
        *(v31 + 32) = v2;
        *(v31 + 40) = v0;
        goto LABEL_12;
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

void sub_2696A63D8()
{
  OUTLINED_FUNCTION_19_1();
  v32 = OUTLINED_FUNCTION_22();
  v4 = OUTLINED_FUNCTION_8(v32);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8_1();
  v7 = sub_269854A64();
  v8 = sub_269854A64();
  v9 = [v1 levelForFactor:v7 withNamespaceName:v8];

  if (!v9)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_23:
    sub_2697F1EE0(v26);
    OUTLINED_FUNCTION_21_0();
    return;
  }

  sub_2697DE348(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_7_3();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_12_0();
    v18 = OUTLINED_FUNCTION_20_0(v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_5_4(v18);
    v19 = MEMORY[0x277D84F90];
    while (v33 != v3)
    {
      if (v3 >= v1[2])
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_14_0();
      sub_269851AF4();
      sub_2696A8114();
      sub_2698550F4();
      v20 = OUTLINED_FUNCTION_11_1();
      v21(v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = v19[2];
        OUTLINED_FUNCTION_3_5();
        sub_26977BCE4();
        v19 = v23;
      }

      if (v19[2] >= v19[3] >> 1)
      {
        sub_26977BCE4();
        v19 = v24;
      }

      OUTLINED_FUNCTION_13();
    }

    v25 = v19[2];
    v26 = MEMORY[0x277D84F90];
LABEL_12:
    v27 = v19 + 5;
    while (v25)
    {
      if (!v19[2])
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_6_4(v27);
      if (v28)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_16_1();
        }

        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_15_0(v29);
        }

        *(v26 + 16) = v30 + 1;
        v31 = v26 + 16 * v30;
        *(v31 + 32) = v2;
        *(v31 + 40) = v0;
        goto LABEL_12;
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_2696A6670()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8_1();
  sub_269854A64();
  v2 = OUTLINED_FUNCTION_9_2();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  v4 = [v3 fileValue];
  if (!v4)
  {
    return 0;
  }

  if (([v4 hasPath] & 1) == 0 || (v5 = objc_msgSend(v4, sel_path)) == 0)
  {

    return 0;
  }

  v6 = v5;
  v7 = sub_269854A94();

  return v7;
}

void sub_2696A6768()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2698548D4();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = *v3;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v14 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v7 + 16))(v12, v14, v4);

  v15 = sub_2698548B4();
  v16 = sub_269854F44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v13 != 0;

    _os_log_impl(&dword_269684000, v15, v16, "AppSelectionConfiguration#model produced model?:%{BOOL}d", v17, 8u);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  (*(v7 + 8))(v12, v4);
  v1(v13);
  OUTLINED_FUNCTION_21_0();
}

id sub_2696A691C(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_269851C24();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_269851C74();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_269851BD4();

    swift_willThrow();
    v9 = sub_269851C74();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2696A6A74(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_269854C04();
    OUTLINED_FUNCTION_17_1();
    sub_26977BDB4();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_26977BDB4();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_10_2();
      v17 = sub_269854BE4();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_10_2();
      v16 = sub_269854B44();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_269854C04();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      OUTLINED_FUNCTION_3_5();
      sub_26977BDB4();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_26977BDB4();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_10_2();
    v16 = sub_269854B44();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_269854C04();
        OUTLINED_FUNCTION_17_1();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      OUTLINED_FUNCTION_3_5();
      sub_26977BDB4();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2696A6DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696A6E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_269855584() & 1;
  }
}

uint64_t sub_2696A6EA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v57[3] = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  v57[4] = &off_287A3D208;
  v57[0] = a1;
  v57[1] = a2;
  v57[2] = a3;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_281571B50);
  v20 = v9[2];
  v51 = v19;
  v20(v18);
  v21 = sub_2698548B4();
  v22 = sub_269854F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = v8;
    v24 = v20;
    v25 = a4;
    v26 = v16;
    v27 = v13;
    v28 = v9;
    v29 = v23;
    *v23 = 67109120;
    *(v23 + 4) = 247;
    _os_log_impl(&dword_269684000, v21, v22, "AppSelectionConfigurationProvider#trail project ID: %d", v23, 8u);
    v30 = v29;
    v9 = v28;
    v13 = v27;
    v16 = v26;
    a4 = v25;
    v20 = v24;
    v8 = v50;
    MEMORY[0x26D647170](v30, -1, -1);
  }

  v31 = v9[1];
  v31(v18, v8);
  sub_2696A73F8(v57, &aBlock);
  v32 = swift_allocObject();
  sub_26968E5D4(&aBlock, v32 + 16);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E18, &unk_269858A40);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_2696B21B8(sub_2696A745C, v32);
  if (a4)
  {
    (v20)(v16, v51, v8);

    v37 = sub_2698548B4();
    v38 = sub_269854F04();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_269684000, v37, v38, "AppSelectionConfigurationProvider#updatedHandler enabled...", v39, 2u);
      MEMORY[0x26D647170](v39, -1, -1);
    }

    v31(v16, v8);
    if (qword_2803223D8 != -1)
    {
      swift_once();
    }

    v40 = qword_28033D5E8;
    v41 = sub_269854A64();
    if (qword_2803223D0 != -1)
    {
      swift_once();
    }

    v42 = qword_28033D5E0;
    v55 = sub_2696A7464;
    v56 = v36;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v53 = sub_2697E8CD4;
    v54 = &block_descriptor_8;
    v43 = _Block_copy(&aBlock);

    v44 = [v40 addUpdateHandlerForNamespaceName:v41 queue:v42 usingBlock:v43];
    _Block_release(v43);
    swift_unknownObjectRelease();
  }

  else
  {
    (v20)(v13, v51, v8);
    v45 = sub_2698548B4();
    v46 = sub_269854F04();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_269684000, v45, v46, "AppSelectionConfigurationProvider#updatedHandler disabled", v47, 2u);
      MEMORY[0x26D647170](v47, -1, -1);
    }

    v31(v13, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(v57);
  return v36;
}

uint64_t sub_2696A73F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696A7484(void *__src)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  memcpy(__dst, __src, sizeof(__dst));
  return v2(__dst);
}

uint64_t sub_2696A74F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v130 = a4;
  v131 = a5;
  v8 = sub_269854954();
  v125 = *(v8 - 8);
  v126 = v8;
  v9 = *(v125 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269854994();
  isa = v12[-1].isa;
  v124 = v12;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v12);
  v15 = v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2698548D4();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v136 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v118 - v21;
  v143 = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  v144 = &off_287A3D208;
  v142[0] = a1;
  v142[1] = a2;
  v142[2] = a3;
  v23 = qword_280322708;
  v24 = a1;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v16, qword_281571B50);
  v121 = v17[2];
  v122 = v25;
  v121(v22);
  v26 = sub_2698548B4();
  v27 = sub_269854F04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_269684000, v26, v27, "AppSelectionConfigurationProvider#load loading configuration...", v28, 2u);
    MEMORY[0x26D647170](v28, -1, -1);
  }

  v128 = v17[1];
  v129 = v17 + 1;
  v128(v22, v16);
  if (qword_2803223D8 != -1)
  {
    swift_once();
  }

  v137 = v16;
  v29 = qword_28033D5E8;
  [qword_28033D5E8 refresh];
  v120 = [v29 trackingId];
  sub_2696D6D30(0xD000000000000018, 0x800000026987BA10, &v145);
  v118[1] = v146;
  v132 = v147;
  v135 = v148;
  v139 = *(&v147 + 1);
  v140 = *(&v148 + 1);
  v30 = __swift_project_boxed_opaque_existential_1(v142, v143);
  v32 = *v30;
  v31 = v30[1];
  v33 = v30[2];
  LOBYTE(v29) = sub_2696A5F80();
  v34 = __swift_project_boxed_opaque_existential_1(v142, v143);
  v36 = *v34;
  v35 = v34[1];
  v37 = v34[2];
  sub_2696A6010();
  v39 = v38;
  v40 = __swift_project_boxed_opaque_existential_1(v142, v143);
  v42 = *v40;
  v41 = v40[1];
  v43 = v40[2];
  sub_2696A60A8();
  v45 = v44;
  v46 = __swift_project_boxed_opaque_existential_1(v142, v143);
  v48 = *v46;
  v47 = v46[1];
  v49 = v46[2];
  v50 = sub_2696A6670();
  v52 = v51;
  v53 = __swift_project_boxed_opaque_existential_1(v142, v143);
  v55 = *v53;
  v54 = v53[1];
  v56 = v53[2];
  sub_2696A6140();
  v134 = v57;
  v58 = __swift_project_boxed_opaque_existential_1(v142, v143);
  v60 = *v58;
  v59 = v58[1];
  v61 = v58[2];
  sub_2696A63D8();
  v138 = v62;
  v63 = swift_allocObject();
  v133 = v29 & 1;
  *(v63 + 16) = v29 & 1;
  v118[0] = v50;
  *(v63 + 24) = v50;
  *(v63 + 32) = v52;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322E90, &qword_269858A58);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v119 = v52;

  v67 = sub_2696B2C6C(sub_2696A8034, v63);
  if (qword_2803223D0 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_2696A8040;
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_9;
  v68 = _Block_copy(aBlock);
  v127 = v67;

  sub_269854974();
  v141[0] = MEMORY[0x277D84F90];
  sub_2696A80CC(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269694E4C();
  v69 = v126;
  sub_269855174();
  MEMORY[0x26D645EA0](0, v15, v11, v68);
  _Block_release(v68);
  (*(v125 + 8))(v11, v69);
  (*(isa + 1))(v15, v124);

  v70 = v146;
  if (v146)
  {
    v126 = v145;
    v149 = v147;

    v71 = v139;

    v72 = v140;

    sub_2696A8078(&v149);
    v150 = v148;
    sub_2696A8078(&v150);
  }

  else
  {
    v135 = 0;
    v72 = 0;
    v132 = 0;
    v71 = 0;
    v126 = 0;
  }

  (v121)(v136, v122, v137);

  v73 = v119;

  v74 = v134;

  v75 = v120;

  v76 = sub_2698548B4();
  v77 = sub_269854F04();
  v140 = v72;

  v139 = v71;

  v125 = v70;

  v78 = v75;

  v79 = v74;

  LODWORD(isa) = v77;
  v124 = v76;
  if (os_log_type_enabled(v76, v77))
  {
    v80 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v141[0] = v122;
    *v80 = 67242498;
    *(v80 + 4) = v133;
    *(v80 + 8) = 2048;
    *(v80 + 10) = v39;
    *(v80 + 18) = 2048;
    *(v80 + 20) = v45;
    *(v80 + 28) = 2080;
    aBlock[0] = v118[0];
    aBlock[1] = v73;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    v81 = sub_269854AE4();
    v83 = sub_26974F520(v81, v82, v141);

    *(v80 + 30) = v83;
    *(v80 + 38) = 2080;
    v84 = sub_269854E54();
    v86 = sub_26974F520(v84, v85, v141);

    *(v80 + 40) = v86;
    *(v80 + 48) = 2080;
    v87 = sub_269854E54();
    v89 = sub_26974F520(v87, v88, v141);

    *(v80 + 50) = v89;
    *(v80 + 58) = 2080;
    v90 = v75;
    v91 = v75;
    v92 = [v91 description];
    v93 = sub_269854A94();
    v95 = v94;

    v96 = sub_26974F520(v93, v95, v141);

    *(v80 + 60) = v96;
    *(v80 + 68) = 2082;
    v97 = v125;
    if (v125)
    {
      v98 = v125;
    }

    else
    {
      v98 = 0xE000000000000000;
    }

    v99 = v126;
    v100 = sub_26974F520(v126, v98, v141);

    *(v80 + 70) = v100;
    *(v80 + 78) = 2082;
    v101 = v132;
    v102 = v139;
    aBlock[0] = v132;
    aBlock[1] = v139;

    v103 = sub_269854AE4();
    v105 = sub_26974F520(v103, v104, v141);

    *(v80 + 80) = v105;
    *(v80 + 88) = 2080;
    v106 = v140;
    if (v140)
    {
      v107 = v135;
    }

    else
    {
      v107 = 0;
    }

    if (v140)
    {
      v108 = v140;
    }

    else
    {
      v108 = 0xE000000000000000;
    }

    v109 = sub_26974F520(v107, v108, v141);

    *(v80 + 90) = v109;
    v110 = v124;
    _os_log_impl(&dword_269684000, v124, isa, "AppSelectionConfigurationProvider#configuration appSelectionEnabled?:%{BOOL,public}d minimumNormalizedConfidence?:%f minimumAbsoluteConfidence?:%f model:%s  videoAppBundleIdentifiers:%s musicAppBundleIdentifiers:%s trialTrackingId:%s trialExperimentId:%{public}s trialDeploymentId:%{public}s trialTreatmentId:%s", v80, 0x62u);
    v111 = v122;
    swift_arrayDestroy();
    MEMORY[0x26D647170](v111, -1, -1);
    v112 = v80;
    v113 = v135;
    MEMORY[0x26D647170](v112, -1, -1);

    v128(v136, v137);
    v114 = v133;
    v115 = v102;
    v79 = v134;
  }

  else
  {

    v128(v136, v137);
    v101 = v132;
    v114 = v133;
    v97 = v125;
    v99 = v126;
    v90 = v78;
    v115 = v139;
    v106 = v140;
    v113 = v135;
  }

  LOBYTE(v141[0]) = v114;
  v141[1] = v39;
  v141[2] = v45;
  v141[3] = v79;
  v141[4] = v138;
  v141[5] = v90;
  v141[6] = v99;
  v141[7] = v97;
  v141[8] = v113;
  v141[9] = v106;
  v141[10] = v101;
  v141[11] = v115;
  v141[12] = v127;
  memcpy(aBlock, v141, 0x68uLL);

  v116 = v90;
  v130(aBlock);
  sub_2696A8048(v141);

  __swift_destroy_boxed_opaque_existential_0(v142);
}

uint64_t sub_2696A80CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2696A8114()
{
  result = qword_280322EB8;
  if (!qword_280322EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280322EB8);
  }

  return result;
}

uint64_t sub_2696A8180(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2696A81C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  *(v2 - 152) = v1;
  *(v2 - 136) = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_269854A64();
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

void OUTLINED_FUNCTION_13()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  v3 = *(v0 - 1);
  v4 = *v0;
  *(v1 - 128) = *(v0 - 3);
  *(v1 - 112) = v3;
  *(v1 - 104) = v4;
}

void OUTLINED_FUNCTION_15_0(unint64_t a1@<X8>)
{

  sub_269814F0C(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_16_1()
{
  v2 = *(v0 + 16) + 1;

  sub_269814F0C(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_17_1()
{
}

id OUTLINED_FUNCTION_18_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{

  return sub_2696A6A74(0x7FFFFFFFFFFFFFFFLL, 1, v6, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_269851B04();
}

uint64_t sub_2696A8450()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_2696A8488(uint64_t (*a1)(id))
{
  v2 = v1;
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(v2 + 16);
  [v12 lock];
  if (*(v2 + 24) == 1)
  {
    [v12 unlock];
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v13 = __swift_project_value_buffer(v4, qword_281571B38);
    (*(v5 + 16))(v11, v13, v4);
    v14 = sub_2698548B4();
    v15 = sub_269854F14();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269684000, v14, v15, "Skipping pre-completed completion", v16, 2u);
      MEMORY[0x26D647170](v16, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v18 = __swift_project_value_buffer(v4, qword_281571B38);
    (*(v5 + 16))(v9, v18, v4);
    v19 = sub_2698548B4();
    v20 = sub_269854F14();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_269684000, v19, v20, "Computing once function...", v21, 2u);
      MEMORY[0x26D647170](v21, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    *(v2 + 24) = 1;
    return a1([v12 unlock]);
  }
}

uint64_t sub_2696A8770()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t sub_2696A87EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = sub_269854954();
  v6 = OUTLINED_FUNCTION_8(v5);
  v35 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269854994();
  v13 = OUTLINED_FUNCTION_8(v12);
  v34 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = dispatch_group_create();
  v20 = *(a2 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v22 = (a2 + 32);
    v37 = (v35 + 8);
    v38 = &v45;
    v36 = (v34 + 8);
    do
    {
      v41 = v20;
      v23 = swift_allocObject();
      v24 = *v22;
      v40 = v22 + 1;
      *(v23 + 16) = v24;

      dispatch_group_enter(v19);
      v25 = swift_allocObject();
      v25[2] = sub_2696A8D48;
      v25[3] = v23;
      v25[4] = v19;
      OUTLINED_FUNCTION_0_5(v25);
      v44 = 1107296256;
      v45 = sub_2696A8DD0;
      v46 = &block_descriptor_9;
      v39 = _Block_copy(aBlock);

      v26 = v19;
      sub_269854974();
      v42 = v21;
      sub_269694DF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
      sub_269694E4C();
      sub_269855174();
      v27 = v39;
      MEMORY[0x26D645EA0](0, v18, v11, v39);
      v22 = v40;
      _Block_release(v27);

      (*v37)(v11, v5);
      (*v36)(v18, v12);

      v20 = v41 - 1;
    }

    while (v41 != 1);
  }

  v28 = swift_allocObject();
  v29 = v33;
  *(v28 + 16) = v32;
  *(v28 + 24) = v29;
  OUTLINED_FUNCTION_0_5(v28);
  v44 = 1107296256;
  v45 = sub_2696A8DD0;
  v46 = &block_descriptor_9_0;
  v30 = _Block_copy(aBlock);

  sub_269854974();
  v42 = v21;
  sub_269694DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269694E4C();
  sub_269855174();
  sub_269854F54();
  _Block_release(v30);

  (*(v35 + 8))(v11, v5);
  (*(v34 + 8))(v18, v12);
}

uint64_t sub_2696A8C28(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_2696A8D74;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_2696A8CC4(void (*a1)(void (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_2696A8D9C, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696A8D74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_2696A8DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2696A8E14()
{
  v0 = sub_269854F94();
  v1 = OUTLINED_FUNCTION_8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_269854F74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_3_1();
  v11 = sub_269854994();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_3_1();
  sub_2696ADFE4();
  sub_269854984();
  sub_269854F64();
  (*(v3 + 104))(v8, *MEMORY[0x277D85260], v0);
  result = sub_269854FB4();
  qword_281571B80 = result;
  return result;
}

double sub_2696A8FA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322ED0, &qword_269858BF0);
  v0 = swift_allocObject();
  *&result = 6;
  *(v0 + 16) = xmmword_269858BB0;
  *(v0 + 32) = &type metadata for NowPlayingStateSignal;
  *(v0 + 40) = &off_287A3CB38;
  *(v0 + 48) = &type metadata for LastNowPlayingSignal;
  *(v0 + 56) = &off_287A3C7D8;
  *(v0 + 64) = &type metadata for IntentMediaSignal;
  *(v0 + 72) = &off_287A3C710;
  *(v0 + 80) = &type metadata for ClientContextSignal;
  *(v0 + 88) = &off_287A3BF28;
  *(v0 + 96) = &type metadata for ForegroundAppSignal;
  *(v0 + 104) = &off_287A3C538;
  *(v0 + 112) = &type metadata for NowPlayingAppSignal;
  *(v0 + 120) = &off_287A3CA00;
  qword_281571B88 = v0;
  return result;
}

double sub_2696A9060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F20, qword_269858C48);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_269858BC0;
  *(v0 + 32) = &type metadata for AppUsageSignal;
  *(v0 + 40) = &off_287A3BD20;
  *(v0 + 48) = &type metadata for UserContextSignal;
  *(v0 + 56) = &off_287A3CFE0;
  *(v0 + 64) = &type metadata for SpotlightSignal;
  *(v0 + 72) = &off_287A3CDD0;
  *(v0 + 80) = &type metadata for EntitySearchSignal;
  *(v0 + 88) = &off_287A3C3D0;
  *(v0 + 96) = &type metadata for NowPlayingUsageSignal;
  *(v0 + 104) = &off_287A3CC20;
  qword_281571B78 = v0;
  return result;
}

uint64_t sub_2696A910C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v155 = a8;
  v150 = a5;
  v152 = sub_2698548D4();
  v16 = OUTLINED_FUNCTION_8(v152);
  v125 = v17;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v151 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v122 - v22;
  v147 = sub_269854954();
  v23 = OUTLINED_FUNCTION_8(v147);
  v136 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v146 = v28 - v27;
  v145 = sub_269854994();
  v29 = OUTLINED_FUNCTION_8(v145);
  v148 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_1();
  v35 = v34 - v33;
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  v123 = v36;

  v37 = dispatch_group_create();
  v38 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  dispatch_group_enter(v37);
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v144 = qword_281571B80;
  v39 = swift_allocObject();
  *(v39 + 16) = a3;
  *(v39 + 24) = a4;
  *(v39 + 32) = v150;
  *(v39 + 40) = v38;
  *(v39 + 48) = a6;
  v135 = a7;
  *(v39 + 56) = a7;
  v40 = v155;
  *(v39 + 64) = v155;
  *(v39 + 72) = v37;
  v156 = a9;
  *(v39 + 80) = a9;
  *(v39 + 88) = a10;
  v165 = sub_2696AA610;
  v166 = v39;
  OUTLINED_FUNCTION_2_4();
  v162 = 1107296256;
  v163 = sub_2696A8DD0;
  v164 = &block_descriptor_10;
  v41 = _Block_copy(&aBlock);
  v149 = a3;
  v153 = a4;
  sub_2696AA664(a3);
  v154 = a10;

  v132 = v38;
  v124 = a6;

  v142 = v37;
  sub_269854974();
  *&v158 = MEMORY[0x277D84F90];
  v42 = sub_269694DF4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  v44 = sub_269694E4C();
  v45 = v146;
  v140 = v43;
  v138 = v44;
  v46 = v147;
  v141 = v42;
  sub_269855174();
  MEMORY[0x26D645EA0](0, v35, v45, v41);
  _Block_release(v41);
  v47 = v136 + 8;
  v139 = *(v136 + 8);
  v139(v45, v46);
  v48 = v148 + 8;
  v137 = *(v148 + 8);
  v137(v35, v145);

  v50 = v40;
  if (qword_2803223F8 != -1)
  {
    swift_once();
  }

  v143 = v35;
  v148 = v48;
  v51 = *(qword_281571B88 + 16);
  v52 = MEMORY[0x277D84F90];
  v136 = v47;
  v53 = v152;
  if (v51)
  {
    v54 = 0;
    v55 = qword_281571B88 + 32;
    v56 = *(v40 + 16);
    v134 = (v50 + 32);
    v129 = v125 + 16;
    v128 = v125 + 8;
    v133 = v56 + 1;
    *&v49 = 136315138;
    v126 = v49;
    v58 = v153;
    v57 = v154;
    *&v130 = v56;
    do
    {
      v59 = *(v55 + 16 * v54);
      v155 = v59;
      if (v56)
      {
        v60 = *(*(&v59 + 1) + 8);
        v61 = v133;
        v62 = v134;
        while (--v61)
        {
          v63 = *v62;
          v62 += 2;
          if (v63 == v59)
          {
            goto LABEL_11;
          }
        }

        if (qword_280322708 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        __swift_project_value_buffer(v53, qword_281571B50);
        OUTLINED_FUNCTION_7_4(&v158 + 8);
        v68 = v131;
        v69(v131);
        v70 = sub_2698548B4();
        v71 = sub_269854F14();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v127 = OUTLINED_FUNCTION_9_3();
          v157 = v127;
          *v72 = v126;
          aBlock = v155;
          v162 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
          v73 = sub_269854AE4();
          v75 = v52;
          v76 = v51;
          v77 = v55;
          v78 = sub_26974F520(v73, v74, &v157);

          *(v72 + 4) = v78;
          v55 = v77;
          v51 = v76;
          v52 = v75;
          _os_log_impl(&dword_269684000, v70, v71, "AppSelectionSignals#allowlistApproved skipping non-allowlisted signal: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v127);
          v58 = v153;
          OUTLINED_FUNCTION_10();
          v53 = v152;
          OUTLINED_FUNCTION_10();
        }

        OUTLINED_FUNCTION_7_4(&v158);
        v79(v68, v53);
        v47 = v136;
        v57 = v154;
        v67 = v156;
        v56 = v130;
      }

      else
      {
LABEL_11:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v158 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269814F2C(0, *(v52 + 16) + 1, 1);
          v57 = v154;
          v52 = v158;
        }

        v66 = *(v52 + 16);
        v65 = *(v52 + 24);
        v67 = v156;
        v49 = v155;
        if (v66 >= v65 >> 1)
        {
          sub_269814F2C(v65 > 1, v66 + 1, 1);
          v49 = v155;
          v57 = v154;
          v52 = v158;
        }

        *(v52 + 16) = v66 + 1;
        *(v52 + 16 * v66 + 32) = v49;
        v53 = v152;
        v58 = v153;
      }

      ++v54;
    }

    while (v54 != v51);
  }

  else
  {
    v58 = v153;
    v57 = v154;
    v67 = v156;
  }

  v80 = *(v52 + 16);
  v81 = v149;
  v82 = v151;
  v83 = v132;
  if (v80)
  {
    v84 = (v52 + 32);
    v133 = v125 + 16;
    v131 = (v125 + 8);
    v134 = &v163;
    *&v49 = 136315138;
    v130 = v49;
    do
    {
      v85 = *v84;
      v155 = *v84;
      if (v81)
      {
        v86 = *(*(&v85 + 1) + 8);
        sub_2696AADA0(v85, v58, &v158);
        if (*(&v159 + 1))
        {
          sub_26968E5D4(&v158, &aBlock);
          if (qword_280322708 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v87 = v152;
          __swift_project_value_buffer(v152, qword_281571B50);
          OUTLINED_FUNCTION_7_4(&v162);
          v88(v82);
          v89 = sub_2698548B4();
          v90 = sub_269854F04();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = OUTLINED_FUNCTION_9_3();
            v157 = v92;
            *v91 = v130;
            v158 = v155;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC0, &qword_269858BE0);
            v93 = sub_269854AE4();
            v95 = sub_26974F520(v93, v94, &v157);
            v67 = v156;

            *(v91 + 4) = v95;
            _os_log_impl(&dword_269684000, v89, v90, "AppSelectionSignals#rawSignals independent using pre-warmed: %s", v91, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v92);
            v58 = v153;
            OUTLINED_FUNCTION_10();
            v47 = v136;
            OUTLINED_FUNCTION_10();

            OUTLINED_FUNCTION_7_4(&v160);
            v97 = v151;
          }

          else
          {

            OUTLINED_FUNCTION_7_4(&v160);
            v97 = v82;
          }

          v96(v97, v87);
          v109 = v150;
          swift_beginAccess();
          v110 = v164;
          v111 = v165;
          v112 = __swift_project_boxed_opaque_existential_1(&aBlock, v164);
          v83 = v132;
          sub_2696ABDEC(v112, (v109 + 16), v132, v110, v111);
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_0(&aBlock);
          goto LABEL_36;
        }
      }

      else
      {
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
      }

      sub_269698048(&v158, &qword_280322DA0, qword_269858220);
      v98 = v142;
      dispatch_group_enter(v142);
      v99 = swift_allocObject();
      *(v99 + 16) = v155;
      *(v99 + 32) = v135;
      *(v99 + 40) = v67;
      *(v99 + 48) = v57;
      *(v99 + 56) = v150;
      *(v99 + 64) = v83;
      *(v99 + 72) = v98;
      v165 = sub_2696ABAB4;
      v166 = v99;
      OUTLINED_FUNCTION_2_4();
      v162 = 1107296256;
      v163 = sub_2696A8DD0;
      v164 = &block_descriptor_9_1;
      v100 = _Block_copy(&aBlock);

      v101 = v83;
      v102 = v98;

      v103 = v143;
      sub_269854974();
      OUTLINED_FUNCTION_4_5(MEMORY[0x277D84F90]);
      v104 = v47;
      v105 = v147;
      sub_269855174();
      MEMORY[0x26D645EA0](0, v103, v98, v100);
      _Block_release(v100);
      v106 = v98;
      v58 = v153;
      v107 = v105;
      v47 = v104;
      v139(v106, v107);
      v67 = v156;
      OUTLINED_FUNCTION_5_5();
      v108();

LABEL_36:
      ++v84;
      --v80;
      v81 = v149;
      v57 = v154;
      v82 = v151;
    }

    while (v80);
  }

  v113 = swift_allocObject();
  v114 = v150;
  v115 = v124;
  v113[2] = v150;
  v113[3] = v115;
  v116 = v123;
  v113[4] = sub_2696A9DDC;
  v113[5] = v116;
  v165 = sub_2696ABACC;
  v166 = v113;
  OUTLINED_FUNCTION_2_4();
  v162 = 1107296256;
  v163 = sub_2696A8DD0;
  v164 = &block_descriptor_15;
  v117 = _Block_copy(&aBlock);

  sub_269854974();
  OUTLINED_FUNCTION_4_5(MEMORY[0x277D84F90]);
  v118 = v147;
  sub_269855174();
  v119 = v142;
  sub_269854F54();
  _Block_release(v117);

  v139(v114, v118);
  OUTLINED_FUNCTION_5_5();
  v120();
}

void sub_2696A9DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5, int a6, uint64_t a7, void *a8, char *a9, void *a10)
{
  v80 = a7;
  v74 = a5;
  v77 = a2;
  v78 = a4;
  v79 = a1;
  v13 = sub_2698548D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v73 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, qword_281571B50);
  v21 = *(v14 + 16);
  v67 = v20;
  v68 = v14 + 16;
  v66 = v21;
  (v21)(v19);
  v22 = v14;
  v23 = sub_2698548B4();
  v71[0] = sub_269854F04();
  v24 = os_log_type_enabled(v23, v71[0]);
  v72 = a6;
  v70 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v84[0] = v65;
    *v25 = 136315138;
    *&v85 = sub_2696ACFC0;
    *(&v85 + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EF0, &qword_269858C18);
    v26 = sub_269854AE4();
    v28 = a3;
    v29 = a8;
    v30 = sub_26974F520(v26, v27, v84);
    LOBYTE(a6) = v72;

    *(v25 + 4) = v30;
    a8 = v29;
    a3 = v28;
    v31 = v74;
    _os_log_impl(&dword_269684000, v23, v71[0], "AppSelectionSignals#rawSignals computing signal: %s...", v25, 0xCu);
    v32 = v65;
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x26D647170](v32, -1, -1);
    MEMORY[0x26D647170](v25, -1, -1);

    *v71 = *(v22 + 8);
    (*v71)(v19, v13);
    v33 = v22;
  }

  else
  {

    *v71 = *(v22 + 8);
    (*v71)(v19, v13);
    v33 = v22;
    v31 = v74;
  }

  v69 = v33;
  v34 = v78;
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v35 = swift_allocObject();
  v36 = a3;
  *(v35 + 16) = a3;
  *(v35 + 24) = v34;
  *(v35 + 32) = v31;
  *(v35 + 40) = a6;
  v37 = v79;
  *(v35 + 48) = v80;
  *(v35 + 56) = v37;
  v38 = v77;
  *(v35 + 64) = v77;
  *(v35 + 72) = a8;
  *(v35 + 80) = a9;
  *(v35 + 88) = a10;
  v75 = v36;
  v76 = a8;
  if (!v37)
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v58 = v34;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v59 = a8;
    v60 = v58;
    v61 = v59;
LABEL_17:
    sub_269698048(&v81, &qword_280322DA0, qword_269858220);
    v85 = 0u;
    v86 = 0u;
    v87 = 0;
    v47 = v76;
    goto LABEL_19;
  }

  v74 = a9;

  v39 = v34;

  v40 = a8;
  v41 = v79;
  sub_2696AA664(v79);

  v65 = v39;
  v42 = v31;

  sub_2696AA664(v41);
  v43 = qword_2803223F0;
  v44 = v40;

  if (v43 != -1)
  {
    swift_once();
  }

  sub_2696AADA0(&type metadata for SupportedMediaSignal, v38, &v81);
  v45 = v73;
  if (!*(&v82 + 1))
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324380, &qword_269858C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE0, &qword_269858C08);
  v46 = swift_dynamicCast();
  v47 = v76;
  if (v46)
  {
    if (*(&v86 + 1))
    {
      sub_26968E5D4(&v85, v84);
      v48 = v70;
      v66(v45, v67, v70);
      v49 = sub_2698548B4();
      v50 = sub_269854F04();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v85 = v78;
        *v51 = 136315138;
        *&v81 = &type metadata for SupportedMediaSignal;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE8, &qword_269858C10);
        v52 = sub_269854AE4();
        v54 = v44;
        v55 = sub_26974F520(v52, v53, &v85);

        *(v51 + 4) = v55;
        v44 = v54;
        _os_log_impl(&dword_269684000, v49, v50, "AppSelectionSignals#gatheringSignal using pre-warmed: %s", v51, 0xCu);
        v56 = v78;
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x26D647170](v56, -1, -1);
        MEMORY[0x26D647170](v51, -1, -1);

        v57 = v73;
      }

      else
      {

        v57 = v45;
      }

      (*v71)(v57, v48);
      v47 = v76;
      v62 = v74;
      v63 = __swift_project_boxed_opaque_existential_1(v84, v84[3]);
      v85 = *v63;
      v86 = *(v63 + 1);
      v87 = v63[4];
      v64 = v65;
      sub_2696AC188(&v85, v75, v65, v42, v72, v80, v79, v77, v44, v62, a10);
      __swift_destroy_boxed_opaque_existential_0(v84);

      goto LABEL_22;
    }
  }

  else
  {
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
  }

LABEL_19:
  sub_269698048(&v85, &qword_280322ED8, &qword_269858BF8);
  if (qword_2803223F0 != -1)
  {
    swift_once();
  }

  sub_2696ABAD8(qword_281571B80, sub_2696AC104, v35);

LABEL_22:

  sub_2696AC148(v79);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2696AA664(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2696AA6A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = *(a3 + 8);

  return sub_2696AA75C(v3, v4, v5, v6, v7);
}

uint64_t sub_2696AA708(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2696ADD5C(v5, a2, a3, &type metadata for SupportedMediaSignal, &off_287A3CEC8);
}

uint64_t sub_2696AA75C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v9 = sub_2698548D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  if (!a2)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;

LABEL_13:
    sub_269698048(&v35, &qword_280322DA0, qword_269858220);
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
    goto LABEL_15;
  }

  v15 = qword_2803223F0;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_2696AADA0(&type metadata for SupportedMediaSignal, a3, &v35);
  if (!*(&v36 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324380, &qword_269858C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE0, &qword_269858C08);
  if (swift_dynamicCast())
  {
    if (*(&v39 + 1))
    {
      sub_26968E5D4(&v38, v41);
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v9, qword_281571B50);
      (*(v10 + 16))(v13, v16, v9);
      v17 = sub_2698548B4();
      v18 = sub_269854F04();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v33 = v19;
        v34 = swift_slowAlloc();
        *&v35 = &type metadata for SupportedMediaSignal;
        *&v38 = v34;
        *v19 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EE8, &qword_269858C10);
        v20 = sub_269854AE4();
        v22 = sub_26974F520(v20, v21, &v38);

        v23 = v33;
        *(v33 + 1) = v22;
        _os_log_impl(&dword_269684000, v17, v18, "AppSelectionSignals#gatheringSignal using pre-warmed: %s", v23, 0xCu);
        v24 = v34;
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x26D647170](v24, -1, -1);
        MEMORY[0x26D647170](v23, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      v25 = __swift_project_boxed_opaque_existential_1(v41, v41[3]);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v30 = v25[4];
      *(&v39 + 1) = &type metadata for SupportedMediaSignal;
      v40 = &off_287A3CEC8;
      v31 = swift_allocObject();
      *&v38 = v31;
      v31[2] = v26;
      v31[3] = v27;
      v31[4] = v28;
      v31[5] = v29;
      v31[6] = v30;

      a4(&v38);
      __swift_destroy_boxed_opaque_existential_0(&v38);
      __swift_destroy_boxed_opaque_existential_0(v41);
      goto LABEL_20;
    }
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

LABEL_15:
  sub_269698048(&v38, &qword_280322ED8, &qword_269858BF8);
  if (qword_2803223F0 != -1)
  {
    swift_once();
  }

  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  sub_2696ABAD8(qword_281571B80, sub_2696ACFC4, v14);
LABEL_20:
}

uint64_t sub_2696AAC9C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2697F4AE4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_2696AADA0(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_2698548D4();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = *(a2 + 16);
  v16 = a2 + 32;
  if (v15)
  {
    while (1)
    {
      sub_2696A73F8(v16, &v27);
      __swift_project_boxed_opaque_existential_1(&v27, v28);
      if (swift_getDynamicType() == a1)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(&v27);
      v16 += 40;
      if (!--v15)
      {
        goto LABEL_4;
      }
    }

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_281571B50);
    v17 = OUTLINED_FUNCTION_8_2();
    v18(v17);
    v19 = sub_2698548B4();
    v20 = sub_269854F14();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_9_3();
      v26 = v22;
      *v21 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
      v23 = sub_269854AE4();
      v25 = sub_26974F520(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_269684000, v19, v20, "AppSelectionSignals#RawSignalResult#signal found existing for type: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v9 + 8))(v14, v6);
    sub_26968E5D4(&v27, a3);
  }

  else
  {
LABEL_4:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_2696AAFEC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v14 = qword_281571B80;
  swift_beginAccess();
  v15 = *(a6 + 16);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v17 = *(a5 + 16);

  v18 = a8;
  v19 = a9;
  v17(a1, a2, a3, v14, v15, sub_2696ADE9C, v16, a4, a5);
}

uint64_t sub_2696AB130(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v41 = a7;
  v42 = a8;
  v40 = a6;
  v43 = a3;
  v12 = sub_2698548D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_281571B50);
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2698548B4();
  v19 = sub_269854F04();
  v20 = os_log_type_enabled(v18, v19);
  v44 = a1;
  v45 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = a5;
    v23 = v22;
    v47 = a2;
    v48 = v22;
    *v21 = 136315138;
    v46 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC0, &qword_269858BE0);
    v24 = sub_269854AE4();
    v26 = a4;
    v27 = sub_26974F520(v24, v25, &v48);

    *(v21 + 4) = v27;
    a4 = v26;
    _os_log_impl(&dword_269684000, v18, v19, "AppSelectionSignals#rawSignals computing signal: %s...", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v28 = v23;
    a5 = v39;
    MEMORY[0x26D647170](v28, -1, -1);
    MEMORY[0x26D647170](v21, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  v29 = qword_281571B80;
  v30 = swift_allocObject();
  v31 = v44;
  v32 = v45;
  v30[2] = v44;
  v30[3] = v32;
  v33 = v41;
  v30[4] = v40;
  v30[5] = v33;
  v34 = v42;
  v30[6] = v42;
  v35 = *(v32 + 16);

  v36 = v33;
  v37 = v34;
  v35(v43, a4, a5, v29, sub_2696AC0F0, v30, v31, v32);
}

void sub_2696AB438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, NSObject *a6, uint64_t *a7, uint64_t *a8)
{
  v13 = sub_2698548D4();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_281571B50);
  v22 = OUTLINED_FUNCTION_8_2();
  v23(v22);
  sub_2696ADDE8(a1, v45, &qword_280322DA0, qword_269858220);
  v24 = sub_2698548B4();
  v25 = sub_269854F04();
  if (os_log_type_enabled(v24, v25))
  {
    v38 = v13;
    v26 = a1;
    v27 = a8;
    v28 = swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_9_3();
    v42 = v37;
    *&v43 = a2;
    *v28 = 136315394;
    *(&v43 + 1) = a3;
    v29 = v27;
    a1 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, v29);
    v30 = sub_269854AE4();
    v32 = sub_26974F520(v30, v31, &v42);

    *(v28 + 4) = v32;
    *(v28 + 12) = 1024;
    v33 = v46 != 0;
    sub_269698048(v45, &qword_280322DA0, qword_269858220);
    *(v28 + 14) = v33;
    _os_log_impl(&dword_269684000, v24, v25, "AppSelectionSignals#rawSignals received signal: %s, present?:%{BOOL}d", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v16 + 8))(v21, v38);
  }

  else
  {
    sub_269698048(v45, &qword_280322DA0, qword_269858220);

    (*(v16 + 8))(v21, v13);
  }

  sub_2696ADDE8(a1, &v43, &qword_280322DA0, qword_269858220);
  if (v44)
  {
    sub_26968E5D4(&v43, v45);
    swift_beginAccess();
    v34 = v46;
    v35 = v47;
    v36 = __swift_project_boxed_opaque_existential_1(v45, v46);
    sub_2696ABDEC(v36, (a4 + 16), a5, v34, v35);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    sub_269698048(&v43, &qword_280322DA0, qword_269858220);
  }

  dispatch_group_leave(a6);
}

uint64_t sub_2696AB748(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_281571B50);
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2698548B4();
  v15 = sub_269854F04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = a3;
    v17 = v16;
    v37 = swift_slowAlloc();
    v40[0] = v37;
    *v17 = 134218498;
    swift_beginAccess();
    *(v17 + 4) = *(*(a1 + 16) + 16);

    *(v17 + 12) = 2080;
    HIDWORD(v36) = v15;
    v18 = *(a1 + 16);

    v20 = sub_2697EFF3C(v19);
    v38 = a4;
    v22 = v21;

    v23 = sub_26974F520(v20, v22, v40);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    swift_beginAccess();
    v24 = *(a2 + 16);

    sub_2697DEC04(v25);
    sub_2697F00A8();
    v27 = v26;
    v29 = v28;

    v30 = sub_26974F520(v27, v29, v40);

    *(v17 + 24) = v30;
    _os_log_impl(&dword_269684000, v14, BYTE4(v36), "AppSelectionSignals#rawSignals completed signal gathering with: %ld signals: %s for candidates: %s", v17, 0x20u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x26D647170](v31, -1, -1);
    v32 = v17;
    a3 = v39;
    MEMORY[0x26D647170](v32, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v33 = *(a2 + 16);
  swift_beginAccess();
  v34 = *(a1 + 16);

  a3(v33, v34);
}

uint64_t sub_2696ABAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269851D34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v25 = &type metadata for FeatureFlagServiceImpl;
  v26 = &off_287A41BD8;
  sub_269851D24();
  sub_2696A73F8(v24, &v20);
  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_26968E5D4(&v20, v13 + 16);
  *(v13 + 56) = a2;
  *(v13 + 64) = a3;
  (*(v6 + 32))(v13 + v12, v9, v5);
  v14 = qword_280322428;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_281571920;

  sub_269841BD4(0x405E000000000000, 0, v15, sub_2696ADEDC, v13, v16, v17, v18, v20, *(&v20 + 1), v21, v22, v23, v24[0], v24[1], v24[2], v25, v26, v27, v28, v29, v30);

  (*(v6 + 8))(v11, v5);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

id sub_2696ABCE8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = *a1;
  v13 = a1[1];
  v14 = v6;
  v7 = a1[2];
  v11 = a1[3];
  v12 = v7;
  sub_2696ADDE8(&v14, v10, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v13, v10, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v12, v10, &qword_280322F00, &qword_269858C28);
  sub_2696ADDE8(&v11, v10, &qword_280322F08, &qword_269858C30);
  [a3 lock];
  sub_26977BAAC();
  v8 = *(*a2 + 16);
  sub_26977BBEC();
  sub_2696ABF64(v8, a1, a2);
  return [a3 unlock];
}

uint64_t sub_2696ABDEC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = *(v9 + 16);
  v16(&v19 - v14);
  [a3 lock];
  sub_26977BAAC();
  v17 = *(*a2 + 16);
  sub_26977BBEC();
  (v16)(v13, v15, a4);
  sub_2696ABFF8(v17, v13, a2, a4, a5);
  [a3 unlock];
  return (*(v9 + 8))(v15, a4);
}

uint64_t sub_2696ABF64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for SupportedMediaSignal;
  v12 = &off_287A3CEE8;
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_26968E5D4(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_2696ABFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26968E5D4(&v12, v10 + 40 * a1 + 32);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2696AC148(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2696AC188(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9, char *a10, void *a11)
{
  v137 = a8;
  v143 = a7;
  *&v151 = a6;
  v134 = sub_269854954();
  v123 = *(v134 - 8);
  v16 = *(v123 + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_269854994();
  v122 = *(v132 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2698548D4();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v128 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v125 = &v121 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v144 = &v121 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v121 - v29;
  v162 = &type metadata for SupportedMediaSignal;
  v163 = &off_287A3CEC8;
  v31 = swift_allocObject();
  v32 = *a1;
  v166 = a1[1];
  v167 = v32;
  v33 = a1[2];
  v164 = a1[3];
  v165 = v33;
  v34 = a1[4];
  v161[0] = v31;
  v35 = *(a1 + 1);
  *(v31 + 16) = *a1;
  *(v31 + 32) = v35;
  *(v31 + 48) = v34;
  v36 = __swift_project_boxed_opaque_existential_1(v161, &type metadata for SupportedMediaSignal);
  swift_beginAccess();
  v37 = *(v36 + 1);
  v170[0] = *v36;
  v170[1] = v37;
  v171 = v36[4];
  sub_2696ADDE8(&v167, v168, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v166, v168, &qword_280322EF8, &qword_269858C20);
  sub_2696ADDE8(&v165, v168, &qword_280322F00, &qword_269858C28);
  sub_2696ADDE8(&v164, v168, &qword_280322F08, &qword_269858C30);
  v141 = a2;
  v142 = a3;
  sub_2696ABCE8(v170, (a2 + 16), a3);
  swift_endAccess();
  v38 = __swift_project_boxed_opaque_existential_1(v161, v162);
  v168[0] = *v38;
  v168[1] = *(v38 + 1);
  v169 = v38[4];
  v136 = a5;
  v39 = sub_2696A2534(a5);
  swift_beginAccess();
  sub_2696AAC9C(v39);
  swift_endAccess();
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v20, qword_281571B50);
  v41 = v21[2];
  v149 = v21 + 2;
  v150 = v40;
  v148 = v41;
  (v41)(v30);
  sub_2696A73F8(v161, &v153);

  v42 = sub_2698548B4();
  v43 = sub_269854F04();

  v44 = os_log_type_enabled(v42, v43);
  v135 = a4;
  v126 = v21;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v152 = v46;
    *v45 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v153, v155);
    *&v158 = swift_getDynamicType();
    *(&v158 + 1) = v156;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F18, &qword_269858C40);
    v47 = sub_269854AE4();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_0(&v153);
    v50 = sub_26974F520(v47, v49, &v152);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    swift_beginAccess();
    v51 = *(a4 + 16);

    v52 = sub_269854E54();
    v53 = v30;
    v55 = v54;

    v56 = sub_26974F520(v52, v55, &v152);

    *(v45 + 14) = v56;
    _os_log_impl(&dword_269684000, v42, v43, "AppSelectionSignals#rawSignals received gathering signal: %s with identifiers: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v46, -1, -1);
    MEMORY[0x26D647170](v45, -1, -1);

    v147 = v126[1];
    v147(v53, v20);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v153);
    v147 = v21[1];
    v147(v30, v20);
  }

  v58 = v20;
  v59 = v144;
  v60 = v128;
  if (qword_280322400 != -1)
  {
    swift_once();
  }

  v145 = v58;
  v61 = MEMORY[0x277D84F90];
  v62 = &off_269857000;
  v146 = *(qword_281571B78 + 16);
  if (v146)
  {
    v63 = 0;
    v140 = (qword_281571B78 + 32);
    v64 = *(v151 + 16);
    v138 = (v151 + 32);
    *&v139 = v64;
    v129 = v126 + 1;
    v130 = (v64 + 1);
    *&v57 = 136315138;
    v127 = v57;
    do
    {
      v65 = *&v140[2 * v63];
      v151 = v65;
      if (v139)
      {
        v66 = *(*(&v65 + 1) + 8);
        v67 = v130;
        v68 = v138;
        while (1)
        {
          v67 = (v67 - 1);
          if (!v67)
          {
            break;
          }

          isa = v68->isa;
          v68 += 2;
          if (isa == v65)
          {
            goto LABEL_14;
          }
        }

        v73 = v145;
        v148(v60, v150, v145);
        v74 = sub_2698548B4();
        v75 = sub_269854F14();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v152 = v77;
          *v76 = v127;
          *&v153 = v151;
          *(&v153 + 1) = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
          v78 = sub_269854AE4();
          v80 = v61;
          v81 = sub_26974F520(v78, v79, &v152);

          *(v76 + 4) = v81;
          v61 = v80;
          v60 = v128;
          _os_log_impl(&dword_269684000, v74, v75, "AppSelectionSignals#allowlistApproved skipping non-allowlisted signal: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x26D647170](v77, -1, -1);
          MEMORY[0x26D647170](v76, -1, -1);

          v82 = v60;
          v83 = v145;
        }

        else
        {

          v82 = v60;
          v83 = v73;
        }

        v147(v82, v83);
        v62 = &off_269857000;
      }

      else
      {
LABEL_14:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v158 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269814F70(0, *(v61 + 16) + 1, 1);
          v61 = v158;
        }

        v72 = *(v61 + 16);
        v71 = *(v61 + 24);
        v57 = v151;
        if (v72 >= v71 >> 1)
        {
          sub_269814F70(v71 > 1, v72 + 1, 1);
          v57 = v151;
          v61 = v158;
        }

        *(v61 + 16) = v72 + 1;
        *(v61 + 16 * v72 + 32) = v57;
      }

      ++v63;
    }

    while (v63 != v146);
  }

  v138 = a9;
  v124 = v61;
  v84 = *(v61 + 16);
  v85 = v145;
  if (v84)
  {
    v86 = (v124 + 32);
    v146 = v126 + 1;
    v130 = &v154;
    v129 = a11;
    v128 = a10;
    v126 = (v122 + 8);
    *&v127 = v123 + 8;
    *&v57 = *(v62 + 217);
    v139 = v57;
    while (1)
    {
      v151 = *v86;
      v148(v59, v150, v85);
      v87 = sub_2698548B4();
      v88 = sub_269854F04();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *&v158 = v90;
        *v89 = v139;
        v153 = v151;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v91 = sub_269854AE4();
        v140 = v86;
        v93 = sub_26974F520(v91, v92, &v158);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_269684000, v87, v88, "AppSelectionSignals#rawSignals computing signal: %s...", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x26D647170](v90, -1, -1);
        MEMORY[0x26D647170](v89, -1, -1);

        v94 = v59;
        v86 = v140;
      }

      else
      {

        v94 = v59;
      }

      v147(v94, v85);
      if (!v143)
      {
        break;
      }

      v95 = *(*(&v151 + 1) + 8);
      sub_2696AADA0(v151, v137, &v158);
      if (!*(&v159 + 1))
      {
        goto LABEL_35;
      }

      sub_26968E5D4(&v158, &v153);
      v96 = v125;
      v148(v125, v150, v85);
      v97 = sub_2698548B4();
      v98 = sub_269854F04();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v152 = v140;
        *v99 = v139;
        v158 = v151;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v100 = sub_269854AE4();
        v102 = v85;
        v103 = sub_26974F520(v100, v101, &v152);

        *(v99 + 4) = v103;
        v85 = v102;
        _os_log_impl(&dword_269684000, v97, v98, "AppSelectionSignals#rawSignals dependent using pre-warmed: %s", v99, 0xCu);
        v104 = v140;
        __swift_destroy_boxed_opaque_existential_0(v140);
        MEMORY[0x26D647170](v104, -1, -1);
        MEMORY[0x26D647170](v99, -1, -1);
      }

      v147(v96, v85);
      v105 = v141;
      swift_beginAccess();
      v106 = v155;
      v107 = v156;
      v108 = __swift_project_boxed_opaque_existential_1(&v153, v155);
      sub_2696ABDEC(v108, (v105 + 16), v142, v106, v107);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(&v153);
LABEL_38:
      v59 = v144;
      v86 += 2;
      if (!--v84)
      {
        goto LABEL_39;
      }
    }

    v160 = 0;
    v158 = 0u;
    v159 = 0u;
LABEL_35:
    sub_269698048(&v158, &qword_280322DA0, qword_269858220);
    v109 = v138;
    dispatch_group_enter(v138);
    if (qword_2803223E8 != -1)
    {
      swift_once();
    }

    v110 = swift_allocObject();
    *(v110 + 16) = v136;
    v111 = v129;
    *(v110 + 24) = v128;
    *(v110 + 32) = v111;
    *(v110 + 40) = v151;
    v113 = v141;
    v112 = v142;
    *(v110 + 56) = v135;
    *(v110 + 64) = v113;
    *(v110 + 72) = v112;
    *(v110 + 80) = v109;
    v156 = sub_2696ADE50;
    v157 = v110;
    *&v153 = MEMORY[0x277D85DD0];
    *(&v153 + 1) = 1107296256;
    v154 = sub_2696A8DD0;
    v155 = &block_descriptor_34;
    v114 = _Block_copy(&v153);

    v115 = v112;
    v116 = v109;
    v117 = v131;
    sub_269854974();
    *&v158 = MEMORY[0x277D84F90];
    sub_269694DF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    sub_269694E4C();
    v119 = v133;
    v118 = v134;
    sub_269855174();
    MEMORY[0x26D645EA0](0, v117, v119, v114);
    _Block_release(v114);
    (*v127)(v119, v118);
    (*v126)(v117, v132);

    v85 = v145;
    goto LABEL_38;
  }

LABEL_39:

  dispatch_group_leave(v138);
  return __swift_destroy_boxed_opaque_existential_0(v161);
}

uint64_t sub_2696ACFCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v131 = a8;
  v139 = a7;
  *&v136 = a6;
  v134 = a4;
  v129 = sub_269854954();
  v120 = *(v129 - 8);
  v17 = *(v120 + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_269854994();
  v119 = *(v127 - 8);
  v19 = *(v119 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2698548D4();
  v121 = *(v21 - 8);
  v22 = *(v121 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  *&v147 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v140 = &v118 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v118 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v118 - v30;
  v158 = a12;
  v159 = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v157);
  v33 = v134;
  (*(*(a12 - 8) + 16))(boxed_opaque_existential_1, a1, a12);
  v34 = __swift_project_boxed_opaque_existential_1(v157, v158);
  swift_beginAccess();
  v35 = *(v34 + 1);
  v163[0] = *v34;
  v163[1] = v35;
  v164 = v34[4];
  v137 = a2;
  v138 = a3;
  sub_2696ABCE8(v163, (a2 + 16), a3);
  swift_endAccess();
  v36 = __swift_project_boxed_opaque_existential_1(v157, v158);
  v37 = *(v36 + 1);
  v160 = *v36;
  v161 = v37;
  v162 = v36[4];
  v130 = a5;
  v38 = sub_2696A2534(a5);
  swift_beginAccess();
  sub_2696AAC9C(v38);
  swift_endAccess();
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v21, qword_281571B50);
  v40 = v121;
  v41 = *(v121 + 16);
  v145 = v121 + 16;
  v146 = v39;
  v144 = v41;
  (v41)(v31);
  sub_2696A73F8(v157, &v149);

  v42 = sub_2698548B4();
  v43 = sub_269854F04();

  v44 = os_log_type_enabled(v42, v43);
  v132 = v21;
  v142 = v29;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v143 = v31;
    v46 = v148;
    *v45 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v149, v151);
    *&v154 = swift_getDynamicType();
    *(&v154 + 1) = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F18, &qword_269858C40);
    v47 = sub_269854AE4();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_0(&v149);
    v50 = sub_26974F520(v47, v49, &v148);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    swift_beginAccess();
    v51 = *(v33 + 16);

    v52 = sub_269854E54();
    v54 = v53;

    v55 = sub_26974F520(v52, v54, &v148);
    v29 = v142;

    *(v45 + 14) = v55;
    _os_log_impl(&dword_269684000, v42, v43, "AppSelectionSignals#rawSignals received gathering signal: %s with identifiers: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v46, -1, -1);
    v56 = v45;
    v57 = v132;
    MEMORY[0x26D647170](v56, -1, -1);

    v58 = *(v40 + 8);
    v59 = v143;
  }

  else
  {
    v57 = v21;

    __swift_destroy_boxed_opaque_existential_0(&v149);
    v58 = *(v40 + 8);
    v59 = v31;
  }

  v143 = v58;
  (v58)(v59, v57);
  v61 = v40;
  v62 = v147;
  if (qword_280322400 != -1)
  {
    swift_once();
  }

  v63 = *(qword_281571B78 + 16);
  if (v63)
  {
    v64 = 0;
    v141 = qword_281571B78 + 32;
    v65 = *(v136 + 16);
    v133 = (v136 + 32);
    v123 = v61 + 8;
    *&v136 = v65;
    v125 = (v65 + 1);
    v66 = MEMORY[0x277D84F90];
    *&v60 = 136315138;
    v122 = v60;
    v124 = v63;
    do
    {
      v67 = *(v141 + 16 * v64);
      v147 = v67;
      if (v136)
      {
        v68 = *(*(&v67 + 1) + 8);
        v69 = v125;
        v70 = v133;
        while (1)
        {
          v69 = (v69 - 1);
          if (!v69)
          {
            break;
          }

          isa = v70->isa;
          v70 += 2;
          if (isa == v67)
          {
            goto LABEL_14;
          }
        }

        v135 = v66;
        v144(v62, v146, v57);
        v75 = sub_2698548B4();
        v76 = v62;
        v77 = sub_269854F14();
        if (os_log_type_enabled(v75, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v148 = v79;
          *v78 = v122;
          *&v149 = v147;
          *(&v149 + 1) = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
          v80 = sub_269854AE4();
          v82 = sub_26974F520(v80, v81, &v148);

          *(v78 + 4) = v82;
          v29 = v142;
          _os_log_impl(&dword_269684000, v75, v77, "AppSelectionSignals#allowlistApproved skipping non-allowlisted signal: %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x26D647170](v79, -1, -1);
          MEMORY[0x26D647170](v78, -1, -1);
        }

        (v143)(v76, v57);
        v66 = v135;
        v62 = v76;
        v63 = v124;
      }

      else
      {
LABEL_14:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v154 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269814F70(0, *(v66 + 16) + 1, 1);
          v66 = v154;
        }

        v74 = *(v66 + 16);
        v73 = *(v66 + 24);
        v60 = v147;
        if (v74 >= v73 >> 1)
        {
          sub_269814F70(v73 > 1, v74 + 1, 1);
          v60 = v147;
          v66 = v154;
        }

        *(v66 + 16) = v74 + 1;
        *(v66 + 16 * v74 + 32) = v60;
      }

      ++v64;
    }

    while (v64 != v63);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v133 = a9;
  v135 = v66;
  v83 = *(v66 + 16);
  if (v83)
  {
    v84 = (v135 + 32);
    v141 = v121 + 8;
    v125 = &v150;
    v124 = a11;
    v123 = a10;
    v121 = v119 + 8;
    *&v122 = v120 + 8;
    *&v60 = 136315138;
    v136 = v60;
    while (1)
    {
      v147 = *v84;
      v144(v29, v146, v57);
      v85 = sub_2698548B4();
      v86 = sub_269854F04();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v154 = v88;
        *v87 = v136;
        v149 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v89 = sub_269854AE4();
        v91 = sub_26974F520(v89, v90, &v154);
        v29 = v142;

        *(v87 + 4) = v91;
        _os_log_impl(&dword_269684000, v85, v86, "AppSelectionSignals#rawSignals computing signal: %s...", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x26D647170](v88, -1, -1);
        MEMORY[0x26D647170](v87, -1, -1);
      }

      (v143)(v29, v57);
      v92 = v140;
      if (!v139)
      {
        break;
      }

      v93 = *(*(&v147 + 1) + 8);
      sub_2696AADA0(v147, v131, &v154);
      if (!*(&v155 + 1))
      {
        goto LABEL_34;
      }

      sub_26968E5D4(&v154, &v149);
      v144(v92, v146, v57);
      v94 = sub_2698548B4();
      v95 = sub_269854F04();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v148 = v97;
        *v96 = v136;
        v154 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F10, &qword_269858C38);
        v98 = sub_269854AE4();
        v100 = sub_26974F520(v98, v99, &v148);

        *(v96 + 4) = v100;
        v29 = v142;
        _os_log_impl(&dword_269684000, v94, v95, "AppSelectionSignals#rawSignals dependent using pre-warmed: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x26D647170](v97, -1, -1);
        MEMORY[0x26D647170](v96, -1, -1);

        v101 = v140;
      }

      else
      {

        v101 = v92;
      }

      (v143)(v101, v57);
      v113 = v137;
      swift_beginAccess();
      v114 = v151;
      v115 = v152;
      v116 = __swift_project_boxed_opaque_existential_1(&v149, v151);
      sub_2696ABDEC(v116, (v113 + 16), v138, v114, v115);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(&v149);
LABEL_39:
      ++v84;
      if (!--v83)
      {
        goto LABEL_40;
      }
    }

    v156 = 0;
    v154 = 0u;
    v155 = 0u;
LABEL_34:
    sub_269698048(&v154, &qword_280322DA0, qword_269858220);
    v102 = v133;
    dispatch_group_enter(v133);
    if (qword_2803223E8 != -1)
    {
      swift_once();
    }

    v103 = swift_allocObject();
    *(v103 + 16) = v130;
    v104 = v124;
    *(v103 + 24) = v123;
    *(v103 + 32) = v104;
    *(v103 + 40) = v147;
    v106 = v137;
    v105 = v138;
    *(v103 + 56) = v134;
    *(v103 + 64) = v106;
    *(v103 + 72) = v105;
    *(v103 + 80) = v102;
    v152 = sub_2696AE058;
    v153 = v103;
    *&v149 = MEMORY[0x277D85DD0];
    *(&v149 + 1) = 1107296256;
    v150 = sub_2696A8DD0;
    v151 = &block_descriptor_48;
    v107 = _Block_copy(&v149);

    v108 = v105;
    v109 = v102;
    v110 = v126;
    sub_269854974();
    *&v154 = MEMORY[0x277D84F90];
    sub_269694DF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    sub_269694E4C();
    v112 = v128;
    v111 = v129;
    sub_269855174();
    MEMORY[0x26D645EA0](0, v110, v112, v107);
    _Block_release(v107);
    (*v122)(v112, v111);
    (*v121)(v110, v127);

    v57 = v132;
    v29 = v142;
    goto LABEL_39;
  }

LABEL_40:

  dispatch_group_leave(v133);
  return __swift_destroy_boxed_opaque_existential_0(v157);
}

uint64_t sub_2696ADD5C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = a4;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_2696ADDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2696ADEDC(uint64_t a1)
{
  v3 = *(sub_269851D34() - 8);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_2696A1A84(a1, v1 + 16, v4, v5, v6);
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_2696ADFE4()
{
  result = qword_2815718E0;
  if (!qword_2815718E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815718E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;
  result = v1 - 192;
  v3 = *(v1 - 296);
  v4 = *(v1 - 344);
  v5 = *(v1 - 360);
  return result;
}

void OUTLINED_FUNCTION_5_5()
{
  v1 = *(v0 - 304);
  v2 = *(v0 - 280);
  v3 = *(v0 - 368);
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return swift_slowAlloc();
}

uint64_t sub_2696AE120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_2696AE158()
{
  if (qword_2803223F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26974CC7C(v0);

  qword_280322F28 = v1;
  return result;
}

uint64_t sub_2696AE1CC()
{
  v3[3] = &type metadata for CoreAnalyticsService;
  v3[4] = &xmmword_287A41610;
  type metadata accessor for AppSelector();
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v3, &type metadata for CoreAnalyticsService);
  v1 = sub_2696B2564(sub_2696AE258, 0, v0);
  result = __swift_destroy_boxed_opaque_existential_0(v3);
  qword_28033D5F8 = v1;
  return result;
}

double sub_2696AE258@<D0>(_OWORD *a1@<X8>)
{
  if (qword_2803223D8 != -1)
  {
    swift_once();
  }

  sub_2696D6D30(0xD000000000000018, 0x800000026987BA10, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_2696AE2E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F38, &unk_269858D30);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2696B2304(sub_2696AE34C, 0);
  qword_281571A50 = result;
  return result;
}

uint64_t sub_2696AE34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269854824();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = v7;
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v8;
  v9 = sub_2698548D4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = qword_280322708;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_281571B50);
  v19 = v10[2];
  v19(v15, v18, v9);
  v20 = sub_2698548B4();
  v21 = sub_269854F44();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_269684000, v20, v21, "AppSelector#warmup AtomicValue requesting signal warmup", v22, 2u);
    MEMORY[0x26D647170](v22, -1, -1);
  }

  v23 = v10[1];
  v23(v15, v9);
  if (qword_280322408 != -1)
  {
    swift_once();
  }

  v24 = qword_280322F28;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2696B29B0;
  *(v25 + 24) = v16;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F90];
  v56 = v26;
  *(v26 + 16) = MEMORY[0x277D84F90];
  v28 = swift_allocObject();
  sub_2697F1EE0(v27);
  v55 = v28;
  *(v28 + 16) = v29;
  v30 = v63;
  v19(v63, v18, v9);

  v31 = sub_2698548B4();
  v32 = sub_269854F14();

  v33 = os_log_type_enabled(v31, v32);
  v57 = v24;
  if (v33)
  {
    v34 = v24;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v64 = v36;
    *v35 = 136315138;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
    v38 = MEMORY[0x26D645BC0](v34, v37);
    v40 = sub_26974F520(v38, v39, &v64);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_269684000, v31, v32, "AppSelectionSignals#rawSignals signal gathering with allowlist: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D647170](v36, -1, -1);
    MEMORY[0x26D647170](v35, -1, -1);

    v41 = v63;
  }

  else
  {

    v41 = v30;
  }

  v23(v41, v9);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_2696B29E8;
  *(v42 + 24) = v25;
  v43 = qword_2803226D8;

  v63 = v25;
  if (v43 != -1)
  {
    swift_once();
  }

  v44 = qword_281571B68;
  v45 = v60;
  sub_2698547F4();
  sub_269854FF4();
  sub_2698547D4();
  v47 = v61;
  v46 = v62;
  v48 = v59;
  (*(v61 + 16))(v59, v45, v62);
  v49 = (*(v47 + 80) + 33) & ~*(v47 + 80);
  v50 = (v58 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = "appSelectionSignalsRawSignals";
  *(v51 + 24) = 29;
  *(v51 + 32) = 2;
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_2696B29F0;
  v52[1] = v42;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_2696B2A20;
  *(v53 + 24) = v51;

  sub_2696A910C(sub_2696B2A24, v53, 0, 0, v56, v55, 2, v57, 0, 0);

  (*(v47 + 8))(v45, v46);
}

uint64_t sub_2696AEA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2698548B4();
  v13 = sub_269854F44();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_269684000, v12, v13, "AppSelector#warmup AtomicValue complete", v14, 2u);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return a3(a1, a2);
}

void sub_2696AEBC0()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_269854954();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = sub_269854994();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  if (qword_2803223E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_23();
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  v24[4] = sub_2696B2C30;
  v24[5] = v22;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_2696A8DD0;
  v24[3] = &block_descriptor_11;
  v23 = _Block_copy(v24);

  sub_269854974();
  sub_269694DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_269694E4C();
  sub_269855174();
  MEMORY[0x26D645EA0](0, v21, v12, v23);
  _Block_release(v23);
  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v21, v13);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696AEE2C(uint64_t a1, uint64_t a2)
{
  if (qword_280322418 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2696B50E4(sub_2696B2C50, v4);
}

uint64_t sub_2696AEEE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v10, v13, v6);
  sub_2696AA664(v11);
  v14 = sub_2698548B4();
  v15 = sub_269854F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v11 != 0;
    sub_2696AC148(v11);
    _os_log_impl(&dword_269684000, v14, v15, "AppSelector#warm signal warmup results non-nil?: %{BOOL}d", v16, 8u);
    MEMORY[0x26D647170](v16, -1, -1);
  }

  else
  {
    sub_2696AC148(v11);
  }

  (*(v7 + 8))(v10, v6);
  if (qword_2803223E0 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v11;
  v17[5] = v12;
  sub_2696AA664(v11);

  sub_269842524();
}

uint64_t sub_2696AF170(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3, uint64_t a4)
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2698548B4();
  v13 = sub_269854F04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_269684000, v12, v13, "AppSelector#warm configuration load complete", v14, 2u);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return a2(a4 != 0);
}

void sub_2696AF32C()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v65 = v7;
  v63 = v8;
  v59 = v10;
  v60 = v9;
  v62 = v11;
  v12 = *v0;
  v66 = sub_269854824();
  v13 = OUTLINED_FUNCTION_8(v66);
  v64 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v55 = v18;
  v56 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v61 = &v54 - v19;
  v20 = sub_2698548D4();
  v21 = OUTLINED_FUNCTION_8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v28 = v27 - v26;
  v29 = swift_allocObject();
  v29[2] = v4;
  v29[3] = v2;
  v29[4] = v6;
  v29[5] = v12;
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D84F90];
  v58 = v30;
  *(v30 + 16) = MEMORY[0x277D84F90];
  v32 = swift_allocObject();

  sub_2697F1EE0(v31);
  v57 = v32;
  *(v32 + 16) = v33;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v34 = __swift_project_value_buffer(v20, qword_281571B50);
  (*(v23 + 16))(v28, v34, v20);
  v35 = sub_2698548B4();
  v36 = sub_269854F14();
  if (os_log_type_enabled(v35, v36))
  {
    swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_18_2();
    v67 = v37;
    *v12 = 136315138;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EC8, &qword_269858BE8);
    v39 = MEMORY[0x26D645BC0](MEMORY[0x277D84F90], v38);
    v41 = sub_26974F520(v39, v40, &v67);

    *(v12 + 4) = v41;
    _os_log_impl(&dword_269684000, v35, v36, "AppSelectionSignals#rawSignals signal gathering with allowlist: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v23 + 8))(v28, v20);
  v54 = v29;
  OUTLINED_FUNCTION_23();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_2696B2AE4;
  *(v42 + 24) = v29;
  v43 = qword_2803226D8;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_11_2();
  }

  v44 = qword_281571B68;
  v45 = v61;
  sub_2698547F4();
  sub_269854FF4();
  sub_2698547D4();
  v46 = v64;
  v47 = v56;
  v48 = v66;
  (*(v64 + 16))(v56, v45, v66);
  v49 = (*(v46 + 80) + 33) & ~*(v46 + 80);
  v50 = (v55 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = "appSelectionSignalsRawSignals";
  *(v51 + 24) = 29;
  *(v51 + 32) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  v52 = (v51 + v50);
  *v52 = sub_2696B2C64;
  v52[1] = v42;
  OUTLINED_FUNCTION_23();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_2696B2C68;
  *(v53 + 24) = v51;

  sub_2696A910C(sub_2696B2C70, v53, v63, v65, v58, v57, v62 & 1, MEMORY[0x277D84F90], v60, v59);

  (*(v46 + 8))(v45, v48);

  OUTLINED_FUNCTION_21_0();
}

void sub_2696AF888(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2698548D4();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - v14;
  if (a1)
  {
    v79 = a5;
    v76 = v13;

    v17 = sub_2697DEC04(v16);
    v18 = v17[2];
    v19 = MEMORY[0x277D84F90];
    v86 = v17;
    v77 = a4;
    v78 = a3;
    if (!v18)
    {
LABEL_11:
      v29 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
      v18 = 0;
      v52 = sub_2696B8774(v19, v29);

      v53 = sub_269854A04();
      v54 = v17[2];
      v84 = v52 & 0xC000000000000001;
      v85 = v54;
      v83 = v52 & 0xFFFFFFFFFFFFFF8;
      for (i = v17 + 5; ; i += 2)
      {
        if (v85 == v18)
        {

          (v78)(v53, v17);

          goto LABEL_39;
        }

        if (v18 >= v17[2])
        {
          goto LABEL_43;
        }

        v56 = *(i - 1);
        v57 = *i;
        if (v84)
        {
          v74 = *i;

          v58 = v52;
          MEMORY[0x26D646120](v18, v52);
        }

        else
        {
          if (v18 >= *(v83 + 16))
          {
            goto LABEL_45;
          }

          v58 = v52;
          v59 = *(v52 + 8 * v18 + 32);
          v60 = *i;
        }

        v61 = sub_2696B8130();

        v62 = 0;
        if (*(v61 + 16))
        {
          v63 = sub_26973ED38(1);
          if (v64)
          {
            v62 = *(*(v61 + 56) + 8 * v63);
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        v87[0] = v53;
        v65 = sub_26973CEF8(v56, v57);
        if (__OFADD__(v53[2], (v66 & 1) == 0))
        {
          goto LABEL_44;
        }

        v67 = v65;
        a3 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F50, qword_269858D50);
        if (sub_2698552E4())
        {
          v68 = sub_26973CEF8(v56, v57);
          v17 = v86;
          if ((a3 & 1) != (v69 & 1))
          {
            sub_2698555F4();
            __break(1u);
            return;
          }

          v67 = v68;
        }

        else
        {
          v17 = v86;
        }

        v52 = v58;
        if (a3)
        {

          v53 = v87[0];
          *(*(v87[0] + 56) + 8 * v67) = v62;
        }

        else
        {
          v53 = v87[0];
          *(v87[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
          v70 = (v53[6] + 16 * v67);
          *v70 = v56;
          v70[1] = v57;
          *(v53[7] + 8 * v67) = v62;
          v71 = v53[2];
          v72 = __OFADD__(v71, 1);
          v73 = v71 + 1;
          if (v72)
          {
            goto LABEL_46;
          }

          v53[2] = v73;
        }

        v18 = (v18 + 1);
      }
    }

    v90 = MEMORY[0x277D84F90];
    sub_2698552A4();
    a3 = 0;
    v84 = v18;
    v85 = (v17 + 4);
    v20 = *(a2 + 16);
    v82 = a2 + 32;
    v83 = v20;
    while (a3 < v17[2])
    {
      v21 = (v85 + 16 * a3);
      v23 = *v21;
      v22 = v21[1];
      type metadata accessor for PlayMediaAppSelectionInput();
      swift_allocObject();
      v24 = sub_2696B7F88(0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0xE000000000000000, 0);
      if (v20)
      {

        v25 = v82;
        do
        {
          sub_2696A73F8(v25, v87);
          v26 = v88;
          v27 = v89;
          __swift_project_boxed_opaque_existential_1(v87, v88);
          (*(v27 + 32))(v23, v22, v24, v26, v27);
          __swift_destroy_boxed_opaque_existential_0(v87);
          v25 += 40;
          --v20;
        }

        while (v20);

        v17 = v86;
        v20 = v83;
        v18 = v84;
      }

      ++a3;
      sub_269855284();
      v28 = *(v90 + 2);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      if (a3 == v18)
      {
        v19 = v90;
        a3 = v78;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    swift_once();
    v30 = v81;
    v31 = __swift_project_value_buffer(v81, qword_281571B50);
    v32 = v80;
    v33 = v76;
    (*(v80 + 16))(v76, v31, v30);
    v34 = v18;
    v35 = sub_2698548B4();
    v36 = sub_269854F44();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v32;
      v39 = swift_slowAlloc();
      v87[0] = v39;
      *v37 = 136315138;
      v90 = v18;
      v40 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
      v41 = sub_269854AE4();
      v43 = sub_26974F520(v41, v42, v87);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_269684000, v35, v36, "Error predicting app selection apps: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x26D647170](v39, -1, -1);
      MEMORY[0x26D647170](v37, -1, -1);

      (*(v38 + 8))(v76, v81);
    }

    else
    {

      (*(v32 + 8))(v33, v30);
    }

    sub_269854A04();
    (a3)();
  }

  else
  {
    if (qword_280322708 != -1)
    {
      swift_once();
    }

    v44 = v81;
    v45 = __swift_project_value_buffer(v81, qword_281571B50);
    (*(v80 + 16))(v15, v45, v44);
    v46 = sub_2698548B4();
    v47 = sub_269854F44();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_269684000, v46, v47, "No results from app selection signal gathering", v48, 2u);
      v49 = v48;
      v44 = v81;
      MEMORY[0x26D647170](v49, -1, -1);
    }

    (*(v80 + 8))(v15, v44);
    v50 = MEMORY[0x277D84F90];
    v51 = sub_269854A04();
    (a3)(v51, v50);
LABEL_39:
  }
}

uint64_t sub_2696B0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11)
{
  v225 = a7;
  v224 = a6;
  v234 = a5;
  v218 = a4;
  v217 = a3;
  v14 = type metadata accessor for AppSelectionResult(0);
  v15 = OUTLINED_FUNCTION_4_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = (&v204 - v22);
  v212 = type metadata accessor for AppDisambiguationContext(0);
  v24 = OUTLINED_FUNCTION_4_3(v212);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v28 - v27);
  v228 = sub_2698548D4();
  v29 = OUTLINED_FUNCTION_8(v228);
  v229 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12();
  v35 = v33 - v34;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v204 - v38;
  MEMORY[0x28223BE20](v37);
  v215 = &v204 - v40;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v41);
  v211 = &v204 - v42;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v43);
  v45 = OUTLINED_FUNCTION_15_1(&v204 - v44);
  v46 = type metadata accessor for ModelParams(v45);
  v47 = OUTLINED_FUNCTION_4_3(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_1();
  v53 = v52 - v51;
  if (*(a1 + 16))
  {
    v208 = v50;
    v206 = v20;
    v210 = v53;
    v214 = v23;
    v207 = a8;
    v219 = v14;
    v221 = a11;
    v220 = a10;
    v209 = a9;
    v54 = a1 + 64;
    v55 = 1;
    v56 = 1 << *(a1 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(a1 + 64);
    v59 = (v56 + 63) >> 6;

    v60 = 0;
    v61 = 0;
    v226 = 0;
    v62 = 0.0;
    v63 = 0.0;
    v227 = a1;
    while (v58)
    {
LABEL_10:
      v65 = __clz(__rbit64(v58)) | (v60 << 6);
      v66 = *(*(a1 + 56) + 8 * v65);
      v58 &= v58 - 1;
      v63 = v63 + v66;
      v67 = v55 | (v62 < v66);
      v55 = 0;
      if (v67)
      {
        v68 = (*(a1 + 48) + 16 * v65);
        v61 = *v68;
        v69 = v68[1];

        OUTLINED_FUNCTION_27();

        v55 = 0;
        v62 = v66;
        v226 = v69;
        a1 = v227;
      }
    }

    while (1)
    {
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
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
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        OUTLINED_FUNCTION_0_4();
LABEL_15:
        v70 = v228;
        __swift_project_value_buffer(v228, qword_281571B38);
        OUTLINED_FUNCTION_25();
        v71(v39);
        v72 = sub_2698548B4();
        v73 = sub_269854F24();
        v74 = os_log_type_enabled(v72, v73);
        v75 = v214;
        if (v74)
        {
          v76 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_24(v76);
          OUTLINED_FUNCTION_29(&dword_269684000, v72, v73, "AppSelector#selectApp invalid or empty result");
          OUTLINED_FUNCTION_12_1();
        }

        (*(v229 + 8))(v39, v70);
        v77 = v224;
        *v75 = v234;
        v75[1] = v77;
        v75[2] = v225;
        swift_storeEnumTagMultiPayload();

        (v60)(v75);
        OUTLINED_FUNCTION_0_7();
        v79 = v75;
LABEL_18:
        sub_2696B2A8C(v79, v78);
        OUTLINED_FUNCTION_27();
      }

      if (v64 >= v59)
      {
        break;
      }

      v58 = *(v54 + 8 * v64);
      ++v60;
      if (v58)
      {
        v60 = v64;
        goto LABEL_10;
      }
    }

    if (!OUTLINED_FUNCTION_27() || v55 & 1 | (v63 <= 0.0))
    {
      v60 = v220;
      if (qword_280322700 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_86;
    }

    v87 = *(a2 + 8);
    v88 = *(a2 + 16);
    v39 = *(a1 + 16);
    v205 = v61;
    if (v39)
    {
      *&v237[0] = MEMORY[0x277D84F90];

      sub_269814FF8(0, v39, 0);
      v89 = *&v237[0];
      v60 = sub_2697F1D9C(a1);
      v92 = 0;
      v223 = a1 + 72;
      v230 = v39;
      v231 = v54;
      if ((v60 & 0x8000000000000000) == 0)
      {
        while (v60 < 1 << *(a1 + 32))
        {
          v93 = v60 >> 6;
          if ((*(v54 + 8 * (v60 >> 6)) & (1 << v60)) == 0)
          {
            goto LABEL_81;
          }

          if (*(a1 + 36) != v90)
          {
            goto LABEL_82;
          }

          v232 = v91;
          v233 = v92;
          v234 = v90;
          v94 = (*(a1 + 48) + 16 * v60);
          v96 = *v94;
          v95 = v94[1];
          v97 = *(*(a1 + 56) + 8 * v60);
          *&v237[0] = v89;
          v39 = *(v89 + 16);
          v98 = *(v89 + 24);

          if (v39 >= v98 >> 1)
          {
            sub_269814FF8(v98 > 1, v39 + 1, 1);
            v89 = *&v237[0];
          }

          *(v89 + 16) = v39 + 1;
          v99 = (v89 + 24 * v39);
          v99[4] = v96;
          v99[5] = v95;
          v99[6] = v97;
          v100 = 1 << *(a1 + 32);
          if (v60 >= v100)
          {
            goto LABEL_83;
          }

          v54 = v231;
          v101 = *(v231 + 8 * v93);
          if ((v101 & (1 << v60)) == 0)
          {
            goto LABEL_84;
          }

          if (*(a1 + 36) != v234)
          {
            goto LABEL_85;
          }

          v102 = v101 & (-2 << (v60 & 0x3F));
          if (v102)
          {
            v100 = __clz(__rbit64(v102)) | v60 & 0x7FFFFFFFFFFFFFC0;
            v39 = v230;
            v103 = v233;
          }

          else
          {
            v104 = v93 << 6;
            v105 = v93 + 1;
            v106 = (v223 + 8 * v93);
            v39 = v230;
            v103 = v233;
            while (v105 < (v100 + 63) >> 6)
            {
              v108 = *v106++;
              v107 = v108;
              v104 += 64;
              ++v105;
              if (v108)
              {
                sub_26968E5C8(v60, v234, v232 & 1);
                v100 = __clz(__rbit64(v107)) + v104;
                goto LABEL_41;
              }
            }

            sub_26968E5C8(v60, v234, v232 & 1);
LABEL_41:
            a1 = v227;
          }

          v92 = v103 + 1;
          if (v92 == v39)
          {
            goto LABEL_46;
          }

          v91 = 0;
          v90 = *(a1 + 36);
          v60 = v100;
          if (v100 < 0)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_80;
    }

    v89 = MEMORY[0x277D84F90];
LABEL_46:
    *&v237[0] = v89;

    sub_2697E0E9C(v237);
    v109 = v228;
    v110 = v229;
    v111 = sub_269771A0C(5, *&v237[0]);
    v234 = sub_2697DEC88(v111, v112, v113);
    v114 = v208;
    v115 = v208[5];
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
    v117 = v210;
    OUTLINED_FUNCTION_28(v210 + v115, v118, v119, v116);
    v120 = *(v216 + 24);
    v121 = *(v216 + 32);
    v122 = v218;

    v120(v237, v123);
    *v117 = v217;
    v117[1] = v122;
    *(v117 + v114[6]) = v89;
    v124 = (v117 + v114[7]);
    v125 = v237[1];
    *v124 = v237[0];
    v124[1] = v125;
    v124[2] = v237[2];
    v126 = (v117 + v114[8]);
    v127 = v225;
    *v126 = v224;
    v126[1] = v127;
    v128 = qword_280322700;

    if (v128 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v129 = v62 / v63;
    v130 = __swift_project_value_buffer(v109, qword_281571B38);
    v131 = v110[2];
    v132 = v222;
    v131(v222, v130, v109);
    v133 = v209;

    v134 = sub_2698548B4();
    v135 = sub_269854F14();

    if (os_log_type_enabled(v134, v135))
    {
      swift_slowAlloc();
      v136 = v110;
      v137 = OUTLINED_FUNCTION_18_2();
      v235[1] = v133;
      v236 = v137;
      *v132 = 136315138;
      v235[0] = v207;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
      v138 = sub_269854AE4();
      v110 = v139;
      v140 = sub_26974F520(v138, v139, &v236);

      *(v132 + 4) = v140;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v141, v142, v143, v144, v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v137);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v146 = v136[1];
      v146(v222, v109);
    }

    else
    {

      v146 = v110[1];
      v146(v132, v109);
    }

    v147 = v215;
    v148 = v62 < v88 || v129 < v87;
    if (v148 && *(v227 + 16) >= 2uLL)
    {
      OUTLINED_FUNCTION_27();

      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v149 = v228;
      v150 = __swift_project_value_buffer(v228, qword_281571B50);
      v131(v211, v150, v149);
      v151 = sub_2698548B4();
      v152 = sub_269854F04();
      if (OUTLINED_FUNCTION_17_2(v152))
      {
        v153 = swift_slowAlloc();
        *v153 = 67109376;
        *(v153 + 4) = v62 < v88;
        *(v153 + 8) = 1024;
        *(v153 + 10) = v129 < v87;
        OUTLINED_FUNCTION_7_5();
        _os_log_impl(v154, v155, v156, v157, v158, 0xEu);
        OUTLINED_FUNCTION_10();
      }

      v159 = OUTLINED_FUNCTION_10_3();
      v146(v159, v228);
      if (v129 >= v87)
      {
        v160 = 2 * (v62 < v88);
      }

      else
      {
        v160 = (2 * (v62 < v88)) | 4;
      }

      v161 = v212;
      v162 = v212[7];
      OUTLINED_FUNCTION_6_5();
      v163 = v213;
      sub_2696B2A2C(v210, v213 + v164, v165);
      v166 = v161[8];
      v167 = sub_269853984();
      OUTLINED_FUNCTION_28(v163 + v166, v168, v169, v167);
      *v163 = v234;
      *(v163 + 8) = 0;
      *(v163 + 16) = v160;
      *(v163 + v161[9]) = 0;
      v170 = (v163 + v161[10]);
      v171 = v209;
      *v170 = v207;
      v170[1] = v171;
      v172 = v214;
      sub_2696B2A2C(v163, v214, type metadata accessor for AppDisambiguationContext);
      swift_storeEnumTagMultiPayload();

      v220(v172);
      OUTLINED_FUNCTION_0_7();
      sub_2696B2A8C(v172, v173);
      sub_2696B2A8C(v163, type metadata accessor for AppDisambiguationContext);
      v79 = OUTLINED_FUNCTION_5_6();
      goto LABEL_18;
    }

    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v174 = v228;
    v175 = __swift_project_value_buffer(v228, qword_281571B50);
    v131(v147, v175, v174);
    v176 = v226;

    v177 = sub_2698548B4();
    v178 = sub_269854F04();

    if (os_log_type_enabled(v177, v178))
    {
      swift_slowAlloc();
      v110 = OUTLINED_FUNCTION_18_2();
      v235[0] = v110;
      *v132 = 136315650;
      v179 = v205;
      *(v132 + 4) = sub_26974F520(v205, v176, v235);
      *(v132 + 12) = 2048;
      *(v132 + 14) = v62;
      *(v132 + 22) = 2048;
      *(v132 + 24) = v129;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v180, v181, v182, v183, v184, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v110);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_10();

      v185 = OUTLINED_FUNCTION_10_3();
      v146(v185, v174);
      OUTLINED_FUNCTION_21_1();
    }

    else
    {

      v186 = OUTLINED_FUNCTION_10_3();
      v146(v186, v174);
      OUTLINED_FUNCTION_21_1();
      v179 = v205;
    }

    *v110 = v179;
    v110[1] = v176;
    v187 = v234;
    v188 = v234[2];
    if (v188)
    {
      v235[0] = MEMORY[0x277D84F90];
      sub_269814F0C(0, v188, 0);
      v189 = v235[0];
      v190 = v187 + 5;
      do
      {
        v192 = *(v190 - 1);
        v191 = *v190;
        v235[0] = v189;
        v193 = *(v189 + 16);
        v194 = *(v189 + 24);

        if (v193 >= v194 >> 1)
        {
          sub_269814F0C(v194 > 1, v193 + 1, 1);
          v189 = v235[0];
        }

        *(v189 + 16) = v193 + 1;
        v195 = v189 + 16 * v193;
        *(v195 + 32) = v192;
        *(v195 + 40) = v191;
        v190 += 3;
        --v188;
      }

      while (v188);

      v110 = v206;
    }

    else
    {

      v189 = MEMORY[0x277D84F90];
    }

    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
    v197 = *(v196 + 64);
    v198 = (v110 + *(v196 + 80));
    v110[2] = v189;
    OUTLINED_FUNCTION_6_5();
    sub_2696B2A2C(v210, v110 + v197, v199);
    __swift_storeEnumTagSinglePayload(v110 + v197, 0, 1, v208);
    v200 = v209;
    *v198 = v207;
    v198[1] = v200;
    swift_storeEnumTagMultiPayload();

    v220(v110);
    OUTLINED_FUNCTION_0_7();
    sub_2696B2A8C(v110, v201);
    v202 = OUTLINED_FUNCTION_5_6();
    sub_2696B2A8C(v202, v203);
  }

  else
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    __swift_project_value_buffer(v228, qword_281571B50);
    OUTLINED_FUNCTION_25();
    v80(v35);
    v81 = sub_2698548B4();
    v82 = sub_269854F24();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v83);
      OUTLINED_FUNCTION_29(&dword_269684000, v81, v82, "AppSelector#selectApp nil or empty results");
      OUTLINED_FUNCTION_12_1();
    }

    (*(v229 + 8))(v35, v228);
    v84 = v224;
    *v23 = v234;
    v23[1] = v84;
    v23[2] = v225;
    swift_storeEnumTagMultiPayload();

    a10(v23);
    OUTLINED_FUNCTION_0_7();
    return sub_2696B2A8C(v23, v85);
  }
}

void sub_2696B10EC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v29 = v2;
  v30 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v31 = v12;
  v32 = *v0;
  v13 = sub_2698548D4();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v22 = __swift_project_value_buffer(v13, qword_281571B50);
  (*(v16 + 16))(v21, v22, v13);
  v23 = sub_2698548B4();
  v24 = sub_269854F44();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_16_2();
    *v25 = 0;
    _os_log_impl(&dword_269684000, v23, v24, "AppSelector#select IS supported for this intent", v25, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v16 + 8))(v21, v13);
  v26 = swift_allocObject();
  v26[2] = v1;
  v26[3] = v29;
  v26[4] = v30;
  v27 = qword_2803223E0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = swift_allocObject();
  *(v28 + 16) = sub_2696B2928;
  *(v28 + 24) = v26;
  *(v28 + 32) = v31;
  *(v28 + 40) = v9;
  *(v28 + 48) = v1;
  *(v28 + 56) = v11 & 1;
  *(v28 + 64) = v7;
  *(v28 + 72) = v5;
  *(v28 + 80) = v32;

  sub_269842524();

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696B13C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  sub_2697E2988(a1);
  return a3(a1);
}

void sub_2696B1408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (qword_280322418 != -1)
  {
    swift_once();
  }

  v17 = qword_281571A50;
  sub_2696A6DC0(a1, v20);

  LOBYTE(v18) = a7 & 1;
  sub_269844528(0x4024000000000000, 0, v17, a1, a2, a3, a4, a5, a6, v18, a8, a9, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v21, v22, v23);
}

void sub_2696B1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_1();
  HIDWORD(v80) = v22;
  v82 = v24;
  v83 = v23;
  v81 = v25;
  v27 = v26;
  v86 = v29;
  v87 = v28;
  v31 = v30;
  v78 = type metadata accessor for AppSelectionResult(0);
  v32 = OUTLINED_FUNCTION_4_3(v78);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v36 - v35);
  v37 = sub_2698548D4();
  v38 = OUTLINED_FUNCTION_8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12();
  v84 = (v43 - v44);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v45);
  v47 = &v77 - v46;
  v48 = *v31;
  v49 = v31[1];
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v50 = __swift_project_value_buffer(v37, qword_281571B50);
  v88 = v40;
  v51 = v40[2];
  v51(v47, v50, v37);
  sub_2696AA664(v48);
  v52 = sub_2698548B4();
  v53 = sub_269854F44();
  v54 = os_log_type_enabled(v52, v53);
  v85 = v48;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v77 = v27;
    v56 = v55;
    *v55 = 67109120;
    *(v55 + 1) = v48 != 0;
    sub_2696AC148(v48);
    _os_log_impl(&dword_269684000, v52, v53, "AppSelector#select has raw results from warmup?: %{BOOL}d", v56, 8u);
    v27 = v77;
    OUTLINED_FUNCTION_10();
  }

  else
  {
    sub_2696AC148(v48);
  }

  v57 = v88[1];
  ++v88;
  v57(v47, v37);
  if (*v87)
  {
    v77 = v57;
    v78 = a21;
    v51(v84, v50, v37);
    v58 = v85;
    sub_2696AA664(v85);
    v59 = v83;

    v60 = v82;

    v61 = v87;
    sub_2696A6DC0(v87, v89);

    sub_2696AA664(v58);

    sub_2696A6DC0(v61, v89);
    v79 = a22;

    v62 = sub_2698548B4();
    v63 = sub_269854F44();
    if (OUTLINED_FUNCTION_17_2(v63))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_7_5();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_10();
    }

    v77(v84, v37);
    v69 = v87;
    v70 = *(v87 + 96);
    v71 = v85;
    sub_2696AA664(v85);

    sub_2696A6DC0(v69, v89);
    v72 = BYTE4(v80) & 1;
    v73 = v79;

    LOBYTE(v76) = v72;
    sub_2698437DC(0, 1, v70, v86, v27, v81, v59, v60, v76, v71, v49, v69, v78, v73, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89[0], v89[1]);

    sub_2696AC148(v71);
    sub_2696A8048(v69);

    sub_2696AC148(v71);
    sub_2696A8048(v69);
  }

  else
  {
    v74 = v79;
    swift_storeEnumTagMultiPayload();
    v86(v74);
    OUTLINED_FUNCTION_0_7();
    sub_2696B2A8C(v74, v75);
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2696B19C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_1();
  v86 = v25;
  v87 = v24;
  v85 = v26;
  v28 = v27;
  v84 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = type metadata accessor for AppSelectionResult(0);
  v37 = OUTLINED_FUNCTION_4_3(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v42 = (v41 - v40);
  v43 = sub_2698548D4();
  v44 = OUTLINED_FUNCTION_8(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12();
  v80 = (v49 - v50);
  OUTLINED_FUNCTION_22_0();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v78 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v78 - v55;
  if (!v35)
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v67 = __swift_project_value_buffer(v43, qword_281571B50);
    (*(v46 + 16))(v56, v67, v43);
    v68 = sub_2698548B4();
    v69 = sub_269854F24();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v70);
      OUTLINED_FUNCTION_29(&dword_269684000, v68, v69, "PlayMediaAppSelector#select error loading app selection model");
      OUTLINED_FUNCTION_12_1();
    }

    (*(v46 + 8))(v56, v43);
    *v42 = 0;
    v42[1] = 0;
    v42[2] = 0;
    swift_storeEnumTagMultiPayload();
    v33(v42);
    goto LABEL_16;
  }

  v79 = v28;
  v78 = v36;
  v81 = v35;
  v82 = v33;
  v57 = qword_280322708;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v83 = v31;
  v58 = __swift_project_value_buffer(v43, qword_281571B50);
  v59 = *(v46 + 16);
  v59(v54, v58, v43);
  v60 = sub_2698548B4();
  v61 = sub_269854F44();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_16_2();
    *v62 = 0;
    _os_log_impl(&dword_269684000, v60, v61, "PlayMediaAppSelector#select loaded app selection model", v62, 2u);
    OUTLINED_FUNCTION_10();
  }

  v63 = *(v46 + 8);
  v63(v54, v43);
  v64 = v87;
  if (!v87)
  {
    v71 = v80;
    v59(v80, v58, v43);
    v72 = sub_2698548B4();
    v73 = sub_269854F24();
    v74 = OUTLINED_FUNCTION_17_2(v73);
    v75 = v82;
    if (v74)
    {
      v76 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v76);
      OUTLINED_FUNCTION_29(&dword_269684000, v72, v71, "PlayMediaAppSelector#select missing search term");
      OUTLINED_FUNCTION_12_1();
    }

    v63(v71, v43);
    swift_storeEnumTagMultiPayload();
    v75(v42);

LABEL_16:
    OUTLINED_FUNCTION_0_7();
    sub_2696B2A8C(v42, v77);
    goto LABEL_17;
  }

  v65 = swift_allocObject();
  v65[2] = v79;
  memcpy(v65 + 3, a22, 0x68uLL);
  v65[16] = v84;
  v65[17] = v64;
  v66 = v82;
  v65[18] = v81;
  v65[19] = a23;
  v65[20] = a24;
  v65[21] = v66;
  v65[22] = v83;

  sub_2696A6DC0(a22, &v88);

  sub_2696AF32C();

LABEL_17:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696B1E5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11)
{
  v49 = a6;
  v50 = a7;
  v17 = sub_2698548D4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v47 = a10;
  v48 = a11;
  v46 = a9;
  v22 = __swift_project_value_buffer(v17, qword_281571B50);
  (*(v18 + 16))(v21, v22, v17);

  v23 = sub_2698548B4();
  v45 = v17;
  v24 = v23;
  v25 = sub_269854F44();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = a8;
    v27 = v26;
    v28 = swift_slowAlloc();
    v43 = a3;
    v41 = v28;
    v51 = v28;
    *v27 = 136315138;
    v29 = sub_2698549F4();
    v42 = a4;
    v31 = a1;
    v32 = a5;
    v33 = sub_26974F520(v29, v30, &v51);
    a4 = v42;

    *(v27 + 4) = v33;
    a5 = v32;
    a1 = v31;
    _os_log_impl(&dword_269684000, v24, v25, "AppSelector#select signals gathered with results: %s", v27, 0xCu);
    v34 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x26D647170](v34, -1, -1);
    v35 = v27;
    a8 = v44;
    MEMORY[0x26D647170](v35, -1, -1);
  }

  (*(v18 + 8))(v21, v45);
  v36 = *(v50 + 16);
  v37 = sub_2696D3A90();
  sub_2696B0124(a1, a4, a5, v49, a2, v37, v38, a8, v46, v47, v48);
}

void *sub_2696B2138()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_2696B2168()
{
  sub_2696B2138();
  v0 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2696B21B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v2 + 24) = 0;
  v5 = qword_281571B90;
  v6 = sub_269851D34();
  OUTLINED_FUNCTION_28(v2 + v5, v7, v8, v6);
  OUTLINED_FUNCTION_26();
  v10 = v2 + *(v9 + 112);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  OUTLINED_FUNCTION_26();
  v12 = (v2 + *(v11 + 120));
  *v12 = a1;
  v12[1] = a2;
  return v2;
}

uint64_t sub_2696B2268(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v2 + 24) = 0;
  v5 = qword_281571B90;
  v6 = sub_269851D34();
  OUTLINED_FUNCTION_28(v2 + v5, v7, v8, v6);
  OUTLINED_FUNCTION_26();
  *(v2 + *(v9 + 112)) = 0;
  OUTLINED_FUNCTION_26();
  v11 = (v2 + *(v10 + 120));
  *v11 = a1;
  v11[1] = a2;
  return v2;
}

uint64_t sub_2696B2304(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v2 + 24) = 0;
  v5 = qword_281571B90;
  v6 = sub_269851D34();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  v7 = (v2 + *(*v2 + 112));
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + *(*v2 + 120));
  *v8 = a1;
  v8[1] = a2;
  return v2;
}

uint64_t sub_2696B23B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = a1;
  sub_269854FE4();
  if (qword_2803226D8 != -1)
  {
    OUTLINED_FUNCTION_11_2();
  }

  sub_2698547E4();
  return a6(&v8);
}

uint64_t sub_2696B2468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *))
{
  v9[0] = a1;
  v9[1] = a2;
  sub_269854FE4();
  if (qword_2803226D8 != -1)
  {
    swift_once();
  }

  sub_2698547E4();
  return a7(v9);
}

void *sub_2696B2564(uint64_t a1, uint64_t a2, void *a3)
{
  v28[3] = &type metadata for CoreAnalyticsService;
  v28[4] = &xmmword_287A41610;
  v26 = &type metadata for UTSProvider;
  v27 = &off_287A43FA8;
  v6 = swift_allocObject();
  v24 = &xmmword_287A41610;
  v25[0] = v6;
  v23 = &type metadata for CoreAnalyticsService;
  v6[5] = &type metadata for UTSNetworkProvider;
  v6[6] = &off_287A43DC0;
  v7 = swift_allocObject();
  v6[2] = v7;
  sub_2697D24B0(&v22, (v7 + 16));
  v6[10] = &type metadata for CoreAnalyticsService;
  v6[11] = &xmmword_287A41610;
  v23 = &type metadata for ContentResolver;
  v24 = &off_287A42478;
  *&v22 = swift_allocObject();
  sub_2696B2824(v25, v22 + 16);
  type metadata accessor for BackgroundPlayableFetch();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(&v22, &type metadata for ContentResolver);
  v10 = *(off_287A42458 + 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v20 = &type metadata for ContentResolver;
  v21 = &off_287A42478;
  v14 = swift_allocObject();
  *&v19 = v14;
  v15 = *(v12 + 1);
  *(v14 + 16) = *v12;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v12 + 4);
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  *(v8 + 152) = sub_269854A04();
  sub_26968E5D4(&v19, v8 + 112);
  __swift_destroy_boxed_opaque_existential_0(&v22);
  sub_2696B28D4(v25);
  a3[5] = v8;
  sub_2696A73F8(v28, v25);
  __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v23 = &type metadata for CoreAnalyticsService;
  v24 = &xmmword_287A41610;
  type metadata accessor for AppSelectionResultAnalyticsLogger();
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v22, &type metadata for CoreAnalyticsService);
  v16[5] = &type metadata for CoreAnalyticsService;
  v16[6] = &xmmword_287A41610;
  v16[7] = a1;
  v16[8] = a2;

  __swift_destroy_boxed_opaque_existential_0(&v22);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v25);
  a3[2] = v16;
  a3[3] = a1;
  a3[4] = a2;
  return a3;
}

unint64_t sub_2696B2880()
{
  result = qword_280322F30;
  if (!qword_280322F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280322F30);
  }

  return result;
}

uint64_t sub_2696B29B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_2696B29F0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_2696B2A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2696B2A8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_35Tm()
{
  v1 = sub_269854824();
  OUTLINED_FUNCTION_4_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2696B2B88(uint64_t *a1)
{
  v3 = *(sub_269854824() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2696B252C(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_1()
{

  JUMPOUT(0x26D647170);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_17_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_29(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2696B2E38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2696B2E78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2696B2ED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F78, &qword_269858E08);
  *(inited + 32) = sub_269854AE4();
  *(inited + 40) = v1;
  sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F80, &unk_2698660B0);
  *(inited + 48) = sub_269854AE4();
  *(inited + 56) = v2;
  sub_2697F1EE0(inited);
  qword_281571928 = v3;
}

uint64_t sub_2696B2FB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F68, &qword_269858DF8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2696B2C6C(sub_2696B3018, 0);
  qword_281571920 = result;
  return result;
}

uint64_t sub_2696B3018(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &__src[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = qword_280322708;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v5 + 16))(v8, v11, v4);
  v12 = sub_2698548B4();
  v13 = sub_269854F14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_269684000, v12, v13, "InstalledAppProvider#apps gathering apps from LSApplicationRecord enumerator", v14, 2u);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v20 = &type metadata for LSApplicationRecordProvider;
  v21 = &xmmword_287A41430;
  v15 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v23 = &type metadata for AppIntentsMetadataProvider;
  v24 = &off_287A413C0;
  v22 = v15;
  if (qword_2803223E0 != -1)
  {
    swift_once();
  }

  sub_2696B6ED8(v19, __src);
  v16 = swift_allocObject();
  memcpy(v16 + 2, __src, 0x50uLL);
  v16[12] = sub_269693184;
  v16[13] = v9;

  sub_269842524();

  return sub_2696B6F40(v19);
}

void sub_2696B32E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v152 = a2;
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v141 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v153 = &v141 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v141 - v18;
  v20 = *(a1 + 32);
  v147 = *(a1 + 24);
  v146 = v20;
  v21 = [objc_opt_self() enumeratorWithOptions_];
  v22 = sub_2696B6C90();

  v154 = *(v22 + 16);
  if (!v154)
  {

    a3(MEMORY[0x277D84F90]);
LABEL_101:

    return;
  }

  v142 = v15;
  v143 = a4;
  v144 = a3;
  v24 = 0;
  v166 = v22 + 32;
  v165 = (v8 + 16);
  v164 = (v8 + 8);
  v163 = 0x800000026987B820;
  *&v23 = 136316162;
  v145 = v23;
  *&v23 = 136315138;
  v141 = v23;
  v160 = MEMORY[0x277D84F90];
  v151 = v12;
  v162 = v19;
  v25 = v154;
  v148 = v7;
  v161 = v22;
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
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
      goto LABEL_110;
    }

    sub_2696B6F94(v166 + 32 * v24, v167);
    sub_26969329C(0, &qword_2815718D0, 0x277CC1E70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v7, qword_281571B50);
      (*v165)(v19, v31, v7);
      v32 = sub_2698548B4();
      v33 = sub_269854F24();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_269684000, v32, v33, "InstalledAppProvider#apps error coercing record into LSApplicationRecord", v34, 2u);
        MEMORY[0x26D647170](v34, -1, -1);
      }

      (*v164)(v19, v7);
      goto LABEL_97;
    }

    v26 = v171;
    v27 = sub_2696B6BAC(v26);
    if (!v28)
    {
      v35 = v12;
      v36 = v26;
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v7, qword_281571B50);
      v38 = v153;
      (*v165)(v153, v37, v7);
      v39 = sub_2698548B4();
      v40 = sub_269854F24();
      v41 = os_log_type_enabled(v39, v40);
      v22 = v161;
      if (v41)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_269684000, v39, v40, "InstalledAppProvider#apps error missing bundle identifier for LSApplicationRecord", v42, 2u);
        MEMORY[0x26D647170](v42, -1, -1);
      }

      else
      {
      }

      (*v164)(v38, v7);
      v12 = v35;
      v19 = v162;
      goto LABEL_97;
    }

    v29 = v27;
    v30 = v28;
    if (([v26 appProtectionHidden] & 1) == 0)
    {
      break;
    }

    v22 = v161;
LABEL_97:
    if (++v24 == v25)
    {

      v144(v160);
      goto LABEL_101;
    }
  }

  v43 = MEMORY[0x277D84F90];
  v170 = MEMORY[0x277D84F90];
  v171 = MEMORY[0x277D84F90];
  v44 = [objc_opt_self() appInfoWithApplicationRecord_];
  v157 = v26;
  v158 = v29;
  if (!v44)
  {
    v49 = v43;
LABEL_32:
    v159 = v43;
LABEL_77:
    v168 = v43;
    v169 = v43;
    v167[3] = &type metadata for SiriVideoFeatureKeys;
    v167[4] = sub_2696A2978();
    LOBYTE(v167[0]) = 3;
    v97 = sub_269853B34();
    __swift_destroy_boxed_opaque_existential_0(v167);
    if (v97)
    {
      v98 = sub_269832854(v29);
      if (v98)
      {
        v43 = sub_2697DED30(v98);
        swift_beginAccess();
        v168 = v43;
      }

      v99 = sub_269832F24(v29);
      if (v99)
      {
        v100 = sub_2697DED70(v99);
        swift_beginAccess();
        v169 = v100;
      }

      else
      {
        v100 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v100 = v43;
    }

    if (v49[2] || *(v100 + 16) || *(v43 + 16))
    {
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v101 = __swift_project_value_buffer(v7, qword_281571B50);
      (*v165)(v12, v101, v7);

      v102 = sub_2698548B4();
      v103 = sub_269854F14();

      v104 = os_log_type_enabled(v102, v103);
      v156 = v30;
      if (v104)
      {
        v105 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v167[0] = v155;
        *v105 = v145;
        *(v105 + 4) = sub_26974F520(v158, v30, v167);
        *(v105 + 12) = 2080;
        LODWORD(v150) = v103;

        v107 = MEMORY[0x277D837D0];
        v108 = v49;
        v109 = MEMORY[0x26D645BC0](v106, MEMORY[0x277D837D0]);
        v111 = v110;

        v112 = sub_26974F520(v109, v111, v167);

        *(v105 + 14) = v112;
        v149 = v43;
        *(v105 + 22) = 2080;

        v114 = MEMORY[0x26D645BC0](v113, v107);
        v116 = v115;

        v117 = sub_26974F520(v114, v116, v167);

        *(v105 + 24) = v117;
        *(v105 + 32) = 2080;
        v118 = sub_269851A04();

        v120 = MEMORY[0x26D645BC0](v119, v118);
        v122 = v121;

        v123 = sub_26974F520(v120, v122, v167);

        *(v105 + 34) = v123;
        *(v105 + 42) = 2080;
        v43 = v149;
        v124 = sub_2698519E4();

        v126 = MEMORY[0x26D645BC0](v125, v124);
        v128 = v127;

        v129 = sub_26974F520(v126, v128, v167);
        v7 = v148;

        *(v105 + 44) = v129;
        v49 = v108;
        _os_log_impl(&dword_269684000, v102, v150, "InstalledAppProvider#apps found bundle: %s, supportedCategories: %s, supportedIntents: %s, appIntentsFindSearchScopes: %s, appIntentsPlayVideoCategories: %s", v105, 0x34u);
        v130 = v155;
        swift_arrayDestroy();
        v12 = v151;
        MEMORY[0x26D647170](v130, -1, -1);
        v131 = v105;
        v19 = v162;
        MEMORY[0x26D647170](v131, -1, -1);
      }

      (*v164)(v12, v7);

      v132 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = *(v160 + 16);
        sub_26977C0F0();
        v160 = v139;
      }

      v133 = v158;
      v134 = *(v160 + 16);
      if (v134 >= *(v160 + 24) >> 1)
      {
        sub_26977C0F0();
        v160 = v140;
      }

      v135 = v160;
      *(v160 + 16) = v134 + 1;
      v136 = (v135 + 48 * v134);
      v137 = v156;
      v136[4] = v133;
      v136[5] = v137;
      v136[6] = v159;
      v136[7] = v132;
      v136[8] = v100;
      v136[9] = v43;
    }

    else
    {
    }

    v22 = v161;
    v25 = v154;
    goto LABEL_97;
  }

  v155 = v44;
  v45 = [v44 supportedIntents];
  v46 = sub_269854E44();

  if (qword_280322420 != -1)
  {
    swift_once();
  }

  v47 = sub_2696B62A4(qword_281571928, v46);
  v48 = *(v47 + 16);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v49 = swift_allocObject();
    v50 = _swift_stdlib_malloc_size(v49);
    v49[2] = v48;
    v49[3] = 2 * ((v50 - 32) / 16);
    sub_2697E1B98(v167, (v49 + 4), v48, v47);
    v52 = v51;
    sub_26968E614();
    if (v52 != v48)
    {
      goto LABEL_105;
    }
  }

  else
  {

    v49 = v43;
  }

  swift_beginAccess();
  v170 = v49;
  if (!v49[2])
  {

    goto LABEL_32;
  }

  v150 = v49;
  v53 = [v155 supportedMediaCategories];
  v54 = sub_269854E44();

  v55 = *(v54 + 16);
  if (v55)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v56 = swift_allocObject();
    v57 = _swift_stdlib_malloc_size(v56);
    v56[2] = v55;
    v56[3] = 2 * ((v57 - 32) / 16);
    sub_2697E1B98(v167, (v56 + 4), v55, v54);
    v59 = v58;
    sub_26968E614();
    if (v59 != v55)
    {
      goto LABEL_109;
    }
  }

  else
  {

    v56 = v43;
  }

  swift_beginAccess();
  v171 = v56;
  if (sub_269807CB4(v29, v30, v147))
  {
    v60 = [v155 supportedMediaCategories];
    v61 = sub_269854E44();

    LOBYTE(v60) = sub_269807CB4(0xD000000000000014, v163, v61);

    if ((v60 & 1) == 0)
    {
      swift_beginAccess();
      sub_26977BA60();
      v62 = *(v171 + 2);
      sub_26977BBB8();
      v56 = v171;
      *(v171 + 2) = v62 + 1;
      v63 = &v56[2 * v62];
      v63[4] = 0xD000000000000014;
      v63[5] = v163;
      v171 = v56;
      swift_endAccess();
    }
  }

  if (!sub_269807CB4(v29, v30, v146))
  {
LABEL_70:
    v88 = *(v171 + 2);
    v49 = v150;
    v159 = v171;
    if (v88)
    {
    }

    else
    {
      if (qword_280322708 != -1)
      {
        swift_once();
      }

      v89 = __swift_project_value_buffer(v7, qword_281571B50);
      v90 = v142;
      (*v165)(v142, v89, v7);

      v91 = sub_2698548B4();
      v92 = sub_269854F14();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v167[0] = v94;
        *v93 = v141;
        *(v93 + 4) = sub_26974F520(v29, v30, v167);
        _os_log_impl(&dword_269684000, v91, v92, "InstalledAppProvider#apps clearing intent support for likely shortcuts-only extension for bundle: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        v95 = v94;
        v12 = v151;
        MEMORY[0x26D647170](v95, -1, -1);
        v96 = v93;
        v19 = v162;
        MEMORY[0x26D647170](v96, -1, -1);
      }

      (*v164)(v90, v7);
      v170 = v43;

      v49 = v43;
    }

    goto LABEL_77;
  }

  swift_beginAccess();
  v64 = 0;
  v65 = 0;
  v66 = v56[2];
  v67 = v56 + 5;
  v68 = 1;
  v69 = v163;
  while (1)
  {
    if (v66 == v65)
    {
      v65 = v66;
      goto LABEL_67;
    }

    if (*(v67 - 1) == 0xD000000000000014 && v69 == *v67)
    {
      break;
    }

    v71 = sub_269855584();
    v69 = v163;
    if (v71)
    {
      break;
    }

    ++v65;
    v67 += 2;
    ++v68;
    v64 += 2;
  }

  if (__OFADD__(v65, 1))
  {
    goto LABEL_111;
  }

  if (v65 + 1 != v66)
  {
    while (1)
    {
      v72 = v56[2];
      if (v68 >= v72)
      {
        goto LABEL_103;
      }

      v73 = v56[v64 + 6];
      v74 = v56[v64 + 7];
      v75 = v73 == 0xD000000000000014 && v69 == v74;
      if (v75 || (v76 = v56[v64 + 6], v77 = v56[v64 + 7], (sub_269855584() & 1) != 0))
      {
        v19 = v162;
        v43 = MEMORY[0x277D84F90];
      }

      else
      {
        if (v68 != v65)
        {
          if (v65 >= v72)
          {
            goto LABEL_106;
          }

          v78 = &v56[2 * v65 + 4];
          v79 = *v78;
          v80 = v78[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2696B6ABC(v56);
            v56 = v86;
          }

          if (v65 >= v56[2])
          {
            goto LABEL_107;
          }

          v81 = &v56[2 * v65];
          v82 = v81[5];
          v81[4] = v73;
          v81[5] = v74;

          if (v68 >= v56[2])
          {
            goto LABEL_108;
          }

          v83 = &v56[v64];
          v84 = v56[v64 + 7];
          v83[6] = v79;
          v83[7] = v80;

          v171 = v56;
          v12 = v151;
        }

        v43 = MEMORY[0x277D84F90];
        ++v65;
        v19 = v162;
      }

      v85 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_104;
      }

      ++v68;
      v64 += 2;
      v69 = v163;
      if (v85 == v56[2])
      {
        goto LABEL_68;
      }
    }
  }

LABEL_67:
  v19 = v162;
LABEL_68:
  v87 = v56[2];
  if (v87 >= v65)
  {
    sub_2696B6AD0(v65, v87);
    swift_endAccess();
    v7 = v148;
    v29 = v158;
    goto LABEL_70;
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
}

uint64_t sub_2696B44AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v12 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v7 + 16))(v11, v12, v4);
  v13 = sub_2698548B4();
  v14 = sub_269854F44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_16_2();
    *v15 = 0;
    _os_log_impl(&dword_269684000, v13, v14, "InstalledAppProvider#warm warming app search", v15, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v7 + 8))(v11, v4);
  if (qword_280322428 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_2696B55B4(sub_2696B7114, v16);
}

uint64_t sub_2696B468C(uint64_t *a1, void (*a2)(uint64_t))
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v5 + 16))(v8, v10, v4);

  v11 = sub_2698548B4();
  v12 = sub_269854F44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = -1;
    v14 = swift_slowAlloc();
    v15 = v14;
    *v14 = 134217984;
    if (v9)
    {
      v13 = *(v9 + 16);
    }

    *(v14 + 4) = v13;

    _os_log_impl(&dword_269684000, v11, v12, "InstalledAppProvider#warm warm found %ld apps", v15, 0xCu);
    MEMORY[0x26D647170](v15, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  a2(v16);
}

uint64_t sub_2696B48A0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_2698548D4();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = *a1;
  if (v18)
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v19 = __swift_project_value_buffer(v6, qword_281571B50);
    (*(v9 + 16))(v14, v19, v6);
    v20 = sub_2698548B4();
    v21 = sub_269854F14();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_16_2();
      *v22 = 0;
      _os_log_impl(&dword_269684000, v20, v21, "InstalledAppProvider#installedApps used cached apps", v22, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v9 + 8))(v14, v6);
    return a2(v18);
  }

  else
  {
    if (qword_280322708 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v24 = __swift_project_value_buffer(v6, qword_281571B50);
    (*(v9 + 16))(v17, v24, v6);
    v25 = sub_2698548B4();
    v26 = sub_269854F14();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_16_2();
      *v27 = 0;
      _os_log_impl(&dword_269684000, v25, v26, "InstalledAppProvider#installedApps cached apps missing or expired", v27, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v9 + 8))(v17, v6);
    if (qword_280322428 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;

    sub_2696B55B4(sub_2696B622C, v28);
  }
}

uint64_t sub_2696B4B88(uint64_t *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  a2(v4);
}

uint64_t sub_2696B4BEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v55 - v6;
  v7 = sub_2698548D4();
  v8 = OUTLINED_FUNCTION_8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  v56 = (v13 - v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v21 = __swift_project_value_buffer(v7, qword_281571B50);
  v60 = *(v10 + 16);
  v60(v20, v21, v7);
  v22 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v22, v23))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_11_3(&dword_269684000, v24, v25, "AtomicValue#next");
    OUTLINED_FUNCTION_10();
  }

  v26 = *(v10 + 8);
  v26(v20, v7);
  [*(v3 + 16) lock];
  v60(v18, v21, v7);
  v27 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v27, v28))
  {
    *OUTLINED_FUNCTION_16_2() = 0;
    OUTLINED_FUNCTION_10_4(&dword_269684000, v29, v30, "AtomicValue#next lock acquired");
    OUTLINED_FUNCTION_10();
  }

  v26(v18, v7);
  *(v3 + 24) = 0;
  OUTLINED_FUNCTION_9_4();
  v32 = (v3 + *(v31 + 112));
  memcpy(__dst, v32, 0x68uLL);
  *v32 = 0u;
  v32[1] = 0u;
  v32[2] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  v32[5] = 0u;
  *(v32 + 12) = 0;
  sub_269698048(__dst, &qword_280322E10, &qword_269858A38);
  v60(v56, v21, v7);

  v33 = sub_2698548B4();
  v34 = sub_269854F14();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v60 = (v10 + 8);
    v37 = v36;
    v62[0] = v36;
    *v35 = 136315138;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322E10, &qword_269858A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F98, &qword_26986ADC0);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, v62);

    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_13_0(&dword_269684000, v41, v42, "AtomicValue#next computing value for: %s");
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v43 = OUTLINED_FUNCTION_8_3();
  (v26)(v43);
  v44 = v57;
  sub_269851D24();
  v45 = sub_269851D34();
  OUTLINED_FUNCTION_12_2(v45);
  v46 = qword_281571B90;
  swift_beginAccess();
  sub_2696B6234(v44, v3 + v46);
  swift_endAccess();
  OUTLINED_FUNCTION_9_4();
  v48 = v3 + *(v47 + 120);
  v50 = *v48;
  v49 = *(v48 + 8);
  v51 = swift_allocObject();
  v52 = v58;
  v53 = v59;
  v51[2] = v3;
  v51[3] = v52;
  v51[4] = v53;

  v50(sub_2696B704C, v51);
}

uint64_t sub_2696B50E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a1;
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v58 - v6;
  v7 = sub_2698548D4();
  v8 = OUTLINED_FUNCTION_8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v22 = __swift_project_value_buffer(v7, qword_281571B50);
  v62 = *(v10 + 16);
  v62(v21, v22, v7);
  v23 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_16_2();
    v63 = v22;
    OUTLINED_FUNCTION_6_6(v25);
    OUTLINED_FUNCTION_11_3(&dword_269684000, v26, v27, "AtomicValue#next");
    v10 = v15;
    v15 = v22;
    v22 = v63;
    OUTLINED_FUNCTION_10();
  }

  v63 = *(v10 + 8);
  v63(v21, v7);
  [*(v3 + 16) lock];
  v62(v19, v22, v7);
  v28 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_7_6();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_6_6(v30);
    OUTLINED_FUNCTION_10_4(&dword_269684000, v31, v32, "AtomicValue#next lock acquired");
    v15 = v22;
    OUTLINED_FUNCTION_10();
  }

  v63(v19, v7);
  *(v3 + 24) = 0;
  OUTLINED_FUNCTION_9_4();
  v34 = (v3 + *(v33 + 112));
  v35 = *v34;
  v36 = v34[1];
  *v34 = 0;
  v34[1] = 0;
  sub_2696AC148(v35);
  v62(v15, v22, v7);

  v37 = sub_2698548B4();
  v38 = sub_269854F14();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v65 = v40;
    *v39 = 136315138;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA0, &unk_26986ADD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FA8, &qword_269858E18);
    v41 = sub_269854AE4();
    v43 = sub_26974F520(v41, v42, &v65);

    *(v39 + 4) = v43;
    OUTLINED_FUNCTION_13_0(&dword_269684000, v44, v45, "AtomicValue#next computing value for: %s");
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v46 = OUTLINED_FUNCTION_8_3();
  (v63)(v46);
  v47 = v59;
  sub_269851D24();
  v48 = sub_269851D34();
  OUTLINED_FUNCTION_12_2(v48);
  v49 = qword_281571B90;
  swift_beginAccess();
  sub_2696B6234(v47, v3 + v49);
  swift_endAccess();
  OUTLINED_FUNCTION_9_4();
  v51 = v3 + *(v50 + 120);
  v53 = *v51;
  v52 = *(v51 + 8);
  v54 = swift_allocObject();
  v55 = v60;
  v56 = v61;
  v54[2] = v3;
  v54[3] = v55;
  v54[4] = v56;

  v53(sub_2696B7108, v54);
}

uint64_t sub_2696B55B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v48 - v6;
  v7 = sub_2698548D4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_281571B50);
  v52 = v8[2];
  v52(v17, v18, v7);
  v19 = sub_2698548B4();
  v20 = sub_269854F14();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v53 = v18;
    v22 = v12;
    v23 = v8;
    v24 = v21;
    *v21 = 0;
    _os_log_impl(&dword_269684000, v19, v20, "AtomicValue#next", v21, 2u);
    v25 = v24;
    v8 = v23;
    v12 = v22;
    v18 = v53;
    MEMORY[0x26D647170](v25, -1, -1);
  }

  v53 = v8[1];
  v53(v17, v7);
  [*(v3 + 16) lock];
  v52(v15, v18, v7);
  v26 = sub_2698548B4();
  v27 = sub_269854F14();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_269684000, v26, v27, "AtomicValue#next lock acquired", v28, 2u);
    MEMORY[0x26D647170](v28, -1, -1);
  }

  v53(v15, v7);
  *(v3 + 24) = 0;
  v29 = *(*v3 + 112);
  v30 = *(v3 + v29);
  *(v3 + v29) = 0;

  v52(v12, v18, v7);

  v31 = sub_2698548B4();
  v32 = sub_269854F14();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v55 = v34;
    *v33 = 136315138;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F58, &unk_26986ADF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F60, &qword_269858DF0);
    v35 = sub_269854AE4();
    v37 = sub_26974F520(v35, v36, &v55);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_269684000, v31, v32, "AtomicValue#next computing value for: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D647170](v34, -1, -1);
    MEMORY[0x26D647170](v33, -1, -1);
  }

  v53(v12, v7);
  v38 = v49;
  sub_269851D24();
  v39 = sub_269851D34();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
  v40 = qword_281571B90;
  swift_beginAccess();
  sub_2696B6234(v38, v3 + v40);
  swift_endAccess();
  v41 = v3 + *(*v3 + 120);
  v43 = *v41;
  v42 = *(v41 + 8);
  v44 = swift_allocObject();
  v45 = v50;
  v46 = v51;
  v44[2] = v3;
  v44[3] = v45;
  v44[4] = v46;

  v43(sub_2696B6ECC, v44);
}

uint64_t sub_2696B5B44(const void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(a2 + 24) = 1;
  v13 = *(*a2 + 112);
  memcpy(__dst, (a2 + v13), 0x68uLL);
  memcpy((a2 + v13), a1, 0x68uLL);
  sub_269698048(__dst, &qword_280322E10, &qword_269858A38);
  v14 = *(a2 + 16);
  sub_2696B7058(a1, v26);
  [v14 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_281571B50);
  (*(v9 + 16))(v12, v15, v8);
  v16 = sub_2698548B4();
  v17 = sub_269854F14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23 = a4;
    v19 = a3;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_269684000, v16, v17, "AtomicValue#next lock released", v18, 2u);
    v21 = v20;
    a3 = v19;
    MEMORY[0x26D647170](v21, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  memcpy(v25, (a2 + v13), sizeof(v25));
  memcpy(v24, (a2 + v13), sizeof(v24));
  sub_2696B7058(v25, v26);
  a3(v24);
  memcpy(v26, v24, sizeof(v26));
  return sub_269698048(v26, &qword_280322E10, &qword_269858A38);
}

uint64_t sub_2696B5DE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 1;
  v13 = (a3 + *(*a3 + 112));
  v14 = *v13;
  v15 = v13[1];
  *v13 = a1;
  v13[1] = a2;
  sub_2696AC148(v14);
  v16 = *(a3 + 16);
  sub_2696AA664(a1);
  [v16 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_281571B50);
  (*(v9 + 16))(v12, v17, v8);
  v18 = sub_2698548B4();
  v19 = sub_269854F14();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_269684000, v18, v19, "AtomicValue#next lock released", v20, 2u);
    MEMORY[0x26D647170](v20, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v22 = v13[1];
  v24[0] = *v13;
  v21 = v24[0];
  v24[1] = v22;
  sub_2696AA664(v24[0]);
  a4(v24);
  return sub_2696AC148(v21);
}

uint64_t sub_2696B6010(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = 1;
  v11 = *(*a2 + 112);
  v12 = *(a2 + v11);
  *(a2 + v11) = a1;

  v13 = *(a2 + 16);

  [v13 unlock];
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_281571B50);
  (*(v7 + 16))(v10, v14, v6);
  v15 = sub_2698548B4();
  v16 = sub_269854F14();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_269684000, v15, v16, "AtomicValue#next lock released", v17, 2u);
    MEMORY[0x26D647170](v17, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v20 = *(a2 + v11);

  a3(&v20);
}

uint64_t sub_2696B6234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696B62A4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_26980F698(0, v6, v8);
    v9 = sub_2696B64FC(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_2696B646C(v12, v6, a2, a1);

    MEMORY[0x26D647170](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_2696B646C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2696B64FC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2696B64FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_269855674();

      sub_269854B34();
      v42 = sub_2698556C4();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_269855584();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_2696B68A0(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_269855674();

      sub_269854B34();
      v19 = sub_2698556C4();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_269855584();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2696B68A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  result = sub_2698551E4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_269855674();

    sub_269854B34();
    result = sub_2698556C4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}